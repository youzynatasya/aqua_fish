import 'package:flutter/material.dart';
import 'package:aqua_fish/components/components.dart';
import 'package:aqua_fish/components/title_tengah.dart';
// import 'package:flutter/src/material/dropdown.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  // late String valKolam;
  // List Kolam = ['Kolam A', 'Kolam B'];
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          TitleAtas(
            title: 'KOLAM',
          ),
          /* SizedBox(
            width: 8,
            child: DropdownButton(
              hint: Text("Pilih Kolam"),
              value: valKolam,
              items: Kolam.map((value) {
                return DropdownMenuItem(
                  child: Text(value),
                  value: value,
                );
              }).toList(),
              onChanged: (value) {
                setState(() {
                  valKolam = value;
                });
              },
            ),
          ),*/
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              kontrol(),
              Text('Jarak', style: TextStyle(color: Colors.transparent)),
              kontrolTDS(),
              Text('Jarak', style: TextStyle(color: Colors.transparent)),
            ],
          ),
          TitleTengah(
            title: 'RIWAYAT',
          ),
          Text('Jarak', style: TextStyle(color: Colors.transparent)),
          kontrolHasilRiwayat(),
        ],
      ),
    );
  }
}

class kontrolTDS extends StatelessWidget {
  const kontrolTDS({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Container(
            width: 320,
            padding: const EdgeInsets.symmetric(vertical: 80),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(24),
              boxShadow: [
                BoxShadow(
                  offset: Offset(0, 2),
                  blurRadius: 10,
                  color: Colors.white,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class kontrolHasilRiwayat extends StatelessWidget {
  const kontrolHasilRiwayat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Container(
            width: 320,
            padding: const EdgeInsets.symmetric(vertical: 80),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(24),
              boxShadow: [
                BoxShadow(
                  offset: Offset(0, 2),
                  blurRadius: 10,
                  color: Colors.white,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
