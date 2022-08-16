import 'package:flutter/material.dart';
import 'package:aqua_fish/login_screen.dart';

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
                        fontFamily: 'NunitoSansBold.ttf',
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

class TextFieldContainer extends StatelessWidget {
  const TextFieldContainer({Key? key, this.child}) : super(key: key);
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      width: size.width * 0.8,
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 175, 228, 228),
        borderRadius: BorderRadius.circular(29),
      ),
      child: child,
    );
  }
}

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

class RoundedButton extends StatelessWidget {
  const RoundedButton(
      {Key? key, this.press, this.textColor = Colors.white, required this.text})
      : super(key: key);
  final String text;
  final Function()? press;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      width: size.width * 0.8,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(29),
        child: newElevatedButton(),
      ),
    );
  }

  Widget newElevatedButton() {
    return ElevatedButton(
      child: Text(
        text,
        style: TextStyle(color: textColor, fontSize: 17),
      ),
      onPressed: press,
      style: ElevatedButton.styleFrom(
          primary: Color.fromARGB(255, 1, 175, 175),
          padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
          textStyle: TextStyle(
              letterSpacing: 2,
              color: textColor,
              fontSize: 12,
              fontWeight: FontWeight.bold,
              fontFamily: 'NunitoSansRegular.ttf')),
    );
  }
}

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
          fontFamily: 'NunitoSansRegular.ttf',
          fontSize: 13,
          color: Colors.black,
        ),
      ),
      const SizedBox(
        width: 10,
      ),
      Text(
        navigatorText,
        style: const TextStyle(
            color: Color.fromARGB(255, 245, 141, 23),
            fontSize: 13,
            fontFamily: 'NunitoSansRegular.ttf'),
      ),
    ]);
  }
}
