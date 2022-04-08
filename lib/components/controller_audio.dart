import 'app_bar.dart';
import '../model/m_audio.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class ControllerAudio extends StatefulWidget {
  const ControllerAudio({Key? key, required this.data}) : super(key: key);
  final ModelAudio data;

  @override
  _ControllerAudioState createState() => _ControllerAudioState();
}

class _ControllerAudioState extends State<ControllerAudio> {
  // * controller
  final AudioCache _audioCache = AudioCache();
  AudioPlayer _audioPlayer = AudioPlayer(mode: PlayerMode.LOW_LATENCY);
  Duration _durationSlider = const Duration();
  Duration _durationPlayer = const Duration();
  // * icon
  IconData _iconPlay = Icons.play_circle_outline;
  String _statePlay = 'playStart';
  bool isResume = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarSimple(title: widget.data.title),
      body: SafeArea(
        child: Column(
          children: [
            // Image
            Expanded(
              flex: 4,
              child: Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                decoration: BoxDecoration(
                  color: Colors.amber,
                  image: DecorationImage(
                    image: AssetImage(widget.data.imageUrl),
                    fit: BoxFit.fill,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Column(
                children: [
                  // * Slider
                  SizedBox(
                    height: 30,
                    child: Slider(
                      value: _durationSlider.inMilliseconds.toDouble(),
                      min: 0,
                      max: _durationPlayer.inMilliseconds.toDouble(),
                      onChanged: (value) async {
                        // * audioPlayer change player  used (Seek)
                        await _audioPlayer
                            .seek(Duration(milliseconds: value.toInt()));
                      },
                    ),
                  ),
                  // * Format time
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 30),
                    child: Row(
                      children: [
                        // * time play
                        Text(_formatDuration(_durationSlider)),
                        const Spacer(),
                        // * time audio
                        Text(_formatDuration(_durationPlayer))
                      ],
                    ),
                  ),
                  // * controllers
                  Expanded(
                    child: Row(
                      children: [
                        // * rePlay
                        Expanded(
                          child: IconButton(
                            padding: const EdgeInsets.all(0),
                            icon: const Icon(Icons.loop),
                            iconSize: 30,
                            onPressed: () async {
                              // * First Stop
                              await _audioPlayer.stop();
                              // * play audio
                              _audioPlayer =
                                  await _audioCache.play(widget.data.audioPath);
                              // * listen change audio
                              _changePostionAudio();
                              // * when work complete audio
                              _onCompletionAudio();
                              // * get length audio
                              await _getDurationAudio();
                              // * change state
                              if (mounted) {
                                setState(() {
                                  _statePlay = 'pause';
                                  isResume = false;
                                  _iconPlay = Icons.pause_circle;
                                });
                              }
                            },
                          ),
                        ),
                        // * play || pause || resume
                        Expanded(
                          flex: 1,
                          child: IconButton(
                            padding: const EdgeInsets.all(0),
                            icon: Icon(_iconPlay),
                            color: Colors.teal,
                            iconSize: 60,
                            onPressed: () async {
                              if (_statePlay == 'playStart') {
                                // * state play
                                if (isResume) {
                                  // * check resume or not
                                  await _audioPlayer.resume();
                                } else {
                                  // * first start audio
                                  _audioPlayer = await _audioCache
                                      .play(widget.data.audioPath);
                                }
                                // * listen change audio
                                _changePostionAudio();
                                // * when work complete audio
                                _onCompletionAudio();
                                // * get length audio
                                await _getDurationAudio();

                                // * update state
                                if (mounted) {
                                  setState(() {
                                    _statePlay = 'pause';
                                    isResume = false;
                                    _iconPlay = Icons.pause_circle;
                                  });
                                }
                              } else if (_statePlay == 'pause') {
                                // * pause audio
                                await _audioPlayer.pause();
                                // * update state
                                if (mounted) {
                                  setState(() {
                                    _statePlay = 'playStart';
                                    isResume = true;
                                    _iconPlay = Icons.play_circle_outline;
                                  });
                                }
                              }
                            },
                          ),
                        ),
                        Expanded(
                            child: IconButton(
                          padding: const EdgeInsets.all(0),
                          icon: const Icon(Icons.cloud_download_outlined),
                          iconSize: 30,
                          onPressed: () async {},
                        ))
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  // * get length audio
  Future<void> _getDurationAudio() async {
    _audioPlayer.onDurationChanged.listen((Duration d) {
      if (mounted) {
        setState(() {
          _durationPlayer = d;
        });
      }
    });
  }

  // * listen change audio
  void _changePostionAudio() {
    _audioPlayer.onAudioPositionChanged.listen(
      (Duration p) => {
        if (mounted) setState(() => _durationSlider = p),
      },
    );
  }

  // * complete Audio
  void _onCompletionAudio() {
    _audioPlayer.onPlayerCompletion.listen((event) {
      if (mounted) {
        setState(() {
          _statePlay = 'playStart';
          isResume = false;
          _iconPlay = Icons.play_circle_outline;
          _durationSlider = const Duration();
        });
      }
    });
  }

  // * format Duration
  String _formatDuration(Duration duration) {
    // format '00'
    String twoDigits(int n) => n.toString().padLeft(2, "0");
    String twoDigitMinutes = twoDigits(duration.inMinutes.remainder(60));
    String twoDigitSeconds = twoDigits(duration.inSeconds.remainder(60));
    // String hours= twoDigits(duration.inHours); // not used
    return "$twoDigitMinutes:$twoDigitSeconds";
  }

  @override
  void dispose() {
    if (mounted) _audioPlayer.release();
    super.dispose();
  }
}
