import 'package:flutter/material.dart';

class CarDisplayCard extends StatelessWidget {
  const CarDisplayCard({Key key,@required this.size,@required this.child}) : super(key: key);
  ///Size of the screen
  final Size size;
  ///Child/ren to display
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [Colors.grey[350], Colors.grey[600]])),
            width: size.width,
            height: size.height * 0.44,
            child: child);
  }
}