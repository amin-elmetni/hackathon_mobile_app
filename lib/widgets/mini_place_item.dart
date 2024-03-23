import 'package:flutter/material.dart';
import 'package:hackathon_project/misc/colors.dart';
import 'package:hackathon_project/models/place.dart';
import 'package:hackathon_project/widgets/app_large_text.dart';
import 'package:hackathon_project/widgets/app_text.dart';
import 'package:transparent_image/transparent_image.dart';

class MiniPlaceItem extends StatelessWidget {
  const MiniPlaceItem(this.place, {super.key});

  final Place place;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        FadeInImage(
          placeholder: MemoryImage(kTransparentImage),
          image: AssetImage(place.image),
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
                AppLargeText(
                  text: place.name,
                  size: 18,
                  color: Colors.white,
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
                      text: place.location,
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
