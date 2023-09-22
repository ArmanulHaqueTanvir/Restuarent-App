class Food {
  String name, price, imagepath, rating;
  Food(
      {required this.name,
      required this.price,
      required this.imagepath,
      required this.rating});

  String get _name => name;
  String get _price => price;
  String get _imagePath => imagepath;
  String get _rating => rating;
}
