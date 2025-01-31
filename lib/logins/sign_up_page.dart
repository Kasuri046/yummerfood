import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yummer/logins/sign_in_page.dart';
import 'package:yummer/widgets/app_text.dart';
import 'package:yummer/widgets/text_fields.dart'; // Import your custom text fields
import '../providers/signup_provider.dart';
import '../widgets/app_assets_colors.dart';
import '../widgets/customs_ buttons.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  // Create controllers for input fields
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController = TextEditingController();

  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    final double screenWidth = screenSize.width;

    return Scaffold(
      body: Consumer<SignUpModel>(
        builder: (context, signUpModel, child) {

          return GestureDetector(
            onTap: () {
              FocusScope.of(context).unfocus();
            },
            child: Padding(
              padding: const EdgeInsets.only(left: 25, right: 25, top: 80),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Sign Up',
                      style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 20),
                    buildTextField(
                      controller: nameController,
                      labelText: 'Name',
                      hintText: 'kristin Watson',
                      isPassword: false,
                      onChanged: signUpModel.updateName,
                    ),
                    SizedBox(height: 20),
                    buildTextField(
                      controller: emailController,
                      labelText: 'Email',
                      hintText: 'kristinwatson@mail.com',
                      isPassword: false,
                      onChanged: (value) {
                        signUpModel.updateEmail(value);
                      },
                    ),
                    SizedBox(height: 20),
                    buildPasswordField(
                      controller: passwordController,
                      labelText: 'Password',
                      hintText: '*********',
                      isVisible: signUpModel.isPasswordVisible,
                      toggleVisibility: () {
                        signUpModel.togglePasswordVisibility();
                      },
                      onChanged: (value) {
                        signUpModel.password = value;
                      },
                    ),
                    SizedBox(height: 20),
                    buildPasswordField(
                      controller: confirmPasswordController,
                      labelText: 'Confirm Password',
                      hintText: '*********',
                      isVisible: signUpModel.isConfirmPasswordVisible,
                      toggleVisibility: () {
                        signUpModel.toggleConfirmPasswordVisibility();
                      },
                      onChanged: (value) {
                        signUpModel.confirmPassword = value;
                      },
                    ),
                    SizedBox(height: 25),
                    CustomButtons(
                      onPressed: () {}, // Implement signup logic
                      buttonHeight: 50,
                      buttonWidth: screenWidth,
                      isBold: true,
                      textColor: Colors.white,
                      borderRadius: 20,
                      imagePath: 'assets/button/btn.png',
                      text: 'SIGN UP',
                      textSize: 16,
                    ),
                    SizedBox(height: 25),
                    Row(
                      children: [
                        AppText(
                          text: 'Already Have An Account?  ',
                          color: AppColors.textColor,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => SignInPage(),
                              ),
                            );
                          },
                          child: AppText(
                            text: 'Sign In.',
                            color: AppColors.primaryColor,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 70),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ImageIcon(
                          AssetImage('assets/icons/iconone.png'),
                          size: 55,
                          color: Color.fromRGBO(59, 85, 193, 1),
                        ),
                        SizedBox(width: 10),
                        ImageIcon(
                          AssetImage('assets/icons/icontwo.png'),
                          size: 55,
                          color: Color.fromRGBO(85, 172, 238, 1),
                        ),
                        SizedBox(width: 10),
                        ImageIcon(
                          AssetImage('assets/icons/iconthree.png'),
                          size: 55,
                          color: Color.fromRGBO(221, 75, 57, 1),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
