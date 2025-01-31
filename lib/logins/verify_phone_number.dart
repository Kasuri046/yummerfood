import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yummer/widgets/app_assets_colors.dart';
import 'package:yummer/widgets/app_medium_text.dart';
import 'package:yummer/widgets/app_text.dart';
import 'package:yummer/widgets/customs_%20buttons.dart';
import '../providers/provider_phone.dart';
import 'otp_screen.dart';

class VerifyPhoneNumber extends StatefulWidget {
  const VerifyPhoneNumber({super.key});

  @override
  State<VerifyPhoneNumber> createState() => _VerifyPhoneNumberState();
}

class _VerifyPhoneNumberState extends State<VerifyPhoneNumber> {
  final Map<String, String> countryCodes = {
    '+17': 'assets/flags/us.png',
    '+92': 'assets/flags/pk.png',
    '+44': 'assets/flags/uk.png',
    '+91': 'assets/flags/ind.png',
  };

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    final double screenWidth = screenSize.width;

    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [AppMediumText(text: 'Verify Your Phone Number')],
        ),
      ),
      body: Consumer<PhoneNumberProvider>(
        builder: (context, phoneNumberProvider, child) {
          return Container(
            color: Colors.white,
            child: Padding(
              padding: EdgeInsets.only(left: 25, right: 25, top: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppText(
                    textAlign: TextAlign.start,
                    text:
                    'We have sent you an SMS with a code to number ${phoneNumberProvider.selectedCountryCode} ${phoneNumberProvider.phoneNumber}',
                    color: AppColors.textColor,
                  ),
                  SizedBox(height: 25),
                  Text(
                    'Phone Number',
                    style: TextStyle(color: AppColors.textColor),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: AppColors.textColor,
                          width: 1.0,
                        ),
                      ),
                    ),
                    child: Row(
                      children: [
                        // Country code dropdown with flags
                        PopupMenuButton<String>(
                          onSelected: (String newValue) {
                            phoneNumberProvider.setSelectedCountryCode(newValue);
                          },
                          itemBuilder: (BuildContext context) {
                            return countryCodes.entries.map<PopupMenuEntry<String>>(
                                    (MapEntry<String, String> entry) {
                                  return PopupMenuItem<String>(
                                    value: entry.key,
                                    child: Row(
                                      children: [
                                        Image.asset(
                                          entry.value,
                                          width: 24,
                                          height: 24,
                                        ),
                                        SizedBox(width: 10),
                                        Text(entry.key),
                                      ],
                                    ),
                                  );
                                }).toList();
                          },
                          child: Row(
                            children: [
                              Image.asset(
                                countryCodes[phoneNumberProvider.selectedCountryCode]!,
                                width: 24,
                                height: 24,
                              ),
                              SizedBox(width: 10),
                              Text(phoneNumberProvider.selectedCountryCode),
                            ],
                          ),
                        ),
                        SizedBox(width: 10),
                        // Divider
                        Container(
                          height: 24,
                          child: VerticalDivider(
                            width: 1.0,
                            color: AppColors.textColor,
                          ),
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          child: TextField(
                            onChanged: (text) {
                              phoneNumberProvider.setPhoneNumber(text);
                            },
                            cursorColor: Colors.black,
                            style: TextStyle(color: Colors.black),
                            keyboardType: TextInputType.phone,
                            decoration: InputDecoration(
                              hintText: '1234567890',
                              hintStyle: TextStyle(color: Colors.black),
                              border: InputBorder.none, // Removes the default border
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 30),
                  CustomButtons(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => OtpScreen()));
                    },
                    buttonHeight: 50,
                    buttonWidth: screenWidth,
                    isBold: true,
                    textColor: Colors.white,
                    borderRadius: 20,
                    imagePath: 'assets/button/btn.png',
                    text: 'CONFIRM',
                    textSize: 16,
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
