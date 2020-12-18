import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_brand_icons/flutter_brand_icons.dart';
import 'package:tesla_on_demand/logic/api.dart';
import 'package:tesla_on_demand/logic/car.dart';
import 'package:tesla_on_demand/uiblocks/carCards.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final Api api = Api();
  List data;
  Future apidata;
  List<TeslaCar> cars = [];
  @override
  void initState() {
    super.initState();
    apidata = api.getData(context);
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
        child: Scaffold(
          drawer: Drawer(),
          appBar: AppBar(
            title: Icon(BrandIcons.tesla),
            centerTitle: true,
          ),
            backgroundColor: Colors.black,
            body: FutureBuilder(
                future: apidata,
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    data = snapshot.data;
                    for (var i in data) {
                      cars.add(TeslaCar.fromJson(i));
                    }
                  } else {
                    return Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                  return ListView.builder(
                    itemCount: cars.length,
                    itemBuilder: (context, index) {
                      return CarCard(size: size, cars: cars,index: index,);
                    },
                  );
                })));
  }
}


