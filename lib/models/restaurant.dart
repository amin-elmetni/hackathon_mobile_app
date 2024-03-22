import 'package:uuid/uuid.dart';

const uuid = Uuid();

enum RestaurantType {
  affordable,
  pricey,
  luxurious,
}

class Restaurant {
  Restaurant({
    required this.name,
    required this.description,
    required this.type,
    required this.rating,
    required this.image,
    required this.location,
    required this.website,
  }) : id = uuid.v4();

  final String id;
  final String name;
  final String description;
  final RestaurantType type;
  final double rating;
  final String image;
  final String location;
  final String website;
}
