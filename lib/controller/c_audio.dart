import 'dart:collection';
import '../model/m_audio.dart';

class ControllerAudio {
  static final List<ModelAudio> _dataAudio = [
    ModelAudio(
      title: " كن ربانيــا ",
      imageUrl: "assets/image/rabanen.jpg",
      audioPath: "audio/konRabaneenen.mp3",
      size: '12',
    ),
    ModelAudio(
      title: "ســوى الله ",
      imageUrl: "assets/image/siwa.jpg",
      audioPath: "audio/siwaAllah.mp3",
      size: '15',
    ),
    ModelAudio(
      title: " ياسعد قوم ",
      imageUrl: "assets/image/yassad.jpg",
      audioPath: "audio/yaSaadQoom.mp3",
      size: '15',
    ),
    ModelAudio(
      title: " منبع البهاء ",
      imageUrl: "assets/image/ManbaaAlbahaa.jpg",
      audioPath: "audio/Mnb3Albaha.mp3",
      size: '14',
    ),
    ModelAudio(
      title: " كن فيــكون",
      imageUrl: "assets/image/koon.jpg",
      audioPath: "audio/konVyaKOON.mp3",
      size: '20',
    ),
    ModelAudio(
      title: "  حبا عبــدتك ",
      imageUrl: "assets/image/hobn.jpg",
      audioPath: "audio/Hob3abtok.mp3",
      size: '14',
    ),
    ModelAudio(
      title: "قـلبــي يرف",
      imageUrl: "assets/image/yareef.jpg",
      audioPath: "audio/qalbiYaref.mp3",
      size: '16',
    ),
    ModelAudio(
      title: "ياعظيــم",
      imageUrl: "assets/image/yadeem.jpg",
      audioPath: "audio/yaAdheem.mp3",
      size: '15',
    ),
    ModelAudio(
      title: "حمزة نمرة - معلش",
      imageUrl: "assets/image/hamira-ma3lesh.jpeg",
      audioPath: "audio/HamzaNamiraMa3lesh.MP3",
      size: '300',
    ),
  ];
  static UnmodifiableListView<ModelAudio> get dataAudio =>
      UnmodifiableListView(_dataAudio);
  static int get dataLength => _dataAudio.length;
}
