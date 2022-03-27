import 'package:flutter/material.dart';
import 'package:slicing_nft/page/account_page.dart';
import 'package:slicing_nft/page/home_page.dart';
import 'package:slicing_nft/page/search_page.dart';
import 'package:slicing_nft/page/stats_page.dart';
import 'package:slicing_nft/theme.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    Widget customNavButton() {
      return BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: secondaryColor,
          currentIndex: currentIndex,
          onTap: (value) {
            setState(() {
              currentIndex = value;
            });
          },
          items: [
            BottomNavigationBarItem(
              label: '',
              icon: Container(
                margin: const EdgeInsets.only(top: 15),
                child: Icon(
                  Icons.home_filled,
                  size: 24,
                  color: currentIndex == 0 ? primaryColor : grayLightColor,
                ),
              ),
            ),
            BottomNavigationBarItem(
              label: '',
              icon: Container(
                margin: const EdgeInsets.only(top: 15),
                child: Icon(
                  Icons.search,
                  size: 24,
                  color: currentIndex == 1 ? primaryColor : grayLightColor,
                ),
              ),
            ),
            BottomNavigationBarItem(
              label: '',
              icon: Container(
                margin: const EdgeInsets.only(top: 15),
                child: Icon(
                  Icons.stacked_bar_chart,
                  size: 24,
                  color: currentIndex == 2 ? primaryColor : grayLightColor,
                ),
              ),
            ),
            BottomNavigationBarItem(
              label: '',
              icon: Container(
                margin: const EdgeInsets.only(top: 15),
                child: Icon(
                  Icons.account_circle_outlined,
                  size: 24,
                  color: currentIndex == 3 ? primaryColor : grayLightColor,
                ),
              ),
            ),
          ]);
    }

    Widget body() {
      switch (currentIndex) {
        case 0:
          return const HomePage();
        case 1:
          return const SearchPage();
        case 2:
          return const StatsPage();
        case 3:
          return const AccountPage();
        default:
          return const HomePage();
      }
    }

    return Scaffold(
      body: body(),
      bottomNavigationBar: customNavButton(),
    );
  }
}
