import 'package:flutter/material.dart';

class InfoText extends StatelessWidget {
  const InfoText({Key key, @required this.icon, @required this.text})
      : super(key: key);
  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: Colors.red[700]),
          Text(
            text,
            style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
