import 'package:flutter/material.dart';
import 'package:hackathon_project/misc/colors.dart';
import 'package:hackathon_project/widgets/app_large_text.dart';
import 'package:hackathon_project/widgets/app_text.dart';
import 'package:transparent_image/transparent_image.dart';

class MiniCard extends StatelessWidget {
  const MiniCard({
    super.key,
    required this.countryName,
    required this.cityName,
    required this.image,
    required this.name,
    required this.rating,
  });

  final String countryName;
  final String cityName;
  final String image;
  final String name;
  final double rating;

  String get countryCityText {
    return '${countryName[0].toUpperCase()}${countryName.substring(1)}, ${cityName[0].toUpperCase()}${cityName.substring(1)}';
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        FadeInImage(
          placeholder: MemoryImage(kTransparentImage),
          image: AssetImage(image),
          fit: BoxFit.cover,
          height: double.infinity,
          width: double.infinity,
        ),
        Positioned(
          bottom: 15,
          left: 0,
          right: 0,
          child: Container(
            color: AppColors.mainColor.withOpacity(0.6),
            padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 5),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppLargeText(
                      text: name,
                      size: 18,
                      color: Colors.white,
                    ),
                    Row(
                      children: [
                        const Icon(
                          Icons.star_half_sharp,
                          color: Colors.white,
                          size: 18,
                        ),
                        const SizedBox(width: 4),
                        AppText(
                          text: '$rating',
                          color: Colors.white,
                          size: 12,
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 3),
                Row(
                  children: [
                    const Icon(
                      Icons.location_pin,
                      color: Colors.white,
                      size: 20,
                    ),
                    const SizedBox(width: 4),
                    AppText(
                      text: countryCityText,
                      color: Colors.white,
                      size: 12,
                    ),
                  ],
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
