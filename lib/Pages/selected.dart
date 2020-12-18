import 'package:flutter/material.dart';
import 'package:flutter_brand_icons/flutter_brand_icons.dart';
import 'package:tesla_on_demand/logic/car.dart';
import 'package:tesla_on_demand/uiblocks/infoText.dart';
import 'package:tesla_on_demand/uiblocks/sperator.dart';

class SelectPage extends StatelessWidget {
  const SelectPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Map<String, dynamic> args = ModalRoute.of(context).settings.arguments;
    final TeslaCar car = args["car"];
    final String tag = args["tag"];
    final Size size = MediaQuery.of(context).size;
    print(car);
    return Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
              color: Colors.red[700],
              icon: Icon(Icons.phone),
              onPressed: () {},
            )
          ],
          backgroundColor: Colors.black,
          centerTitle: true,
          title: Title(
            color: Colors.white,
            child: Text("${car.name}"),
          ),
        ),
        backgroundColor: Colors.black,
        body: SafeArea(
            child: Column(children: [
          Center(
            child: Hero(
              tag: tag,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30.0),
                child: Image.network(
                  car.image,
                  fit: BoxFit.fill,
                  width: size.width * 0.9,
                  height: size.height * 0.3,
                ),
              ),
            ),
          ),
          TeslaSperator(size: size),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InfoText(icon: Icons.euro, text: "${car.price}€"),
              InfoText(
                  icon: Icons.battery_charging_full_rounded,
                  text: "${car.range}"),
              InfoText(
                  icon: Icons.airline_seat_recline_extra_outlined,
                  text: "${car.seats} Seats"),
              InfoText(
                icon: Icons.watch_later_outlined,
                text: "${car.timeAv}h",
              ),
            ],
          ),
          TeslaSperator(size: size),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InfoText(icon: Icons.person, text: "${car.owner}"),
              InfoText(icon: Icons.star_sharp, text: "4.5"),
            ],
          ),
          TeslaSperator(size: size),
          Padding(
            padding: const EdgeInsets.only(top:40),
            child: ElevatedButton(
                onPressed: () {},
                child: Container(
                  width: size.width/3,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.car_rental,color:Colors.black),
                      Text("Lease it",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20.0,color: Colors.black),),
                    ],
                  ),
                ),
                style: ButtonStyle(
                  padding: MaterialStateProperty.all(EdgeInsets.all(8.0)),
                  minimumSize: MaterialStateProperty.all(Size(size.width*0.4,size.height *0.08)),
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.red[700]),
                )),
          )
        ])));
  }
}
