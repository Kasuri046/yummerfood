import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../widgets/app_assets_colors.dart';
import '../widgets/app_medium_text.dart';
import '../widgets/customs_ buttons.dart';
import 'add_address.dart';

class Location {
  final String imagePath;
  final String title;
  final String Address;

  Location({
    required this.imagePath,
    required this.title,
    required this.Address,
  });
}


class MyAddress extends StatefulWidget {
  const MyAddress({super.key});

  @override
  State<MyAddress> createState() => _MyAddressState();
}

class _MyAddressState extends State<MyAddress> {
  List<Location> locations = [
    Location(
        imagePath: 'assets/address/home.png',
        title: 'Home',
        Address: '8000 S Kirkland Ave, Chicago, IL 6065...'),
    Location(
        imagePath: 'assets/address/briefcase.png',
        title: 'Work',
        Address: '6391 Elgin St. Celina, Delaware 10299'),
    Location(
        imagePath: 'assets/address/map-pin.png',
        title: 'Other',
        Address: '3891 Ranchview Dr. Richardson, Califor...'),
  ];

  @override
  Widget build(BuildContext context) {

    final Size screenSize = MediaQuery.of(context).size;
    final double screenWidth = screenSize.width;
    final double screenHeight = screenSize.height;

    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: AppColors.bodyColor,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [AppMediumText(text: 'My Address')],
          ),
        ),
        body: Container(
          color: AppColors.bodyColor,
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Divider(),
              Container(
                height: screenHeight * 0.33,
                child: ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 25, right: 25),
                            child: Container(
                              height: screenHeight * 0.08,
                              width: screenWidth,
                              child: Row(
                                children: [
                                  Image.asset(
                                    locations[index].imagePath,
                                    height: 20,
                                    width: 20,
                                  ),
                                  SizedBox(
                                    width: 15,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                        top: screenHeight * 0.020),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          locations[index].title,
                                          style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 16),
                                        ),
                                        Text(
                                          locations[index].Address,
                                          style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 14,
                                              color: AppColors.textColor),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 45, right: 45),
                            child: Divider(),
                          ),
                        ],
                      );
                    }),
              ),
              Padding(
                padding: EdgeInsets.only(left: 25, right: 25),
                child: CustomButtons(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => AddAddress()));
                  },
                  buttonHeight: 55,
                  buttonWidth: screenWidth,
                  isBold: true,
                  textColor: Colors.white,
                  borderRadius: 5,
                  imagePath: 'assets/button/btn.png',
                  text: 'ADD NEW ADDRESS',
                  textSize: 14,
                ),
              ),
            ],
          ),
        ));
  }
}
