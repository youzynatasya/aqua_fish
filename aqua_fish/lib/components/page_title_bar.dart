import 'package:flutter/material.dart';

class PageTitleBar extends StatelessWidget {
  const PageTitleBar({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 300.0),
      child: Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height / 4,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(50),
            topRight: Radius.circular(50),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: Text(
            title,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontFamily: 'NunitoSansBold',
              fontSize: 20,
              letterSpacing: 1,
              color: Color.fromARGB(255, 245, 141, 23),
            ),
          ),
        ),
      ),
    );
  }
}
