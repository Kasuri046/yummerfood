import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yummer/profiles/my_address.dart';
import 'package:yummer/widgets/app_assets_colors.dart';
import '../models/homepage/homepage_images_list.dart';
import '../models/homepage/homepage_item_model.dart';
import '../profiles/hot_offers.dart';
import '../providers/homepage_provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {

    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Consumer<HomepageProvider>(builder: (context,provider,child){
        return Container(
          height: screenHeight,
          width: screenWidth,
          color: AppColors.bodyColor,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //First Conatiner
                Container(
                  height: screenWidth > 600 ? screenHeight * 0.42 : screenHeight * 0.33,
                  width: screenWidth,
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Container(
                        height:screenWidth > 600 ? screenHeight * 0.30 : screenHeight * 0.25,
                        width: screenWidth,
                        child: Image.asset(
                          'assets/homepage/homeimg.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                      Positioned(
                        top: screenHeight * 0.07,
                        child: Container(
                          width: screenWidth,
                          height:screenWidth > 600 ? screenHeight * 0.15 : screenHeight * 0.10,
                          child: Padding(
                            padding: EdgeInsets.only(left: 30, right: 20),
                            child: Row(
                              children: [
                                CircleAvatar(
                                  radius: 30,
                                  backgroundColor: Color.fromRGBO(202, 205, 214, 1),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                      top: screenHeight * 0.022,
                                      left: screenWidth * 0.03),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Deliver To:',
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600,
                                          color: Color.fromRGBO(255, 255, 255, 1),
                                        ),
                                      ),
                                      Text(
                                        '8000 S Kirkland Ave, Chicago, IL ...',
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                          color: Color.fromRGBO(255, 255, 255, 1),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  width: screenWidth * 0.05,
                                ),
                                InkWell(
                                  onTap: (){
                                    Navigator.push(context, MaterialPageRoute(builder: (context) => MyAddress() ));
                                  },
                                  child: ImageIcon(
                                    AssetImage('assets/homepage/chevron.png'),
                                    size: 15,
                                    color: Color.fromRGBO(255, 255, 255, 1),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      //Check Here
                      ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: items.length,
                        itemBuilder: (context, index) {
                          bool isSelected = index == provider.selectedIndex;
                          return GestureDetector(
                            onTap: () {
                              provider.selectIndex(index);
                            },
                            child: Padding(
                              padding: EdgeInsets.only(
                                  left: index == 0 ? 30 : 15,
                                  top: screenWidth > 600 ? screenHeight * 0.25 :  screenHeight * 0.20,
                                  right: index == items.length - 1 ? 30.0 : 0.0),
                              child: Container(
                                height: screenHeight * 0.12,
                                width: screenWidth > 600 ? screenWidth * 0.10 : screenWidth * 0.20,
                                child: Stack(
                                  clipBehavior: Clip.none,
                                  children: [
                                    Container(
                                      width: screenHeight * 0.20,
                                      height: screenHeight * 0.09,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(5),
                                        boxShadow: [
                                          BoxShadow(
                                            blurRadius: 24,
                                            spreadRadius: 0,
                                            offset: Offset(0, 4),
                                            color: Color.fromRGBO(6, 38, 100, 0.1),
                                          )
                                        ],
                                      ),
                                      child: Center(
                                        child: ImageIcon(
                                          AssetImage(items[index].imagePath),
                                          size: 45,
                                          color: isSelected
                                              ? Color.fromRGBO(255, 127, 86, 1)
                                              : Color.fromRGBO(125, 132, 154, 1),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      top: screenHeight * 0.102,
                                      left: screenWidth > 600 ? screenWidth * 0.025 : screenWidth * 0.047,
                                      child: Text(
                                        items[index].title,
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                          color: isSelected
                                              ? Color.fromRGBO(255, 127, 86, 1)
                                              : Color.fromRGBO(125, 132, 154, 1),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: EdgeInsets.only(left: 30, right: 30),
                  child: Row(
                    children: [
                      Text(
                        'Hot Offers',
                        style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
                      ),
                      Container(
                        width: screenWidth * 0.46,
                      ),
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => HotOffers() ));
                        },
                        child: Container(
                          width: screenWidth * 0.12,
                          height: screenHeight * 0.04,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'All',
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: Color.fromRGBO(232, 57, 57, 1)),
                              ),
                              ImageIcon(
                                AssetImage('assets/homepage/chevron.png'),
                                color: Color.fromRGBO(232, 57, 57, 1),
                                size: 15,
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  height: screenHeight * 0.20,
                  width: screenWidth,
                  child: CarouselSlider(
                    options: CarouselOptions(
                      autoPlay: true,
                      enlargeCenterPage: false,
                      enableInfiniteScroll: false,
                    ),
                    items: images.map((image) {
                      return Builder(
                        builder: (BuildContext context) {
                          return Padding(
                            padding: EdgeInsets.only(right: 10),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Image.asset(image),
                            ),
                          );
                        },
                      );
                    }).toList(),
                  ),
                ),
                SizedBox(height: 20,),
                Padding(
                  padding: EdgeInsets.only(left: 30),
                  child: Text(
                    'Popular Restaurents',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
                  ),
                ),
                Container(
                  width: screenWidth,
                  height: screenHeight * 0.18,
                  child: ListView.builder(
                    // itemCount: restaurants.length,
                      itemCount: provider.homeRestaurants.length,
                      itemBuilder: (context, index) {
                        var restaurent = provider.homeRestaurants[index];
                        return Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 30, right: 30),
                              child: Container(
                                height: screenHeight * 0.15,
                                width: screenWidth,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: Colors.white,
                                ),
                                child: Row(
                                  children: [
                                    Container(
                                      height: screenHeight * 0.15,
                                      width: screenWidth * 0.30,
                                      decoration: BoxDecoration(
                                          color: Color.fromRGBO(202, 205, 214, 1),
                                          borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(5),
                                              bottomLeft: Radius.circular(5))),
                                      child: Stack(
                                        children: [
                                          Container(
                                            height: screenHeight * 0.03,
                                            width: screenWidth * 0.12,
                                            decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius: BorderRadius.only(
                                                    topLeft: Radius.circular(5),
                                                    bottomRight:
                                                    Radius.circular(5))),
                                            child: Row(
                                              children: [
                                                SizedBox(
                                                  width: 4,
                                                ),
                                                ImageIcon(
                                                  AssetImage(
                                                      'assets/homepage/star.png'),
                                                  color: Color.fromRGBO(
                                                      232, 57, 57, 1),
                                                  size: 15,
                                                ),
                                                SizedBox(
                                                  width: 4,
                                                ),
                                                Text(
                                                  restaurent.rating,
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      fontWeight: FontWeight.w600),
                                                )
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                          top: screenHeight * 0.02,
                                          left: screenWidth * 0.04),
                                      child: Column(
                                        crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            restaurent.name,
                                            style: TextStyle(
                                                fontWeight: FontWeight.w500,
                                                fontSize: 18),
                                          ),
                                          SizedBox(
                                            height: 3,
                                          ),
                                          Text(
                                            restaurent.category,
                                            style: TextStyle(
                                                fontWeight: FontWeight.w400,
                                                fontSize: 16,
                                                color: Color.fromRGBO(
                                                    125, 132, 154, 1)),
                                          ),
                                          SizedBox(
                                            height: 15,
                                          ),
                                          Row(
                                            children: [
                                              ImageIcon(
                                                AssetImage(
                                                  'assets/homepage/mappin.png',
                                                ),
                                                color: Color.fromRGBO(
                                                    125, 132, 154, 1),
                                                size: 20,
                                              ),
                                              SizedBox(
                                                width: screenWidth * 0.01,
                                              ),
                                              Text(
                                                restaurent.distance,
                                                style: TextStyle(
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w600,
                                                    color: Color.fromRGBO(
                                                        125, 132, 154, 1)),
                                              ),
                                              SizedBox(
                                                width: screenWidth * 0.02,
                                              ),
                                              Text(
                                                '- \$\$ -',
                                                style: TextStyle(
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w600,
                                                    color: Color.fromRGBO(
                                                        125, 132, 154, 1)),
                                              ),
                                              SizedBox(
                                                width: screenWidth * 0.02,
                                              ),
                                              ImageIcon(
                                                AssetImage(
                                                  'assets/homepage/truck.png',
                                                ),
                                                color:
                                                Color.fromRGBO(232, 57, 57, 1),
                                                size: 20,
                                              ),
                                              SizedBox(
                                                width: screenWidth * 0.01,
                                              ),
                                              Text(
                                                restaurent.priceRange,
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w600,
                                                  color: Color.fromRGBO(
                                                      232, 57, 57, 1),
                                                ),
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            )
                          ],
                        );
                      }),
                ),
              ],
            ),
          ),
        );
      })

    );
  }
}
