import '../components/card_list_audio.dart';
import '../components/app_bar.dart';
import 'package:flutter/material.dart';

import '../model/m_audio.dart';
import '../controller/c_audio.dart';

class PageAudio extends StatelessWidget {
  const PageAudio({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarSimple(title: "أناشيــد"),
      body: SizedBox(
        width: double.infinity,
        child: ListView.builder(
          itemCount: ControllerAudio.dataLength,
          itemBuilder: (context, index) {
            ModelAudio _data = ControllerAudio.dataAudio.elementAt(index);
            return CardListAudio(data: _data);
          },
        ),
      ),
    );
  }
}
