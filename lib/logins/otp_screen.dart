import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import '../providers/logins_providers.dart';
import '../providers/otp_provider.dart';
import '../widgets/app_assets_colors.dart';
import '../widgets/app_medium_text.dart';
import '../widgets/app_text.dart';
import '../widgets/customs_ buttons.dart';
import 'new_password.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.bodyColor,
        title: Center(child: AppMediumText(text: 'Verify Your Phone Number')),
      ),
      body: Container(
        color: AppColors.bodyColor,
        padding: EdgeInsets.symmetric(horizontal: 25, vertical: 25),
        child: Consumer<OtpProvider>(
          builder: (context, provider, child) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppText(
                  textAlign: TextAlign.start,
                  text: 'Enter your OTP code here.',
                  color: AppColors.textColor,
                ),
                SizedBox(height: 25),
                Container(
                  height: screenSize.height * 0.06,
                  width: screenSize.width * 0.90,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: List.generate(5, (index) {
                      return SizedBox(
                        height: 74,
                        width: 50,
                        child: TextFormField(
                          controller: provider.controllers[index],
                          onChanged: (value) {
                            provider.handleInputChange(context, index, value);
                          },
                          cursorColor: Colors.black,
                          style: TextStyle(color: Colors.black),
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(1),
                            FilteringTextInputFormatter.digitsOnly,
                          ],
                          decoration: InputDecoration(
                            hintText: '0',
                            filled: true,
                            fillColor: provider.controllers[index].text.isEmpty
                                ? Colors.white
                                : Color.fromRGBO(255, 127, 86, 1),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide: BorderSide(color: Colors.white),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide: BorderSide(color: Colors.white),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide: BorderSide(color: Colors.white),
                            ),
                          ),
                        ),
                      );
                    }),
                  ),
                ),
                SizedBox(height: 30),
                Row(
                  children: [
                    AppText(text: 'Didn\'t receive the OTP?', color: AppColors.textColor),
                    SizedBox(width: 5),
                    AppText(text: 'Resend.', color: AppColors.primaryColor),
                  ],
                ),
                SizedBox(height: 15),
                CustomButtons(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => NewPassword()));
                  },
                  buttonHeight: 50,
                  buttonWidth: screenSize.width,
                  isBold: true,
                  textColor: Colors.white,
                  borderRadius: 20,
                  imagePath: 'assets/button/btn.png',
                  text: 'VERIFY',
                  textSize: 16,
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
