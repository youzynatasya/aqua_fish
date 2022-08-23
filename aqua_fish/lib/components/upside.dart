import 'package:flutter/material.dart';

class Upside extends StatelessWidget {
  const Upside({Key? key, required this.imgUrl}) : super(key: key);
  final String imgUrl;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Container(
          width: size.width,
          height: size.height / 2,
          color: const Color.fromARGB(255, 24, 42, 46),
          child: Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: Image.asset(
              imgUrl,
              alignment: Alignment.topCenter,
              scale: 2,
            ),
          ),
        ),
      ],
    );
  }
}
