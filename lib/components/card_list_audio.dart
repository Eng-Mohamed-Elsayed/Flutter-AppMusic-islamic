import '../components/controller_audio.dart';
import '../model/m_audio.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CardListAudio extends StatelessWidget {
  const CardListAudio({Key? key, required this.data}) : super(key: key);
  final ModelAudio data;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        var route = MaterialPageRoute(
            builder: (context) => ControllerAudio(data: data));
        Navigator.push(context, route);
      },
      child: Card(
        elevation: 10,
        child: Row(
          children: [
            // * image
            Container(
              width: 60,
              height: 60,
              margin: const EdgeInsets.symmetric(vertical: 5),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(data.imageUrl),
                  fit: BoxFit.fill,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            const SizedBox(width: 15),
            // * title
            Text(data.title, style: GoogleFonts.cairo()),
            const Spacer(),
            Text('${data.size} MB', style: GoogleFonts.cairo()),
            const SizedBox(width: 10),
          ],
        ),
      ),
    );
  }
}
