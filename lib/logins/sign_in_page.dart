import 'package:flutter/material.dart';
import 'package:yummer/logins/sign_up_page.dart';
import 'package:yummer/navigationbarpages/my_profile.dart';
import 'package:yummer/widgets/app_text.dart';
import '../navigationbar/navigation_menu.dart';
import '../widgets/customs_ buttons.dart';
import 'forgot_password.dart';
import '../widgets/app_assets_colors.dart';
import '../widgets/text_fields.dart'; // Import your custom text fields

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  bool _isPasswordVisible = false;

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    final double screenWidth = screenSize.width;

    return Scaffold(
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus(); // Dismiss the keyboard when tapping outside
        },
        child: Padding(
          padding: const EdgeInsets.only(left: 25, right: 25, top: 80),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Sign In',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 20),
                buildTextField(
                  controller: _emailController,
                  labelText: 'Email',
                  hintText: 'kristinwatson@mail.com',
                  isPassword: false,
                  onChanged: (value) {
                    setState(() {}); // Trigger a rebuild to update icon color
                  },
                ),
                SizedBox(height: 20),
                buildPasswordField(
                  controller: _passwordController,
                  labelText: 'Password',
                  hintText: '*********',
                  isVisible: _isPasswordVisible,
                  toggleVisibility: () {
                    setState(() {
                      _isPasswordVisible = !_isPasswordVisible; // Toggle visibility
                    });
                  },
                  onChanged: (value) {
                    setState(() {}); // Trigger a rebuild to update icon color
                  },
                ),
                SizedBox(height: 25),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ForgotPassword(),
                          ),
                        );
                      },
                      child: AppText(
                        text: 'Forgot Your Password?',
                        color: AppColors.primaryColor,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 25),
                CustomButtons(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => NavigationMenu()),
                    );
                  },
                  buttonHeight: 50,
                  buttonWidth: screenWidth,
                  isBold: true,
                  textColor: Colors.white,
                  borderRadius: 20,
                  imagePath: 'assets/button/btn.png',
                  text: 'SIGN IN',
                  textSize: 16,
                ),
                SizedBox(height: 25),
                Row(
                  children: [
                    AppText(
                      text: 'Don\'t have an account?  ',
                      color: AppColors.textColor,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SignUpPage(),
                          ),
                        );
                      },
                      child: AppText(
                        text: 'Sign up.',
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
      ),
    );
  }
}
