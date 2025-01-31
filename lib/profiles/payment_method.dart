import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:yummer/profiles/add_card.dart';
import '../widgets/app_assets_colors.dart';
import '../widgets/app_medium_text.dart';

class PaymentMethod extends StatefulWidget {
  const PaymentMethod({super.key});

  @override
  State<PaymentMethod> createState() => _PaymentMethodState();
}

class _PaymentMethodState extends State<PaymentMethod> {

  List images = [
    'assets/paymentmethod/cardone.png',
    'assets/paymentmethod/addcard.png',
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
          children: [AppMediumText(text: 'Payment Method')],
        ),
      ),
      body: Container(
        height: screenHeight,
        color: AppColors.bodyColor,
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 25, right: 25,top: 30,bottom: 10),
              child: Row(
                children: [
                  Text(
                    'Credit Card',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Spacer(),
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => AddCard()));
                    },
                    child: Text(
                      'Add',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Color.fromRGBO(232, 57, 57, 1),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 2,
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 2),
                    child: GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => AddCard()));
                      },
                      child: Icon(
                        Icons.add,
                        color: Color.fromRGBO(232, 57, 57, 1),
                        size: 18,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            CarouselSlider(
              items: images.map((imagePath) {
                return Container(
                  margin: EdgeInsets.symmetric(horizontal: 5),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(imagePath),
                    ),
                  ),
                );
              }).toList(),
              options: CarouselOptions(
                autoPlay: true,
                enableInfiniteScroll: true,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 25, right: 25,top: 20),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                  borderRadius: BorderRadius.circular(5)
                ),
                width: screenWidth,
                height: screenHeight * 0.17,
                child: Padding(
                  padding: EdgeInsets.only(left: 20,right: 20),
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 30),
                        child: Column(
                          children: [
                            Container(
                                width: 65,
                                height: 45,
                                child: ImageIcon(
                              AssetImage(
                                'assets/paymentmethod/paymenticon.png',
                              ),
                            )),
                            Text(
                              'Apple Pay',
                              style: TextStyle(color: AppColors.textColor,fontSize: 14,fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                      ),
                      Spacer(),
                      ImageIcon(
                        AssetImage('assets/paymentmethod/iconone.png',)
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: screenHeight * 0.02,
            ),
            Padding(
              padding: EdgeInsets.only(left: 25, right: 25),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                  borderRadius: BorderRadius.circular(5)
                ),
                width: screenWidth,
                height: screenHeight * 0.17,
                // color: Colors.white,
                child: Padding(
                  padding: EdgeInsets.only(left: 20,right: 20),
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 30),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                                width: 80,
                                height: 45,
                                child:
                                  Image.asset(
                                    'assets/paymentmethod/two.png',
                                  ),
                                ),
                            Text(
                              'Pay Pal',
                              style: TextStyle(color: AppColors.textColor,fontSize: 14,fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                      ),
                      Spacer(),
                      ImageIcon(
                          AssetImage('assets/paymentmethod/plus.png',)
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
