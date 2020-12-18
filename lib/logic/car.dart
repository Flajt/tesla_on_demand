class TeslaCar {
  final String name;
  final String range;
  final String owner;
  final Map location;
  final double timeAv;
  final double price;
  final int seats;
  final String image;

  TeslaCar(this.name, this.range, this.owner, this.location, this.timeAv,
      this.price, this.seats, this.image);

  TeslaCar.fromJson(Map<String, dynamic> json)
      : name = json["name"],
        range = json["range"],
        owner = json["owner"],
        location = json["location"],
        timeAv = json["time_av"],
        price = json["price"],
        seats = json["seats"],
        image = json["image"];
}
