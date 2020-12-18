import 'package:flutter/material.dart';
import 'package:tesla_on_demand/logic/car.dart';

class CarCard extends StatelessWidget {
  const CarCard({
    Key key,
    @required this.size,
    @required this.cars,
    @required this.index,
  }) : super(key: key);

  final Size size;
  final List<TeslaCar> cars;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [Colors.grey[350], Colors.grey[600]])),
            width: size.width,
            height: size.height * 0.44,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: Title(
                      child: Text(
                        "${cars[index].name}",
                        style: TextStyle(
                            fontSize: 20.0, fontWeight: FontWeight.bold),
                      ),
                      color: Colors.white),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(50.0),
                    child: Hero(
                      tag: "Car$index",
                      child: GestureDetector(
                        onTap: ()=>Navigator.of(context).pushNamed("/home/select",arguments: {"car":cars[index],"tag":"Car$index"}),
                        child: Image.network(
                          cars[index].image,
                          fit: BoxFit.fill,
                          width: size.width * 0.9,
                          height: size.height * 0.3,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: Row(
                    children: [
                      Text("Avalibility: ${cars[index].timeAv}h",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16.0)),
                      Spacer(),
                      Text(
                        "Price: ${cars[index].price}€",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 17.0),
                      ),
                      Spacer(),
                      Text("Range: ${cars[index].range}",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16.0))
                    ],
                  ),
                )
              ],
            )));
  }
}
