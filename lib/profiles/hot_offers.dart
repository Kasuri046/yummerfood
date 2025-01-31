import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../widgets/app_assets_colors.dart';
import '../widgets/app_medium_text.dart';

class HotOffers extends StatefulWidget {
  const HotOffers({super.key});

  @override
  State<HotOffers> createState() => _HotOffersState();
}

final List<String> image = [
  'assets/homepage/itemone.png',
  'assets/homepage/itemtwo.png',
  'assets/homepage/itemthree.png',
  'assets/homepage/itemone.png',
  'assets/homepage/itemtwo.png',
  'assets/homepage/itemthree.png',
];

class _HotOffersState extends State<HotOffers> {
  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColors.bodyColor,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [AppMediumText(text: 'All Offers')],
        ),
      ),
      body: Container(
        color: AppColors.bodyColor,
        height: screenHeight,
        width: screenWidth,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Container(
            height: screenHeight * 0.85,
            width: screenWidth,
            child: ListView.builder(
              itemCount: image.length,
              itemBuilder: (context, index) {
                return Container(
                  width: screenWidth,
                  height: screenHeight * 0.25,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8.0), // Optional: rounded corners
                    child: Image.asset(
                      image[index],
                      // Make sure the image covers the container
                    ),
                  ),
                );
              },
            ),
          ),
        )
      ),
    );
  }
}
