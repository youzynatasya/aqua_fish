import 'package:flutter/material.dart';
import 'package:aqua_fish/screens/login_screen.dart';
import 'package:aqua_fish/components/under_part.dart';
import 'package:aqua_fish/screens/screen.dart';
import 'package:aqua_fish/widgets/widgets.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
        child: Scaffold(
            body: Stack(children: <Widget>[
      Container(
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 24, 42, 46),
          ),
          width: size.width,
          height: size.height,
          child: SingleChildScrollView(
              child: Stack(children: [
            Container(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 24, 42, 46),
              ),
              height: 250,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Image.asset('assets/images/logo.png', fit: BoxFit.cover)
                ],
              ),
            ),
            Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Container(
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height / 4,
                    margin: EdgeInsets.only(top: 280.0),
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 255, 255, 255),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50),
                      ),
                    ),
                    padding: EdgeInsets.only(top: 30),
                    child: Text(
                      'Selamat Datang',
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontFamily: 'NunitoSansBold',
                        fontSize: 20,
                        letterSpacing: 1,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 245, 141, 23),
                      ),
                    ))),
            Padding(
              padding: const EdgeInsets.only(top: 380),
              child: Container(
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50),
                    ),
                  ),
                  child: Column(children: [
                    Form(
                        child: Column(
                      children: [
                        const RoundedInputField(
                          hintText: "Nama Lengkap",
                        ),
                        const RoundedInputField(
                          hintText: "Email",
                        ),
                        const RoundedPasswordField(),
                        RoundedButton(text: 'DAFTAR', press: () {}),
                        const SizedBox(
                          height: 10,
                        ),
                        UnderPart(
                            title: 'Sudah punya akun?',
                            navigatorText: 'Masuk.',
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const LoginScreen()));
                            }),
                      ],
                    ))
                  ])),
            )
          ])))
    ])));
  }
}
