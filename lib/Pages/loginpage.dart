import 'package:flutter/material.dart';
import 'package:tesla_on_demand/uiblocks/LoginButton.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Stack(
          children: [
            Positioned(
              top: size.height / 15,
                child: Image.asset(
              "assets/teslaLogo.jpeg",
              width: size.width,
              height: size.height / 2,
            )),
            Positioned(
              bottom: size.height / 3,
              left: size.width / 3,
              child: Container(
                child: Column(children: [
                  LoginButton(),
                  Text(
                    "New here?",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 11.0,
                        decoration: TextDecoration.underline),
                  )
                ]),
              ),
            )
          ],
        ),
      ),
    );
  }
}
