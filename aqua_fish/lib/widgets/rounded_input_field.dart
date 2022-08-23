import 'package:flutter/material.dart';
import 'package:aqua_fish/widgets/widgets.dart';

class RoundedInputField extends StatelessWidget {
  const RoundedInputField({Key? key, this.hintText, this.icon = Icons.person})
      : super(key: key);
  final String? hintText;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
        child: TextFormField(
            cursorColor: Color.fromARGB(255, 58, 49, 49),
            decoration: InputDecoration(
              hintText: hintText,
              hintStyle: const TextStyle(fontFamily: 'NunitoSansRegular.ttf'),
              border: InputBorder.none,
            )));
  }
}
