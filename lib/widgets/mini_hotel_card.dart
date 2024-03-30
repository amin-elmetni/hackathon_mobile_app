import 'package:flutter/material.dart';
import 'package:hackathon_project/models/hotel.dart';
import 'package:hackathon_project/widgets/mini_card.dart';

class MiniHotelCard extends StatelessWidget {
  const MiniHotelCard(this.hotel, {super.key});

  final Hotel hotel;

  @override
  Widget build(BuildContext context) {
    return MiniCard(
      countryName: hotel.country.name,
      cityName: hotel.city.name,
      image: hotel.image,
      name: hotel.name,
      rating: hotel.rating,
    );
  }
}
