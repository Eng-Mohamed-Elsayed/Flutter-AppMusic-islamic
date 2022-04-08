import 'package:flutter/material.dart';
import '../components/app_bar.dart';
import '../controller/c_video.dart';
import '../model/m_video.dart';
import '../components/card_video.dart';

class PageVideo extends StatelessWidget {
  const PageVideo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarSimple(),
      body: ListView.builder(
          itemCount: ControllerVideo.dataLength,
          itemBuilder: (BuildContext context, int index) {
            ModelVideo _data = ControllerVideo.dataVideo.elementAt(index);
            return CardVideo(
              data: _data,
            );
          }),
    );
  }
}
