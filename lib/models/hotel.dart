import 'package:uuid/uuid.dart';

const uuid = Uuid();

class Hotel {
  Hotel({
    required this.name,
    required this.description,
    required this.image,
    this.website = '',
    required this.price,
    this.rating = 0,
    required this.stars,
    required this.location,
  }) : id = uuid.v4();

  final String id;
  final String name;
  final String description;
  final String image;
  final String website;
  final double price;
  final double rating;
  final int stars;
  final String location;
}
