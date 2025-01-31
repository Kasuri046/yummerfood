import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yummer/widgets/app_assets_colors.dart';
import '../models/mypromocodes/promocode_model.dart';
import '../providers/provider_promocode.dart';
import '../providers/provider_favourite.dart';

class MyPromoCodes extends StatefulWidget {
  const MyPromoCodes({super.key});

  @override
  State<MyPromoCodes> createState() => _MyPromoCodesState();
}

class _MyPromoCodesState extends State<MyPromoCodes> {

  @override
  Widget build(BuildContext context) {

    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
        appBar: AppBar(
          title: Text(
            'My promocodes',
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
          ),
          centerTitle: true,
          backgroundColor: AppColors.bodyColor,
        ),
        body: Consumer<PromoCodeProvider>(builder: (context , provider ,child){
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
                            Provider.of<PromoCodeProvider>(context, listen: false).selectIndex(0);
                          },
                          child: Container(
                            height: screenHeight * 0.04,
                            width: provider.selectedIndex == 0 ? screenWidth * 0.28 : screenWidth * 0.25,
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
                                'Current',
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
                            Provider.of<PromoCodeProvider>(context, listen: false).selectIndex(1);
                          },
                          child: Container(
                            height: screenHeight * 0.04,
                            width: provider.selectedIndex == 1 ? screenWidth * 0.28 : screenWidth * 0.25,
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
                                'Used',
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
                          itemCount: favouritemodel.length,
                          itemBuilder: (context,index){
                            return
                              Column(
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
                                        padding: EdgeInsets.only(left: 10,top: 10,),
                                        child: Container(
                                          width: screenWidth * 0.55,
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text(favouritemodel[index].title
                                                ,style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
                                              SizedBox(height: 2,),
                                              Text(favouritemodel[index].text1,style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700,color: Color.fromRGBO(232, 57, 57, 1)),),
                                              SizedBox(height: 2,),
                                              Text(favouritemodel[index].text1,style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600,color: AppColors.textColor),),

                                            ],
                                          ),
                                        ),
                                      ),
                                      ImageIcon(AssetImage('assets/favourite/copy.png',),color: AppColors.textColor,size: 24,)
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
                          itemCount: usedCoupons.length,
                          itemBuilder: (context,index){
                            return
                              Column(
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
                                          padding: EdgeInsets.only(left: 10,top: 10,),
                                          child: Container(
                                            width: screenWidth * 0.55,
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Text(usedCoupons[index].title
                                                  ,style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
                                                SizedBox(height: 2,),
                                                Text(usedCoupons[index].text1,style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700,color: Color.fromRGBO(232, 57, 57, 1)),),
                                                SizedBox(height: 2,),
                                                Text(usedCoupons[index].text2,style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600,color: AppColors.textColor),),

                                              ],
                                            ),
                                          ),
                                        ),
                                        ImageIcon(AssetImage('assets/favourite/copy.png',),color: AppColors.textColor,size: 24,)
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
