import 'package:flutter/material.dart';
import 'package:flutter_brand_icons/flutter_brand_icons.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    /* final Shader shader =
        LinearGradient(colors: [Colors.pink[700], Colors.red[700]])
            .createShader(Rect.fromLTWH(0.0, 0.0, 50.0, 70.0));*/
    return Container(
      width: size.width / 3,
      child: ElevatedButton(
          style: ButtonStyle(
              backgroundColor:
                  MaterialStateProperty.all<Color>(Colors.red[700])),
          onPressed: () {
            Navigator.of(context).pushNamed("/home");
          },
          child: Row(children: [
            Icon(BrandIcons.tesla),
            Placeholder(
                fallbackWidth: size.width * 0.03,
                fallbackHeight: 1,
                color: Colors.red[700]),
            Text("Login",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold))
          ])),
    );
  }
}
