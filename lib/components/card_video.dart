import 'package:flutter/material.dart';
import 'web_view.dart';
import '../model/m_video.dart';

class CardVideo extends StatelessWidget {
  const CardVideo({Key? key, required this.data}) : super(key: key);
  final ModelVideo data;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.teal,
      onTap: () {
        MaterialPageRoute<dynamic> route = MaterialPageRoute(
          builder: (context) => AppWebView(
            title: data.title,
            url: data.videoUrl,
          ),
        );

        Navigator.push(context, route);
      },
      child: Container(
        height: 250,
        margin: const EdgeInsets.only(bottom: 5),
        child: Card(
          elevation: 10,
          clipBehavior: Clip.antiAliasWithSaveLayer,
          child: Column(
            children: [
              Expanded(
                flex: 3,
                child: Image.network(
                  data.imageUrl,
                  fit: BoxFit.fill,
                  width: double.infinity,
                ),
              ),
              Expanded(
                  child: Center(
                      child: Text(
                data.title,
                style: const TextStyle(fontWeight: FontWeight.bold),
              )))
            ],
          ),
        ),
      ),
    );
  }
}
