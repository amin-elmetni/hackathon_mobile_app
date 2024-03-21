import 'package:flutter/material.dart';
import 'package:hackathon_project/misc/colors.dart';

class ResponsiveButton extends StatelessWidget {
  const ResponsiveButton({
    super.key,
    this.isResponsive = false,
    this.width,
    required this.text,
  });

  final bool? isResponsive;
  final double? width;
  final String text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: 60,
      child: TextButton.icon(
        onPressed: () {},
        style: TextButton.styleFrom(
          foregroundColor: Colors.white,
          backgroundColor: AppColors.mainColor,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        ),
        label: Text(text),
        icon: const Icon(Icons.arrow_circle_right_outlined),
      ),
    );
  }
}

// decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(10),
//         color: AppColors.mainColor,
//       ),