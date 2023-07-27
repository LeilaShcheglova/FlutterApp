import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/utils/app_layout.dart';
import '../utils/app_styles.dart';

// HotelScreen StatelessWidget
class HotelScreen extends StatelessWidget {
  final Map<String, dynamic> hotel;

  const HotelScreen({Key? key, required this.hotel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);

    return Container(
      // Set the width of the container based on the device width
      width: size.width * 0.6,
      // Set the height of the container using the AppLayout utility
      height: AppLayout.getHeight(350),
      // Add padding to the container
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 17),
      // Add margin to the container
      margin: const EdgeInsets.only(right: 17, top: 5),
      // Apply decoration to the container
      decoration: BoxDecoration(
        // Set the background color of the container with opacity
        color: Styles.primaryColor.withOpacity(0.7), // Adjust opacity value (0.0 to 1.0)
        // Apply border radius to the container
        borderRadius: BorderRadius.circular(24),
        // Apply box shadow to the container
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade200,
            blurRadius: 20,
            spreadRadius: 5,
          ),
        ],
      ),
      // Container's child widget - Column
      child: Column(
        children: [
          // Image container
          Container(
            // Set the height of the image container using the AppLayout utility
            height: AppLayout.getHeight(150),
            // Apply decoration to the image container
            decoration: BoxDecoration(
              // Set the background color of the image container
              color: Styles.primaryColor,
              // Apply border radius to the image container
              borderRadius: BorderRadius.circular(35),
              // Apply image to the image container
              image: DecorationImage(
                image: AssetImage(
                  "assets/images/${hotel['image']}",
                ),
              ),
            ),
          ),
          const SizedBox(height: 10),
          // Hotel place
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              hotel['place'],
              style: Styles.headLineStyle2.copyWith(
                // Set the text color of the hotel place
                color: Styles.kakiColor,
              ),
            ),
          ),
          const SizedBox(height: 5),
          // Hotel destination
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              hotel['destination'],
              style: Styles.headLineStyle3.copyWith(
                // Set the text color of the hotel destination
                color: Colors.white,
              ),
            ),
          ),
          const SizedBox(height: 8),
          // Hotel price
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              hotel['price'],
              style: Styles.headLineStyle3.copyWith(
                // Set the text color of the hotel price
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
