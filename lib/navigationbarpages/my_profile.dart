import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:yummer/logins/sign_in_page.dart';
import 'package:yummer/profiles/my_address.dart';
import 'package:yummer/profiles/my_favorite.dart';
import 'package:yummer/profiles/my_promocodes.dart';
import 'package:yummer/profiles/payment_method.dart';
import 'package:yummer/widgets/app_assets_colors.dart';
import 'package:yummer/widgets/app_medium_text.dart';
import 'package:yummer/widgets/app_text.dart';
import '../widgets/app_large_text.dart';
import '../profiles/edit_profiles.dart';
import '../profiles/order_history.dart';

class ImageListModel {
  final String image;
  final String text1;
  final Widget page;

  ImageListModel({
    required this.image,
    required this.text1,
    required this.page,
  });
}

class MyProfile extends StatefulWidget {
  const MyProfile({super.key});

  @override
  State<MyProfile> createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {

  final List<ImageListModel> listtile = [
    ImageListModel(
        image: 'assets/icons/lists/calendar.png',
        text1: 'Order History',
        page: OrderHistory()),
    ImageListModel(
        image: 'assets/icons/lists/credit-card.png',
        text1: 'Payment Method',
        page: PaymentMethod()),
    ImageListModel(
        image: 'assets/icons/lists/map-pin.png',
        text1: 'My Address',
        page: MyAddress()),
    ImageListModel(
        image: 'assets/icons/lists/gift.png',
        text1: 'My Promocodes',
        page: MyPromoCodes()),
    ImageListModel(
        image: 'assets/icons/lists/heart.png',
        text1: 'My Favourite',
        page: MyFavorite()),
    ImageListModel(
        image: 'assets/icons/lists/log-out.png',
        text1: 'Sign Out',
        page: SignInPage()),
  ];

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {

    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
        body: Container(
          color: AppColors.bodyColor,
          child: Column(
            children: [
              Container(
                height: screenHeight * 0.32,
                child: Stack(
                  clipBehavior: Clip .none,
                  children: [
                    Container(
                        width: screenWidth * 1,
                        height: screenHeight * 0.23,
                        child: Image.asset(
                          'assets/profile/profileone.png',
                          fit: BoxFit.cover,
                        )),
                    Positioned(
                        top: screenHeight * 0.09,
                        left: screenHeight * 0.04,
                        child: AppLargeText(
                          text: 'My Profile',
                          color: Colors.white,
                          size: 24,
                        )),
                    Positioned(
                      left: screenWidth * 0.08,
                      right: screenWidth * 0.08,
                      top: screenHeight * 0.17,
                      child: Container(
                        width: screenWidth,
                        height: screenHeight * 0.12,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                color: Color.fromRGBO(6, 38, 100, 0.1),
                                blurRadius: 7,
                                offset: Offset(0, 4))
                          ],
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(
                              left: screenWidth * 0.05,
                              right: screenWidth * 0.05),
                          child: Row(
                            children: [
                              CircleAvatar(
                                radius: 35,
                                backgroundColor: AppColors.mainColor,
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                    left: screenWidth * 0.04,
                                    top: screenHeight * 0.03),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    AppMediumText(
                                      text: 'Kristin Watson',
                                      size: 18,
                                    ),
                                    AppText(
                                      text: 'kristinwatson@mail.com',
                                      size: 14,
                                      color: AppColors.textColor,
                                    )
                                  ],
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => EditProfile()));
                                },
                                child: Padding(
                                  padding: EdgeInsets.only(
                                      left: screenWidth * 0.06,
                                      top: screenHeight * 0.02),
                                  child: Align(
                                    alignment: Alignment.topLeft,
                                    child: ImageIcon(
                                      AssetImage(
                                        'assets/icons/profileicon.png',
                                      ),
                                      size: 20,
                                      color: AppColors.textColor,
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: screenWidth * 0.08, right: screenWidth * 0.08),
                child: Container(
                  height: screenHeight * 0.52,
                  child: ListView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: listtile.length,
                      itemBuilder: (context, index) {
                        return Container(
                          height: screenHeight * 0.08,
                          child: Column(
                            children: [
                              ListTile(
                                leading: Image.asset(
                                  listtile[index].image,
                                  width: 25,
                                  height: 25,
                                  fit: BoxFit.cover,
                                  color: AppColors.textColor,
                                ),
                                title: Text(
                                  listtile[index].text1,
                                  style:
                                      TextStyle(fontWeight: FontWeight.w500),
                                ),
                                trailing: index < listtile.length - 1
                                    ? ImageIcon(
                                        AssetImage(
                                            'assets/icons/chevron-right.png'),
                                        size: 14,
                                        color: AppColors.textColor,
                                      )
                                    : null,
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              listtile[index].page));
                                },
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                    left: screenWidth * 0.14,
                                    right: screenHeight * 0.04),
                                child: Divider(
                                  color: AppColors.textColor,
                                  thickness: 0.3,
                                  height: 6,
                                ),
                              ),
                            ],
                          ),
                        );
                      }),
                ),
              )
            ],
          ),
        ),

        // bottomNavigationBar: Container(
        //   height: screenHeight * 0.12,
        //   child: Theme(
        //     data: ThemeData(
        //         splashColor: Colors.transparent,
        //         highlightColor: Colors.transparent
        //     ),
        //     child: BottomNavigationBar(
        //       selectedFontSize: 12,
        //       unselectedFontSize: 12,
        //       backgroundColor: Colors.white,
        //       type: BottomNavigationBarType.fixed,
        //       selectedItemColor: AppColors.primaryColor,
        //       unselectedItemColor: AppColors.textColor,
        //       currentIndex: _currentIndex,
        //       onTap: (index) {
        //         setState(() {
        //           _currentIndex = index;
        //         });
        //       },
        //       items: [
        //         BottomNavigationBarItem(
        //           icon: ImageIcon(
        //             AssetImage('assets/icons/navigationbar/home.png'),
        //             size: 24, // Adjust size as needed
        //             color: _currentIndex == 0
        //                 ? AppColors.primaryColor
        //                 : AppColors.textColor,
        //           ),
        //           label: 'Home',
        //         ),
        //         BottomNavigationBarItem(
        //           icon: ImageIcon(
        //             AssetImage('assets/icons/navigationbar/search.png'),
        //             size: 24, // Adjust size as needed
        //             color: _currentIndex == 1
        //                 ? AppColors.primaryColor
        //                 : AppColors.textColor,
        //           ),
        //           label: 'Search',
        //         ),
        //         BottomNavigationBarItem(
        //           icon: ImageIcon(
        //             AssetImage('assets/icons/navigationbar/bag.png'),
        //             size: 24, // Adjust size as needed
        //             color: _currentIndex == 2
        //                 ? AppColors.primaryColor
        //                 : AppColors.textColor,
        //           ),
        //           label: 'Order',
        //         ),
        //         BottomNavigationBarItem(
        //           icon: ImageIcon(
        //             AssetImage('assets/icons/navigationbar/user.png'),
        //             size: 24, // Adjust size as needed
        //             color: _currentIndex == 3
        //                 ? AppColors.primaryColor
        //                 : AppColors.textColor,
        //           ),
        //           label: 'Profile',
        //         ),
        //       ],
        //     ),
        //   ),
        // )
    );
  }
}
