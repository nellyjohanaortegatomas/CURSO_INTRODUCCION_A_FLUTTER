/*
{
  "shape_name":"rectangle",
  "property":{
    "width":5.0,
    "breadth":10.0
  }
}
*/

class Property {
  double width;
  double breadth;

  Property({required this.width, required this.breadth});

  factory Property.fromJson(Map<String, dynamic> json) {
    return Property(
      width: json["width"],
      breadth: json["breadth"],
    );
  }
}

class Shape {
  String shapename;
  Property property;

  Shape({required this.property, required this.shapename});

  factory Shape.fromJson(Map<String, dynamic> json) {
    return Shape(
      shapename: json["shape_name"],
      property: Property.fromJson(json["property"]),
    );
  }
}
