import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yummer/navigationbar/provider_navigation.dart';
import '../navigationbarpages/home_page.dart';
import '../navigationbarpages/card_empty_21.dart';
import '../navigationbarpages/my_profile.dart';
import '../navigationbarpages/search_page.dart';
import '../widgets/app_assets_colors.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;

    final provider = Provider.of<NavigationProvider>(context);

    List<Widget> pages = [
      HomePage(),
      SearchPage(),
      EmptyCard(),
      MyProfile(),
    ];

    return Scaffold(
      body: pages[provider.currentIndex],
      bottomNavigationBar: Container(
        height: screenWidth > 600 ? screenHeight * 0.17 : screenHeight * 0.12,
        child: Theme(
          data: ThemeData(
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
          ),
          child: BottomNavigationBar(
            selectedFontSize: 12,
            unselectedFontSize: 12,
            backgroundColor: Colors.white,
            type: BottomNavigationBarType.fixed,
            selectedItemColor: AppColors.primaryColor,
            unselectedItemColor: AppColors.textColor,
            currentIndex: provider.currentIndex,
            onTap: (index) {
              provider.setIndex(index); // Update the index via provider
            },
            items: [
              BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage('assets/icons/navigationbar/home.png'),
                  size: 24,
                ),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage('assets/icons/navigationbar/search.png'),
                  size: 24,
                ),
                label: 'Search',
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage('assets/icons/navigationbar/bag.png'),
                  size: 24,
                ),
                label: 'Order',
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage('assets/icons/navigationbar/user.png'),
                  size: 24,
                ),
                label: 'Profile',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
