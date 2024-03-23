import 'package:flutter/material.dart';
import 'package:hackathon_project/models/restaurant.dart';
import 'package:hackathon_project/widgets/mini_card.dart';

class MiniRestaurantCard extends StatelessWidget {
  const MiniRestaurantCard(this.restaurant, {super.key});

  final Restaurant restaurant;

  @override
  Widget build(BuildContext context) {
    return MiniCard(
      countryName: restaurant.country.name,
      cityName: restaurant.city.name,
      image: restaurant.image,
      name: restaurant.name,
      rating: restaurant.rating,
    );
  }
}
