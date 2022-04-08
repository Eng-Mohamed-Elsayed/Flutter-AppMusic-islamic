import 'dart:collection';
import '../model/m_video.dart';

class ControllerVideo {
  static final List<ModelVideo> _dataVideo = [
    ModelVideo(
        title: " مفهوم الإرادة ",
        imageUrl:
            "https://i1.sndcdn.com/artworks-PobyBATSPYTui9Cb-pISyfg-t500x500.jpg",
        videoUrl:
            "https://www.youtube.com/watch?v=XANSUX_rz7A&list=PL6BDD70BFB13AA2F6&index=3"),
    ModelVideo(
        title: "الباعث ",
        imageUrl:
            "https://i1.sndcdn.com/artworks-TGFUxyZX1CTBbCC0-phxyUw-t500x500.jpg",
        videoUrl:
            "https://www.youtube.com/watch?v=0YifZO8FgbM&list=PL6BDD70BFB13AA2F6&index=4"),
    ModelVideo(
        title: " تصحيح التوبة",
        imageUrl:
            "https://i1.sndcdn.com/artworks-BaX9FhQIc8DaqMft-X0JZzA-t500x500.jpg",
        videoUrl:
            "https://www.youtube.com/watch?v=O_F0pMyCPPw&list=PL6BDD70BFB13AA2F6&index=5"),
    ModelVideo(
        title: "طهارة الباطن والظاهر",
        imageUrl:
            "https://i1.sndcdn.com/artworks-KZBPKv1JB74SsASj-vnzZTg-t500x500.jpg",
        videoUrl:
            "https://www.youtube.com/watch?v=QEGKyMmLRec&list=PL6BDD70BFB13AA2F6&index=6"),
    ModelVideo(
        title: " طهارة الظاهر والخواطر",
        imageUrl:
            "https://i1.sndcdn.com/artworks-w52ljPbPzruE9yhi-uQoqiA-t500x500.jpg",
        videoUrl:
            "https://www.youtube.com/watch?v=CY1B5sWUHC0&list=PL6BDD70BFB13AA2F6&index=6"),
    ModelVideo(
        title: " تمييز خواطر الشر",
        imageUrl:
            "https://i1.sndcdn.com/artworks-4xtbX1AyzqE9uZsI-ddgPWw-t500x500.jpg",
        videoUrl:
            "https://www.youtube.com/watch?v=PBIiSuZ15MQ&list=PL6BDD70BFB13AA2F6&index=7"),
    ModelVideo(
        title: " تمييز خواطر الخير",
        imageUrl:
            "https://www.almoreed.com/wp-content/uploads/2014/03/YouTube-almoreed_7.png",
        videoUrl: "https://www.youtube.com/watch?v=xnJHOCnZ9I8"),
  ];
  static UnmodifiableListView<ModelVideo> get dataVideo =>
      UnmodifiableListView(_dataVideo);
  static int get dataLength => _dataVideo.length;
}
