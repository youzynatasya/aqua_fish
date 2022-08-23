import 'package:flutter/material.dart';
import 'package:aqua_fish/widgets/widgets.dart';

class RoundedPasswordField extends StatelessWidget {
  const RoundedPasswordField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
        child: TextFormField(
      obscureText: true,
      cursorColor: Colors.white,
      decoration: InputDecoration(
          hintText: 'Password',
          hintStyle: const TextStyle(fontFamily: 'NunitoSansRegular.ttf'),
          border: InputBorder.none),
    ));
  }
}
