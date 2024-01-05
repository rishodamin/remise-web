import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class GlobalVariables {
  static const appBarGradient = LinearGradient(
    colors: [
      Color.fromRGBO(240, 240, 240, 1),
      Colors.white,
    ],
    stops: [0.5, 1.0],
  );
  static const Color greyBackgroundCOlor = Color(0xffebecee);
  static const remiseBlueColor = Color.fromRGBO(56, 213, 231, 0.1);
  static const String mainMessage =
      "Welcome to Remise... \nYour Premier Destination for Quality Fencing Equipment in India :)";
  static const String aboutMessage =
      "At Remise, we're dedicated to providing top-notch fencing equipment at affordable prices, delivering across the length and breadth of India. Explore our extensive range of products designed to meet the diverse needs of fencing enthusiasts, from professionals to beginners.";
  static const String whyChooseMessage =
      "Unparalleled Quality:\nOur products are crafted with precision, ensuring durability and performance.\n\nAffordable Prices:\nWe believe in making high-quality fencing equipment accessible to everyone.\n\nNationwide Delivery:\nNo matter where you are in India, Remise delivers to your doorstep.\n\nImportant Note:\nOnce an order is placed, it cannot be refunded or canceled. However, we understand that circumstances may arise. If you need to replace your product, please contact our customer support team to initiate the replacement process.";
  static const String finalMessage =
      "At Remise, we prioritize customer satisfaction and are committed to providing excellent service. Explore our collection and gear up for an exceptional fencing experience!";

  Future<void> openUrl(Uri url) async {
    if (!await launchUrl(url)) {
      throw Exception('Could not launch $url');
    }
  }
}
