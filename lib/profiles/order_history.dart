import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/orderhistory/order_history.dart';
import '../providers/provider_order.dart';
import '../widgets/app_assets_colors.dart';
import '../widgets/app_medium_text.dart';
import '../widgets/customs_ buttons.dart';

class OrderHistory extends StatefulWidget {
  const OrderHistory({super.key});

  @override
  State<OrderHistory> createState() => _OrderHistoryState();
}

class _OrderHistoryState extends State<OrderHistory> {
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
          children: [AppMediumText(text: 'Order History')],
        ),
      ),
      body: Consumer<OrderListProvider>(
        builder: (context, provider, child) {
          return Container(
            color: AppColors.bodyColor,
            child: ListView.builder(
              itemCount: orderList.length,
              itemBuilder: (context, index) {

                bool isVisible = provider.getVisibility(index);
                bool hasSingleItem = orderList.length == 1;

                return Padding(
                  padding: EdgeInsets.only(
                    top: screenHeight * 0.03,
                    left: screenWidth * 0.08,
                    right: screenWidth * 0.08,
                  ),
                  child: Column(
                    children: [
                      GestureDetector(
                        onTap: () => provider.toggleVisibility(index),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                          ),
                          height: screenHeight * 0.14,
                          width: screenWidth,
                          child: Row(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color: Color.fromRGBO(202, 205, 214, 1),
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    bottomLeft: Radius.circular(10),
                                  ),
                                ),
                                width: screenWidth * 0.25,
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  left: screenWidth * 0.04,
                                  right: screenWidth * 0.04,
                                  top: screenHeight * 0.02,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      orderList[index].text1,
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    SizedBox(
                                      height: screenHeight * 0.006,
                                    ),
                                    Text(
                                      orderList[index].text2,
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    SizedBox(
                                      height: screenHeight * 0.01,
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          orderList[index].text3,
                                          style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600,
                                            color: Color.fromRGBO(0, 130, 75, 1),
                                          ),
                                        ),
                                        SizedBox(
                                          width: screenWidth * 0.02,
                                        ),
                                        Icon(
                                          Icons.check,
                                          color: Color.fromRGBO(0, 130, 75, 1),
                                          size: 18,
                                        ),
                                        SizedBox(
                                          width: screenWidth * 0.12,
                                        ),
                                        Text(
                                          orderList[index].text4,
                                          style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      if (provider.getVisibility(index))
                        SizedBox(
                          height: screenHeight * 0.03,
                        ),
                      AnimatedCrossFade(
                        firstChild: Container(), // Empty container when not visible
                        secondChild: Container(
                          height: screenHeight * 0.19,
                          width: screenWidth,
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Text(
                                    orderList[index].text5,
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                      color: AppColors.textColor,
                                    ),
                                  ),
                                  Spacer(),
                                  Text(
                                    orderList[index].text6,
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                      color: AppColors.textColor,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: screenHeight * 0.01,
                              ),
                              Row(
                                children: [
                                  Text(
                                    orderList[index].text7,
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                      color: AppColors.textColor,
                                    ),
                                  ),
                                  Spacer(),
                                  Text(
                                    orderList[index].text8,
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                      color: AppColors.textColor,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: screenHeight * 0.01,
                              ),
                              Row(
                                children: [
                                  Text(
                                    orderList[index].text9,
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                      color: AppColors.textColor,
                                    ),
                                  ),
                                  Spacer(),
                                  Text(
                                    orderList[index].text10,
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                      color: AppColors.textColor,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: screenHeight * 0.03,
                              ),
                              CustomButtons(
                                text: orderList[index].buttonText,
                                onPressed: () {},
                                buttonHeight: 50,
                                buttonWidth: screenWidth,
                                isBold: false,
                                textSize: 13,
                                textColor: Color.fromRGBO(232, 57, 57, 1),
                                buttonColor: Colors.white,
                                imageBorderRadius: 5,
                                borderRadius: 5.0,
                              ),
                            ],
                          ),
                        ),
                        crossFadeState: isVisible
                            ? CrossFadeState.showSecond
                            : CrossFadeState.showFirst,
                        duration: Duration(milliseconds: 300),
                      ),
                    ],
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
