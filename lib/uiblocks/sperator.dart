import 'package:flutter/material.dart';

class TeslaSperator extends StatelessWidget {
  const TeslaSperator({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(child: Divider(color: Colors.red[700],thickness: 2.0,),width: size.width /3,);
  }
}