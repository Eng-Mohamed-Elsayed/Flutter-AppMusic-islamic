import 'package:flutter/material.dart';
import '../components/card_article.dart';
import '../controller/c_article.dart';
import '../components/app_bar.dart';
import '../model/m_article.dart';

class PageAricle extends StatelessWidget {
  const PageAricle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarSimple(),
      body: ListView.builder(
        itemCount: ControllerArticle.dataLength,
        itemBuilder: (context, index) {
          ModleArticle article = ControllerArticle.dataArticle.elementAt(index);
          return CardAaticle(
            data: article,
          );
        },
      ),
    );
  }
}
