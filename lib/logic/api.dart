import 'dart:convert';
import 'package:flutter/material.dart';

class Api {
  final String _path = "assets/teslaCar.json";
  Future<List> getData(context)async{
    String jsonData = await DefaultAssetBundle.of(context).loadString("assets/teslaCar.json");
    List ret = jsonDecode(jsonData);
    return ret;
  }
}
