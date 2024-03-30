import 'package:flutter/material.dart';
import 'package:hackathon_project/models/place.dart';
import 'package:hackathon_project/widgets/mini_card.dart';

class MiniPlaceCard extends StatelessWidget {
  const MiniPlaceCard(this.place, {super.key});

  final Place place;

  @override
  Widget build(BuildContext context) {
    return MiniCard(
      countryName: place.country.name,
      cityName: place.city.name,
      image: place.image,
      name: place.name,
      rating: place.rating,
    );
  }
}
