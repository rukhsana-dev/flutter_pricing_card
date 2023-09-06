import 'package:flutter/material.dart';
import 'package:pricing_card/components/picing_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            PricingCard(
              top: 30,
              buttonColor: Color(0xFF4169E1), // Royal Blue
              featureTextColor: Colors.grey[800]!,
              isFree: true,
              features: [
                'Feature 1',
                'Feature 2',
                'Feature 3',
              ],
              icon: Icons.adobe_sharp,
              iconSize: 30.0,
              iconColor: Colors.white,
              boxSize: 70.0,
              boxColor: Color(0xFF4169E1),
              customPrice: '\$0 / month',
              description: 'Unleash the power of AI documentation',
              free: 'Free',
              elevatedButton: 'Get Started',
              getstarted: 'Get Started',
            ),
            PricingCard(
              top: 00,
              backgroundColor: Color(0xFF4169E1),
              buttonColor: Colors.white, // Royal Blue
              buttonTextColor: Color(0xFF4169E1),
              descriptionTextColor: Colors.white,
              featureTextColor: Colors.white,
              freeTextColor: Colors.white,
              priceTextColor: Colors.white,
              isFree: false,
              features: [
                'all in the free plan',
                'Feature 4',
                'Feature 5',
                'Feature 6',
                'Feature 7',
              ],
              icon: Icons.adobe_sharp,
              iconSize: 30.0,
              iconColor: Color(0xFF4169E1),
              boxSize: 70.0,
              boxColor: Colors.white,
              customPrice: '\$49',
              description:
                  'Scale your business and team with enterprise-grade features',
              free: "Professional",
              elevatedButton: 'Get Started',
              getstarted: 'Get Started',
            ),
            PricingCard(
              top: 30,
              buttonColor: Color(0xFF4169E1), // Blue color for Company page
              isFree: false,
              features: [
                'Unlimited active projects',
                'Unlimited documents',
                'Unlimited users',
              ],
              featureTextColor: Colors.grey[800]!,
              icon: Icons.adobe_sharp,
              iconSize: 30.0,
              iconColor: Colors.white,
              boxSize: 70.0,
              boxColor: Color(0xFF4169E1),
              customPrice: "Let's chat",
              description: 'Unleash the power of AI documentation.',
              free: "Company",
              elevatedButton: 'Request Demo',
              getstarted: 'Request Demo',
            ),
          ],
        ),
      ),
    );
  }
}
