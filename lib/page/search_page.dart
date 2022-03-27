import 'package:flutter/material.dart';
import 'package:slicing_nft/theme.dart';
import 'package:slicing_nft/widget/card_search_categories.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: const EdgeInsets.only(top: 35),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Search',
              style: whiteTextStyle.copyWith(fontSize: 34, fontWeight: bold),
            ),
            const SizedBox(
              height: 24,
            ),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: secondaryColor),
              child: Row(
                children: [
                  Icon(
                    Icons.search,
                    size: 24,
                    color: grayLightColor,
                  ),
                  const SizedBox(
                    width: 19,
                  ),
                  Text(
                    'Search your NFT....',
                    style: grayTextStyle.copyWith(fontWeight: medium),
                  )
                ],
              ),
            )
          ],
        ),
      );
    }

    Widget categories() {
      return Container(
        margin: const EdgeInsets.only(top: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Categories',
              style: whiteTextStyle.copyWith(fontSize: 20, fontWeight: bold),
            ),
            const SizedBox(
              height: 18,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: const [
                  CardSearchCategories(
                    imgUrl: 'assets/img_category1.png',
                    title: 'Art',
                  ),
                  CardSearchCategories(
                    imgUrl: 'assets/img_category2.png',
                    title: 'Collectibles',
                  ),
                  CardSearchCategories(
                    imgUrl: 'assets/img_category3.png',
                    title: 'Domain Names',
                  ),
                ],
              ),
            )
          ],
        ),
      );
    }

    Widget collections() {
      return Container(
        margin: const EdgeInsets.only(top: 36),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Featured Collections',
              style: whiteTextStyle.copyWith(fontSize: 20, fontWeight: bold),
            ),
            const SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image.asset(
                  'assets/frame1.png',
                  width: 150,
                ),
                Image.asset(
                  'assets/frame2.png',
                  width: 150,
                ),
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image.asset(
                  'assets/frame3.png',
                  width: 150,
                ),
                Image.asset(
                  'assets/frame4.png',
                  width: 150,
                ),
              ],
            ),
          ],
        ),
      );
    }

    return SafeArea(
      child: Scaffold(
        backgroundColor: darkColor,
        body: ListView(
          padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 24),
          children: [
            header(),
            categories(),
            collections(),
          ],
        ),
      ),
    );
  }
}
