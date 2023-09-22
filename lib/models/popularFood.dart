class PopulerFood {
  String name, price, imagepath;
  PopulerFood({
    required this.name,
    required this.price,
    required this.imagepath,
  });

  String get _name => name;
  String get _price => price;
  String get _imagePath => imagepath;
}
