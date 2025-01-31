import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yummer/widgets/app_assets_colors.dart';
import '../models/myfavourite/restaurants.dart';
import '../providers/provider_favourite.dart';

class MyFavorite extends StatefulWidget {
  const MyFavorite({super.key});

  @override
  State<MyFavorite> createState() => _MyFavoriteState();
}

class _MyFavoriteState extends State<MyFavorite> {

  @override
  Widget build(BuildContext context) {

    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'My Favourite',
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
        ),
        centerTitle: true,
        backgroundColor: AppColors.bodyColor,
      ),
      body: Consumer<FavouriteProvider>(builder: (context ,provider,child){
        return Container(
          height: screenHeight,
          width: screenWidth,
          color: AppColors.bodyColor,
          child: Padding(
            padding: EdgeInsets.only(left: 25, right: 25, top: 20),
            child: Column(
              children: [
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Provider.of<FavouriteProvider>(context, listen: false).selectIndex(0);
                        },
                        child: Container(
                          height: screenHeight * 0.04,
                          width: provider.selectedIndex == 0 ? screenWidth * 0.35 : screenWidth * 0.25,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            gradient: provider.selectedIndex == 0
                                ? LinearGradient(
                              colors: [
                                Color.fromRGBO(255, 127, 86, 1),
                                Color.fromRGBO(232, 57, 57, 0.8),
                              ],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                            )
                                : null,
                            color: provider.selectedIndex == 1 ? Colors.white : null,
                          ),
                          child: Center(
                            child: Text(
                              'Restaurants',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: provider.selectedIndex == 0 ? Colors.white : AppColors.textColor,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      GestureDetector(
                        onTap: () {
                            Provider.of<FavouriteProvider>(context, listen: false).selectIndex(1);
                        },
                        child: Container(
                          height: screenHeight * 0.04,
                          width: provider.selectedIndex == 1 ? screenWidth * 0.35 : screenWidth * 0.25,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            gradient: provider.selectedIndex == 1
                                ? LinearGradient(
                              colors: [
                                Color.fromRGBO(255, 127, 86, 1),
                                Color.fromRGBO(232, 57, 57, 0.8),
                              ],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                            )
                                : null,
                            color: provider.selectedIndex == 0 ? Colors.white : null,
                          ),
                          child: Center(
                            child: Text(
                              'Food',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: provider.selectedIndex == 1 ? Colors.white : AppColors.textColor,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20), // Add some spacing
                if (provider.selectedIndex == 0) //Restaurent
                  Container(
                    height: screenHeight * 0.80,
                    width: screenWidth,
                    child: ListView.builder(
                        itemCount: favouriteModels.length,
                        itemBuilder: (context,index){
                          return Column(
                            children: [
                              Container(
                                height: screenHeight * 0.12,
                                width: screenWidth,
                                child: Row(
                                  children: [
                                    Container(
                                      height: screenHeight * 0.11,
                                      width: screenWidth * 0.23,
                                      decoration: BoxDecoration(
                                          color: Color.fromRGBO(202, 205, 214, 1),
                                          borderRadius: BorderRadius.circular(5)
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 10,top: 10),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(favouriteModels[index].title
                                            ,style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
                                          SizedBox(height: 2,),
                                          Text(favouriteModels[index].text1,style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600,color: AppColors.textColor),),
                                          SizedBox(height: 2,),
                                          Row(
                                            children: [
                                              ImageIcon(AssetImage('assets/favourite/star.png'),size: 20,),
                                              Padding(
                                                padding: EdgeInsets.only(top: 3,left: 5),
                                                child: Text(favouriteModels[index].text2,style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400),),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.only(bottom: 3),
                                                child: ImageIcon(AssetImage('assets/favourite/map.png'),size: 18,),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.only(left: 7,top: 2),
                                                child: Text(favouriteModels[index].text3,style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400),),
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      width: 25,
                                    ),
                                    ImageIcon(AssetImage('assets/favourite/chevron.png',),color: AppColors.textColor,size: 16,)
                                  ],
                                ),
                              ),
                              Divider()
                            ],
                          );
                        }),
                  ),
                if (provider.selectedIndex == 1) //Food
                  Container(
                    height: screenHeight * 0.80,
                    width: screenWidth,
                    child: ListView.builder(
                        itemCount: foodItems.length,
                        itemBuilder: (context,index){
                          return Column(
                            children: [
                              Container(
                                height: screenHeight * 0.12,
                                width: screenWidth,
                                child: Row(
                                  children: [
                                    Container(
                                      height: screenHeight * 0.11,
                                      width: screenWidth * 0.23,
                                      decoration: BoxDecoration(
                                          color: Color.fromRGBO(202, 205, 214, 1),
                                          borderRadius: BorderRadius.circular(5)
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 10,top: 10),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(foodItems[index].name,style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
                                          SizedBox(height: 2,),
                                          Text(foodItems[index].description,style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600,color: AppColors.textColor),),
                                          SizedBox(height: 2,),
                                          Row(
                                            children: [
                                              ImageIcon(AssetImage('assets/favourite/star.png'),size: 20,),
                                              Padding(
                                                padding: EdgeInsets.only(top: 3,left: 5),
                                                child: Text(foodItems[index].price,style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400),),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.only(bottom: 3,left: 5),
                                                child: ImageIcon(AssetImage('assets/favourite/map.png'),size: 18,),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.only(left: 7,top: 2),
                                                child: Text(foodItems[index].calories,style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400),),
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      width: 25,
                                    ),
                                    ImageIcon(AssetImage('assets/favourite/chevron.png',),color: AppColors.textColor,size: 16,)
                                  ],
                                ),
                              ),
                              Divider()
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
