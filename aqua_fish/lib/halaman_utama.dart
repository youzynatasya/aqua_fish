import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class HalamanUtama extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 24, 42, 46),
      appBar: AppBar(
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
      ),
      body: Column(
        children: [
          tambahKolam(),
          //dropdown (),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              kontrolpH(
                title: 'pH',
              ),
              kontrolSuhu(
                title: 'Suhu',
              ),
            ],
          ),

          kontrolTDS(
            title: 'TDS',
          ),
          Riwayat(),
          hasilRiwayat(
            title: 'Riwayat',
          ),
        ],
      ),
    );
  }

  Widget hasilRiwayat({
    required String title,
    Color: Colors.white,
    Color fontColor = Colors.black,
  }) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 70),
        width: 330,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24),
          color: Colors.white,
        ),
        child: Column(
          children: [
            Text(
              title,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: fontColor,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget kontrolTDS({
    required String title,
    Color: Colors.white,
    Color fontColor = Colors.black,
  }) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 70),
        width: 330,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24),
          color: Colors.white,
        ),
        child: Column(
          children: [
            Text(
              title,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: fontColor,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget kontrolpH({
    required String title,
    Color = Colors.white,
    Color fontColor = Colors.black,
  }) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 80),
        width: 165,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24),
          color: Colors.white,
        ),
        child: Column(
          children: [
            Text(
              title,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: fontColor,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget kontrolSuhu({
    required String title,
    Color = Colors.white,
    Color fontColor = Colors.black,
  }) {
    return GestureDetector(
      onTap: () {},
      child: Container(
          padding: const EdgeInsets.symmetric(vertical: 80),
          width: 165,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24),
            color: Colors.white,
          ),
          child: Column(children: [
            Text(title,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: fontColor,
                ))
          ])),
    );
  }

  Widget tambahKolam() => Padding(
        padding: const EdgeInsets.fromLTRB(20, 30, 18, 18),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: const [
                Text(
                  'KOLAM',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 20,
                      color: Color.fromARGB(255, 245, 141, 23),
                      fontFamily: 'NunitoSansBold.ttf',
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            ElevatedButton.icon(
              onPressed: () {},
              icon: Icon(Icons.add, size: 10),
              label: Text('Tambah Kolam',
                  style: TextStyle(color: Colors.white, fontSize: 10)),
              style: ElevatedButton.styleFrom(
                  primary: Colors.transparent, elevation: 0),
            ),
          ],
        ),
      );

  Widget Riwayat() => Padding(
        padding: const EdgeInsets.fromLTRB(20, 30, 18, 18),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: const [
                Text(
                  'RIWAYAT',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 20,
                      color: Color.fromARGB(255, 245, 141, 23),
                      fontFamily: 'NunitoSansBold.ttf',
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ],
        ),
      );
}
