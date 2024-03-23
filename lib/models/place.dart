import 'package:uuid/uuid.dart';

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
    required this.location,
    this.rating = 0,
  }) : id = uuid.v4();

  final String id;
  final String name;
  final String description;
  final String image;
  final PlaceType type;
  final String location;
  final double rating;
}
