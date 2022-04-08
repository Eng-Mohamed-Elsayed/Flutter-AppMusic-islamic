import 'package:flutter/material.dart';
import '/views/article_page.dart';
import 'audio_page.dart';
import 'video_page.dart';
import '../components/cus_nav_bar.dart';

class PageHome extends StatefulWidget {
  const PageHome({Key? key}) : super(key: key);

  @override
  _PageHomeState createState() => _PageHomeState();
}

class _PageHomeState extends State<PageHome> {
  final List<Widget> _pages = const [PageAricle(), PageVideo(), PageAudio()];
  int _indexPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBarSimple(),
      body: _pages[_indexPage],
      bottomNavigationBar: CustomNavBar(
        indexPage: _indexPage,
        onClick: (index) {
          setState(() {
            _indexPage = index;
          });
        },
      ),
    );
  }
}
