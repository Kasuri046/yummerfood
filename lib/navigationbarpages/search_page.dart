import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yummer/providers/search_provider.dart';
import 'package:yummer/widgets/app_assets_colors.dart';

import '../profiles/filter_products.dart';

final List<String> foodItems = [
  'All',
  'Burger',
  'Salad',
  'Pizza',
  'Pasta',
  'Popcorn',
  'Drinks',
  'Juices',
  'Tea',
];

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {

    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
        body: Consumer<SearchpageProvider>(builder: (context, provider, child) {
      return Container(
        width: screenWidth,
        height: screenHeight,
        color: AppColors.bodyColor,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 30, right: 30, top: 50),
              child: Container(
                width: screenWidth,
                height: 60,
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: TextFormField(
                  controller: _controller,
                  // Use the existing controller
                  decoration: InputDecoration(
                    hintText: 'Search For A Dish...',
                    hintStyle: TextStyle(color: AppColors.textColor),
                    border: InputBorder.none,
                    // Removes the default border
                    fillColor: Colors.white,
                    filled: true,
                    suffixIcon: IconButton(
                      icon: ImageIcon(
                        AssetImage('assets/search/filter.png'),
                        color: AppColors.textColor,
                        size: 20,
                      ),
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => FilterProducts()));
                      },
                    ),
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 16, vertical: 18),
                  ),
                  keyboardType: TextInputType.name,
                  textCapitalization: TextCapitalization.words,
                  obscureText: false,
                ),
              ),
            ),
            SizedBox(
              height: screenHeight * 0.03,
            ),
            Container(
              height: screenHeight * 0.05,
              width: screenWidth,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: foodItems.length,
                  itemBuilder: (context, index) {
                    bool isSelected = provider.selectedIndex == index;
                    return GestureDetector(
                      onTap: () {
                        provider.selectIndex(index);
                      },
                      child: Padding(
                        padding: EdgeInsets.only(
                            left: index == 0 ? 30 : 15,
                            right: index == foodItems.length - 1 ? 10 : 0),
                        child: Container(
                          height: screenHeight * 0.05,
                          width: isSelected
                              ? screenWidth * 0.17
                              : screenWidth * 0.19,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: isSelected
                                  ? Color.fromRGBO(232, 57, 57, 1)
                                  : Colors.white),
                          child: Align(
                              alignment: Alignment.center,
                              child: Text(
                                foodItems[index],
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    color: isSelected
                                        ? Colors.white
                                        : Color.fromRGBO(125, 132, 154, 1)),
                              )),
                        ),
                      ),
                    );
                  }),
            ),
            Padding(
              padding: EdgeInsets.only(left: 30, top: 40),
              child: Text(
                'Popular Restaurents',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
              ),
            ),
            Container(
              width: screenWidth,
              height: screenHeight * 0.58,
              child: ListView.builder(
                  // itemCount: restaurants.length,
                  itemCount: provider.filteredRestaurants.length,
                  itemBuilder: (context, index) {
                    var restaurent = provider.filteredRestaurants[index];
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
      );
    }));
  }
}
