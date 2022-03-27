import 'package:flutter/material.dart';
import 'package:slicing_nft/page/account_page.dart';
import 'package:slicing_nft/page/home_page.dart';
import 'package:slicing_nft/page/main_page.dart';
import 'package:slicing_nft/page/search_page.dart';
import 'package:slicing_nft/page/stats_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/home-page': (context) => const HomePage(),
        '/search-page': (context) => const SearchPage(),
        '/stats-page': (context) => const StatsPage(),
        '/account-page': (context) => const AccountPage(),
      },
      home: const MainPage(),
    );
  }
}
