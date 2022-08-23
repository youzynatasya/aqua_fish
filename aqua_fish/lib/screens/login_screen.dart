import 'package:flutter/material.dart';
import 'package:aqua_fish/components/components.dart';
import 'package:aqua_fish/components/under_part.dart';
import 'package:aqua_fish/screens/screen.dart';
import 'package:aqua_fish/widgets/widgets.dart';
import 'package:aqua_fish/screens/signup_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: size.width,
          height: size.height,
          child: SingleChildScrollView(
            child: Stack(
              children: [
                const Upside(
                  imgUrl: "assets/images/logo.png",
                ),
                const PageTitleBar(title: 'Selamat Datang'),
                Padding(
                    padding: const EdgeInsets.only(top: 370.0),
                    child: Column(children: [
                      Form(
                          child: Column(
                        children: [
                          const RoundedInputField(
                            hintText: "Email",
                          ),
                          const RoundedPasswordField(),
                          RoundedButton(text: 'MASUK', press: () {}),
                          const SizedBox(
                            height: 40,
                          ),
                          UnderPart(
                              title: 'Belum punya akun?',
                              navigatorText: "Daftar.",
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const SignUpScreen()));
                              }),
                          const SizedBox(
                            height: 20,
                          ),
                        ],
                      ))
                    ]))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
