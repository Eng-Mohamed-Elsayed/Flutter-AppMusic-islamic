import 'package:flutter/material.dart';

import 'web_view.dart';
import '../model/m_article.dart';

class CardAaticle extends StatelessWidget {
  const CardAaticle({Key? key, required this.data}) : super(key: key);
  final ModleArticle data;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        MaterialPageRoute<dynamic> route = MaterialPageRoute(
            builder: (context) => AppWebView(
                  title: data.title,
                  url: data.urlPage,
                ));
        Navigator.push(context, route);
      },
      child: Container(
        height: 100,
        margin: const EdgeInsets.all(5),
        child: Card(
            clipBehavior: Clip.antiAliasWithSaveLayer,
            elevation: 10,
            color: Colors.teal.shade100,
            child: Row(
              children: [
                Expanded(
                    flex: 2,
                    child: Text(
                      data.title,
                      textAlign: TextAlign.justify,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    )),
                const SizedBox(width: 10),
                Expanded(
                    child: Image.network(
                  data.imageUrl,
                  height: 100,
                  fit: BoxFit.fitWidth,
                )),
              ],
            )),
      ),
    );
  }
}
