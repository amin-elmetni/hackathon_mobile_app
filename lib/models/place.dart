import 'package:uuid/uuid.dart';
import 'package:hackathon_project/data/dummy_data.dart';

const uuid = Uuid();

enum PlaceType {
  snorkling,
  horsing,
  hiking,
  cinema,
  biking,
  historical,
  playGround,
  nature,
  park,
}

class Place {
  Place({
    required this.name,
    required this.description,
    required this.image,
    required this.type,
    required this.address,
    required this.country,
    required this.city,
    this.rating = 0,
  }) : id = uuid.v4();

  final String id;
  final String name;
  final String description;
  final String image;
  final PlaceType type;
  final String address;
  final double rating;
  final Country country;
  final City city;
}
