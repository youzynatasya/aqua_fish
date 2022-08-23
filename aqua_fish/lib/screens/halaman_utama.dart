import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:aqua_fish/components/body.dart';

class HalamanUtama extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 24, 42, 46),
      appBar: buildAppBar(),
      body: Body(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Color.fromARGB(255, 24, 42, 46),
      elevation: 0,
      leading: IconButton(
        onPressed: () {},
        icon: Image.asset("assets/images/logo.png"),
      ),
      title: Text("" + DateFormat.yMMMMEEEEd().format(DateTime.now())),
      actions: <Widget>[
        IconButton(
          onPressed: () {},
          icon: Image.asset("assets/images/iconspeaker.png"),
        ),
      ],
    );
  }
}
