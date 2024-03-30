import 'package:uuid/uuid.dart';
import 'package:hackathon_project/data/dummy_data.dart';

const uuid = Uuid();

class Hotel {
  Hotel({
    required this.name,
    required this.amenities,
    required this.image,
    this.website = '',
    required this.price,
    this.rating = 0,
    required this.stars,
    required this.address,
    required this.country,
    required this.city,
  }) : id = uuid.v4();

  final String id;
  final String name;
  final List<String> amenities;
  final String image;
  final String website;
  final double price;
  final double rating;
  final int stars;
  final String address;
  final Country country;
  final City city;
}
