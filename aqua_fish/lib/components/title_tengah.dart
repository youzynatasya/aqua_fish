import 'package:flutter/material.dart';
import 'package:aqua_fish/components/components.dart';

class TitleTengah extends StatelessWidget {
  const TitleTengah({
    Key? key,
    required this.title,
  }) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: <Widget>[
          TitleRiwayat(text: title),
          Spacer(),
        ],
      ),
    );
  }
}

class TitleRiwayat extends StatelessWidget {
  const TitleRiwayat({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 24,
      child: Stack(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(
              left: 30,
            ),
            child: Text(
              text,
              style: TextStyle(
                fontSize: 20,
                fontFamily: 'NunitoSansBold',
                color: Color.fromARGB(255, 245, 141, 23),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
