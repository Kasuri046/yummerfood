import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/app_assets_colors.dart';
import '../widgets/app_medium_text.dart';
import '../widgets/customs_ buttons.dart';

class AddCard extends StatefulWidget {
  const AddCard({super.key});

  @override
  State<AddCard> createState() => _AddCardState();
}

class _AddCardState extends State<AddCard> {

  final TextEditingController _namecontroller = TextEditingController();
  final TextEditingController _emailcontroller = TextEditingController();
  final TextEditingController _passwordcontroller = TextEditingController();
  final TextEditingController _confirmcontroller = TextEditingController();
  
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
          children: [AppMediumText(text: 'Add New Card')],
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          height: screenHeight,
          color: AppColors.bodyColor,
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 40,right: 40,top: 35),
                child: Image.asset('assets/paymentmethod/addcard.png'),
              ),
              Padding(
                padding: EdgeInsets.only(left: 25,right: 25,top: 30),
                child: Column(
                  children: [
                    TextField(
                      controller: _namecontroller,
                      cursorColor: Colors.black,
                      keyboardType: TextInputType.name,
                      style: TextStyle(color: Colors.black),
                      decoration: InputDecoration(
                        suffixIcon: Icon(
                          Icons.check,
                          size: 20,
                        ),
                        labelText: 'Name',
                        hintText: 'kristin Watson',
                        hintStyle: TextStyle(color: Colors.black),
                        labelStyle: TextStyle(color: AppColors.textColor),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: AppColors.textColor),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: AppColors.textColor),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    TextField(
                      controller: _emailcontroller,
                      keyboardType: TextInputType.number,
                      cursorColor: Colors.black,
                      style: TextStyle(color: Colors.black),
                      decoration: InputDecoration(
                        suffixIcon: Icon(
                          Icons.mail,
                          size: 20,
                        ),
                        labelText: 'Card Number',
                        hintText: '7741 6588 2123 6644',
                        hintStyle: TextStyle(color: Colors.black),
                        labelStyle: TextStyle(color: AppColors.textColor),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: AppColors.textColor),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: AppColors.textColor),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Row(
                      children: [
                        Container(
                          width: screenWidth * 0.40,
                          child: TextField(
                            controller: _passwordcontroller,
                            cursorColor: Colors.black,
                            keyboardType: TextInputType.datetime,
                            style: TextStyle(color: Colors.black),
                            decoration: InputDecoration(
                              labelText: 'MM/YY',
                              hintText: '12/23',
                              hintStyle: TextStyle(color: Colors.black),
                              labelStyle: TextStyle(color: AppColors.textColor),
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: AppColors.textColor),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: AppColors.textColor),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          width: screenWidth * 0.40,
                          child: TextField(
                            controller: _confirmcontroller,
                            cursorColor: Colors.black,
                            keyboardType: TextInputType.number,
                            obscureText: true,
                            style: TextStyle(color: Colors.black),
                            decoration: InputDecoration(
                              labelText: 'CVV',
                              hintText: '●●●',
                              hintStyle: TextStyle(color: Colors.black),
                              labelStyle: TextStyle(color: AppColors.textColor),
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: AppColors.textColor),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: AppColors.textColor),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    CustomButtons(
                      onPressed: () {},
                      buttonHeight: 60,
                      buttonWidth: screenWidth,
                      isBold: true,
                      textColor: Colors.white,
                      borderRadius: 20,
                      imagePath: 'assets/button/btn.png',
                      text: 'SAVE CARD',
                      textSize: 16,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
