import 'package:flutter/material.dart';
import 'package:remise_web/global_variables.dart';

class Productcard extends StatelessWidget {
  final double? height;
  final Color? color;
  final String imageUrl;
  final bool setBorder;
  const Productcard({
    super.key,
    this.height,
    this.color,
    this.setBorder = false,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        height: height,
        width: height,
        margin: const EdgeInsets.all(4),
        padding: const EdgeInsets.all(6),
        decoration: BoxDecoration(
          border: setBorder ? Border.all() : null,
          color: color ?? GlobalVariables.greyBackgroundCOlor,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Image.asset(
          imageUrl,
          fit: BoxFit.cover,
        ));
  }
}
