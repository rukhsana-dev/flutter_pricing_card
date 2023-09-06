import 'package:flutter/material.dart';

class PricingCard extends StatelessWidget {
  final bool isFree;
  final List<String> features;
  final IconData icon;
  final double iconSize;
  final Color iconColor;
  final double boxSize;
  final Color boxColor;
  final String customPrice;
  final String free;
  final String description;
  final String elevatedButton;
  final String getstarted;
  final double? top;
  // Default background color
  final Color backgroundColor;

  final Color freeTextColor;
  final Color priceTextColor;
  final Color descriptionTextColor;
  final Color featureTextColor;
  final Color buttonTextColor;
  final Color buttonColor; // New parameter for button color

  PricingCard(
      {required this.isFree,
      required this.features,
      required this.icon,
      this.iconSize = 48.0,
      this.iconColor = Colors.black,
      this.boxSize = 64.0,
      this.boxColor = Colors.blue,
      this.customPrice = '\$0',
      this.description = 'Unleash the power of AI documentation',
      required this.elevatedButton,
      this.freeTextColor = Colors.black,
      this.priceTextColor = Colors.black,
      this.descriptionTextColor = Colors.grey,
      this.featureTextColor = Colors.green,
      this.buttonTextColor = Colors.white,
      required this.free,
      required this.getstarted,
      required this.buttonColor,
      // Set default background color to white
      this.backgroundColor = Colors.white,
      this.top});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      height: 500 - (top ?? 0.0),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        margin: EdgeInsets.zero,
        color: backgroundColor, // Use the specified background color
        elevation: 40,
        shadowColor: backgroundColor, // Use the specified background color
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: boxSize,
                height: boxSize,
                decoration: BoxDecoration(
                  color: boxColor,
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Center(
                  child: Icon(
                    icon,
                    size: iconSize,
                    color: iconColor,
                  ),
                ),
              ),
              SizedBox(height: 8.0),
              Text(
                free,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: freeTextColor,
                ),
              ),
              SizedBox(height: 16.0),
              Text(
                isFree ? '\$0 /month' : customPrice,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: priceTextColor,
                ),
              ),
              SizedBox(height: 8.0),
              Text(
                description,
                style: TextStyle(
                  fontSize: 16,
                  color: descriptionTextColor,
                ),
              ),
              SizedBox(height: 16.0),
              for (String feature in features)
                Row(
                  children: [
                    Icon(
                      Icons.check,
                      color: featureTextColor,
                    ),
                    SizedBox(width: 5.0),
                    Text(
                      feature,
                      style: TextStyle(
                        color: featureTextColor,
                      ),
                    ),
                  ],
                ),
              SizedBox(height: 25.0),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  color: buttonColor, // Use the provided button color
                ),
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    getstarted,
                    style: TextStyle(
                      color: buttonTextColor,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: buttonColor,
                    padding: EdgeInsets.symmetric(
                      horizontal: 20.0,
                      vertical: 16.0,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
