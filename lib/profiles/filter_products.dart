import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../widgets/app_assets_colors.dart';
import '../widgets/app_medium_text.dart';

class FilterProducts extends StatefulWidget {
  const FilterProducts({super.key});

  @override
  State<FilterProducts> createState() => _FilterProductsState();
}

class _FilterProductsState extends State<FilterProducts> {
  int selectedIndex = 0;
  int selectedCuisineIndex = -1;

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;

    // var arrColors = [
    //   Colors.blue,
    //   Colors.green,
    //   Colors.amber,
    //   Colors.blue,
    //   Colors.brown,
    //   Colors.black12,
    //   Colors.green,
    //   Colors.amber,
    // ];

    List text = [
      'Ukrainian',
      'Chines',
      'Italian',
      'Thai',
      'Georgian',
      'Asian',
      'American',
      'Japanese',
    ];

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColors.bodyColor,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [AppMediumText(text: 'Filter')],
        ),
      ),
      body: Container(
        width: screenWidth,
        height: screenHeight,
        color: AppColors.bodyColor,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: screenHeight * 0.02),
              Text(
                'Sort By',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
              SizedBox(height: screenHeight * 0.03),
              Container(
                height: screenHeight * 0.30,
                child: ListView.builder(
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedIndex = index;
                        });
                      },
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: screenHeight * 0.040,
                            child: Row(
                              children: [
                                Text(
                                  'Price low to high',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    color: Color.fromRGBO(125, 132, 154, 1),
                                  ),
                                ),
                                Spacer(),
                                // Use Spacer to fill the remaining space
                                if (selectedIndex ==
                                    index) // Show icon only if selected
                                  ImageIcon(
                                    AssetImage('assets/filter/check.png'),
                                    size: 15,
                                    color: Color.fromRGBO(0, 130, 75, 1),
                                  ),
                              ],
                            ),
                          ),
                          Divider(),
                        ],
                      ),
                    );
                  },
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Cuisines',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
              SizedBox(height: screenHeight * 0.03),
              Container(
                // color: Colors.black.withOpacity(0.1),
                width: screenWidth,
                height: screenHeight * 0.26,
                child: GridView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 3,
                  ),
                  itemCount: 8,
                  itemBuilder: (context, index) {
                    bool isSelected = selectedCuisineIndex == index;
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedCuisineIndex = isSelected ? -1 : index;
                        });
                      },
                      child: Container(
                        height: screenHeight * 0.20,
                        width: screenWidth * 0.20,
                        // color: arrColors[index].withOpacity(0.3),
                        child: Row(
                          children: [
                            Container(
                              height: 25,
                              width: 25,
                              decoration: BoxDecoration(
                                  color: isSelected
                                      ? Color.fromRGBO(255, 127, 86, 1)
                                      : Colors.white,
                                  borderRadius: BorderRadius.circular(5)),
                              child: isSelected
                                  ? ImageIcon(
                                      AssetImage('assets/filter/check.png'),
                                      color: Colors.white,
                                    )
                                  : Container(),
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Text(
                              text[index],
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: Color.fromRGBO(125, 132, 154, 1)),
                            )
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

