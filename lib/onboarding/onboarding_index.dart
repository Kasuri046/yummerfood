import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../logins/sign_in_page.dart';
import '../models/onboarding/onboarding_model.dart';
import '../providers/provider_onboarding.dart';
import '../widgets/app_assets_colors.dart';
import '../widgets/app_large_text.dart';
import '../widgets/app_text.dart';
import '../widgets/customs_ buttons.dart';

class OnboardingScreen extends StatefulWidget {
  OnboardingScreen({super.key});

  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final CarouselSliderController _carouselSliderController =
      CarouselSliderController();

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    final double screenWidth = screenSize.width;
    final double screenHeight = screenSize.height;

    return Scaffold(
      body: Consumer<OnboardingModelProvider>(
        builder: (context, provider, child) {

          final currentIndex = provider.pageIndex;
          final backgroundColor = onboardingList[currentIndex].color;
          final bool isLastPage = currentIndex == onboardingList.length - 1;

          void handleButtonTap() {
            if (isLastPage) {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SignInPage()),
              );
            } else {
              _carouselSliderController.nextPage(
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeIn,
              );
            }
          }

          void handleBackButtonTap() {
            if (currentIndex > 0) {
              _carouselSliderController.previousPage(
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeIn,
              );
            }
          }

          void handleSkipTap() {
            if (!isLastPage) {
              _carouselSliderController.animateToPage(
                onboardingList.length - 1,
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeIn,
              );
            }
          }

          return Container(
            color: backgroundColor,
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    top: screenWidth > 600
                        ? screenHeight * 0.03
                        : screenHeight * 0.04,
                    left: screenWidth > 600
                        ? screenWidth * 0.02
                        : screenWidth * 0.05,
                    right: screenWidth > 600
                        ? screenWidth * 0.02
                        : screenWidth * 0.05,
                  ),
                  child: Container(
                    height: 40,
                    child: Row(
                      children: [
                        // Show back arrow only if not on the first page
                        if (currentIndex > 0)
                          Padding(
                            padding: EdgeInsets.only(top: 3),
                            child: IconButton(
                              onPressed: handleBackButtonTap,
                              icon: Icon(
                                Icons.arrow_back_ios_new,
                                size: 17,
                              ),
                            ),
                          ),
                        Spacer(),
                        // Show skip text only if not on the last page
                        if (!isLastPage)
                          AppText(
                            text: 'Skip',
                            color: AppColors.primaryColor,
                          ),
                        if (!isLastPage)
                          Padding(
                            padding: EdgeInsets.only(top: 3),
                            child: IconButton(
                              onPressed: handleSkipTap,
                              icon: Icon(
                                Icons.arrow_forward_ios_outlined,
                                color: AppColors.primaryColor,
                                size: 12,
                              ),
                            ),
                          ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: screenHeight * 0.02),
                  child: Container(
                    width: screenWidth,
                    height: screenHeight * 0.40,
                    child: CarouselSlider(
                      items: onboardingList.map((model) {
                        return Builder(
                          builder: (BuildContext context) {
                            return Container(
                              width: screenWidth * 0.84,
                              child: Image.asset(
                                model.image,
                              ),
                            );
                          },
                        );
                      }).toList(),
                      options: CarouselOptions(
                        height: 400,
                        aspectRatio: 16 / 9,
                        viewportFraction: 1.0,
                        initialPage: 0,
                        enableInfiniteScroll: false,
                        reverse: false,
                        autoPlay: false,
                        enlargeCenterPage: true,
                        enlargeFactor: 0.3,
                        onPageChanged: provider.callbackFunction,
                        scrollDirection: Axis.horizontal,
                      ),
                      carouselController: _carouselSliderController,
                    ),
                  ),
                ),
                SizedBox(
                  height: screenHeight * 0.03,
                ),
                GestureDetector(
                  onHorizontalDragEnd: (details) {
                    if (details.velocity.pixelsPerSecond.dx > 0) {
                      // Swipe right
                      if (currentIndex > 0) {
                        _carouselSliderController.previousPage(
                          duration: const Duration(milliseconds: 300),
                          curve: Curves.easeIn,
                        );
                      }
                      // Do nothing if already at the first index
                    } else if (details.velocity.pixelsPerSecond.dx < 0) {
                      // Swipe left
                      if (currentIndex < onboardingList.length - 1) {
                        _carouselSliderController.nextPage(
                          duration: const Duration(milliseconds: 300),
                          curve: Curves.easeIn,
                        );
                      }
                      // Do nothing if already at the last index
                    }
                  },
                  child: Container(
                    height: screenHeight * 0.27,
                    width: screenWidth * 0.85,
                    color: onboardingList[currentIndex].color,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: screenWidth * 0.85,
                          height: screenWidth > 600
                              ? screenHeight * 0.06
                              : screenHeight * 0.07,
                          child: AppLargeText(
                            text: onboardingList[currentIndex].text1,
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Container(
                          height: screenHeight * 0.10,
                          child: AppText(
                            text: onboardingList[currentIndex].text2,
                            textAlign: TextAlign.center,
                            color: AppColors.textColor,
                          ),
                        ),
                        SizedBox(height: screenHeight * 0.01),
                        Container(
                          width: screenWidth > 600
                              ? screenWidth * 0.08
                              : screenWidth * 0.19,
                          height: screenWidth > 600
                              ? screenHeight * 0.02
                              : screenHeight * 0.01,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: List.generate(
                                onboardingList.length, (indexDots) {
                              return Container(
                                margin: EdgeInsets.only(right: 11),
                                width:
                                    screenWidth > 600 ? screenWidth * 0.010 : 8,
                                height: screenWidth > 600
                                    ? screenWidth * 0.010
                                    : screenWidth * 0.03,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: currentIndex == indexDots
                                      ? AppColors.primaryColor
                                      : Colors.white,
                                  border: Border.all(
                                    color: AppColors.primaryColor,
                                    width: 1.5,
                                  ),
                                ),
                              );
                            }),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: screenWidth > 600
                      ? screenHeight * 0.05
                      : screenHeight * 0.07,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 25, right: 25),
                  child: CustomButtons(
                    text: isLastPage ? 'Get Started' : 'NEXT',
                    onPressed: handleButtonTap,
                    buttonHeight: 50,
                    buttonWidth: screenWidth,
                    isBold: false,
                    textSize: 13,
                    textColor: Colors.white,
                    imagePath: 'assets/button/btn.png',
                    imageBorderRadius: 5,
                    borderRadius: 20.0,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
