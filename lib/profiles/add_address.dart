import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:yummer/widgets/customs_%20buttons.dart';
import '../widgets/app_assets_colors.dart';
import 'my_address.dart';

class AddAddress extends StatefulWidget {
  const AddAddress({super.key});

  @override
  State<AddAddress> createState() => _AddAddressState();
}

class _AddAddressState extends State<AddAddress> {

  final TextEditingController _namecontroller = TextEditingController();
  final TextEditingController _emailcontroller = TextEditingController();

  int? _selectedRadio = 0;

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    final double screenWidth = screenSize.width;
    final double screenHeight = screenSize.height;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color.fromRGBO(202, 205, 214, 1),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: screenHeight * 0.50,
              width: screenWidth,
              decoration: BoxDecoration(
                  color: Color.fromRGBO(202, 205, 214, 1),
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 10,
                        spreadRadius: 0,
                        offset: Offset(0, -4),
                        color: Color.fromRGBO(34, 34, 34, 0.1))
                  ]),
            ),
            Container(
              height: screenHeight * 0.30,
              width: screenWidth,
              color: AppColors.bodyColor,
              child: Padding(
                padding: EdgeInsets.only(left: 25, right: 25, top: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Add New Address',
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                    ),
                    SizedBox(height: 15),
                    TextField(
                      controller: _namecontroller,
                      cursorColor: Colors.black,
                      keyboardType: TextInputType.name,
                      style: TextStyle(color: Colors.black),
                      decoration: InputDecoration(
                        labelText: 'Title',
                        hintText: 'My mom',
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
                    SizedBox(height: 15),
                    TextField(
                      controller: _emailcontroller,
                      keyboardType: TextInputType.streetAddress,
                      cursorColor: Colors.black,
                      style: TextStyle(color: Colors.black),
                      decoration: InputDecoration(
                        labelText: 'New Address',
                        hintText: '3646 S 58th Ave, Cicero, IL 60804, USA',
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
                    SizedBox(height: 15),
                    Row(
                      children: [
                        Radio(
                          value: 1,
                          groupValue: _selectedRadio,
                          onChanged: (value) {
                            setState(() {
                              if(_selectedRadio == value){
                                value = 0;
                              }else{
                                _selectedRadio = value;
                              }
                            });
                          },
                          activeColor: Colors.orange,
                          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        ),
                        SizedBox(width: 10),
                        Text(
                          'Use current location',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: AppColors.textColor),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 15),
              child: Container(
                width: screenWidth * 0.80,
                color: Colors.white,
                child: CustomButtons(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => MyAddress()));
                  },
                  buttonHeight: 55,
                  buttonWidth: screenWidth,
                  isBold: false,
                  textColor: Colors.white,
                  borderRadius: 5,
                  imagePath: 'assets/button/btn.png',
                  text: 'Save',
                  textSize: 14,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
