import 'package:flutter/material.dart';

class UnderPart extends StatelessWidget {
  const UnderPart(
      {Key? key,
      required this.title,
      required this.navigatorText,
      required this.onTap})
      : super(key: key);
  final String title;
  final String navigatorText;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Text(
        title,
        style: const TextStyle(
          fontFamily: 'NunitoSansRegular',
          fontSize: 13,
          color: Colors.black,
        ),
      ),
      const SizedBox(
        width: 10,
      ),
      InkWell(
        onTap: () {
          onTap();
        },
        child: Text(
          navigatorText,
          style: const TextStyle(
              color: Color.fromARGB(255, 245, 141, 23),
              fontSize: 13,
              fontFamily: 'NunitoSansRegular'),
        ),
      )
    ]);
  }
}
