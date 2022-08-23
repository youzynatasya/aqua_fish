import 'package:flutter/material.dart';
import 'package:aqua_fish/components/components.dart';

class TitleAtas extends StatelessWidget {
  const TitleAtas({
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
          TitleKiri(text: title),
          Spacer(),
          ElevatedButton.icon(
            onPressed: () {},
            icon: Icon(Icons.add, size: 13),
            label: Text('Tambah Kolam',
                style: TextStyle(
                    color: Color.fromARGB(255, 255, 255, 255),
                    fontSize: 13,
                    fontFamily: 'NunitoSansRegular')),
            style: ElevatedButton.styleFrom(
                primary: Colors.transparent, elevation: 0),
          ),
        ],
      ),
    );
  }
}

class TitleKiri extends StatelessWidget {
  const TitleKiri({
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
