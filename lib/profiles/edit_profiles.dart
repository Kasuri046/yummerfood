import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:yummer/widgets/app_assets_colors.dart';
import 'package:yummer/widgets/customs_%20buttons.dart';
import '../widgets/app_medium_text.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  final TextEditingController _namecontroller = TextEditingController();
  final TextEditingController _emailcontroller = TextEditingController();
  final TextEditingController _phonecontroller = TextEditingController();
  final TextEditingController _locationcontroller = TextEditingController();

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
          children: [AppMediumText(text: 'Edit Profile')],
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          height: screenHeight,
          width: screenWidth,
          color: AppColors.bodyColor,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: screenHeight * 0.035,
              ),
              Stack(
                clipBehavior: Clip.none,
                children: [
                  CircleAvatar(
                    radius: 70,
                    backgroundColor: AppColors.mainColor,
                  ),
                  Positioned(
                    top: screenHeight * 0.11,
                    left: screenWidth * 0.24,
                    child: CircleAvatar(
                      radius: 20, // The size of the CircleAvatar
                      backgroundColor: AppColors.textColor, // Background color
                      backgroundImage: AssetImage('assets/icons/profileicon.png'), // Profile icon
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(
                    right: screenWidth * 0.08,
                    left: screenWidth * 0.08,
                    top: screenHeight * 0.04),
                child: Container(
                  height: screenHeight * 0.65,
                  width: screenWidth,
                  child: Column(
                    children: [
                      TextField(
                        controller: _namecontroller,
                        cursorColor: Colors.black,
                        style: TextStyle(color: Colors.black),
                        decoration: InputDecoration(
                          suffixIcon: Icon(
                            Icons.check,
                            color: Colors.green,
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
                        cursorColor: Colors.black,
                        style: TextStyle(color: Colors.black),
                        decoration: InputDecoration(
                          suffixIcon: Icon(
                            Icons.check,
                            color: Colors.green,
                            size: 20,
                          ),
                          labelText: 'Email',
                          hintText: 'kristinwatson@mail.com',
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
                      SizedBox(height: 25),
                      TextField(
                        controller: _phonecontroller,
                        cursorColor: Colors.black,
                        style: TextStyle(color: Colors.black),
                        decoration: InputDecoration(
                          suffixIcon: Icon(
                            color: Colors.green,
                            Icons.check,
                            size: 20,
                          ),
                          labelText: 'Phone Number',
                          hintText: '+38 0123456789',
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
                        controller: _locationcontroller,
                        cursorColor: Colors.black,
                        style: TextStyle(color: Colors.black),
                        decoration: InputDecoration(
                          suffixIcon: Icon(
                            color: Colors.green,
                            Icons.check,
                            size: 20,
                          ),
                          labelText: 'Location',
                          hintText: 'Chicago, USA',
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
                      SizedBox(height: 35),
                      CustomButtons(
                        text: 'SAVE CHANGES',
                        onPressed: (){},
                        buttonHeight: 50,
                        buttonWidth: screenWidth,
                        isBold: false,
                        textSize: 13,
                        textColor: Colors.white,
                        imagePath: 'assets/button/btn.png',
                        imageBorderRadius: 5,
                        borderRadius: 20.0,
                      ),

                    ],
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
