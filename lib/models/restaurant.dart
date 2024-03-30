import 'package:uuid/uuid.dart';
import 'package:hackathon_project/data/dummy_data.dart';

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
    required this.image,
    required this.address,
    this.website = '',
    required this.country,
    required this.city,
    this.rating = 0,
  }) : id = uuid.v4();

  final String id;
  final String name;
  final String description;
  final RestaurantType type;
  final double rating;
  final String image;
  final String address;
  final String website;
  final Country country;
  final City city;
}
