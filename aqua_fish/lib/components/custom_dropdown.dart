import 'package:flutter/material.dart';

class CustomDropdown extends StatefulWidget {
  @override
  _customDropdownState createState() => _customDropdownState();
}

class _customDropdownState extends State<CustomDropdown> {
  bool isDropdownOpened = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          setState(() {
            isDropdownOpened = !isDropdownOpened;
          });
        },
        child: Container(
          decoration: BoxDecoration(
            color: Colors.grey,
          ),
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
          child: Row(
            children: <Widget>[
              Text(
                'Pilih Kolam',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              Spacer(),
              Icon(Icons.arrow_drop_down, color: Colors.white),
            ],
          ),
        ));
  }
}
