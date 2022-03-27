import 'package:flutter/material.dart';
import 'package:slicing_nft/theme.dart';
import 'package:slicing_nft/widget/card_home_category.dart';
import 'package:slicing_nft/widget/card_product_popular.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            width: 93,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: grayLightColor,
                  width: 2,
                ),
                color: darkColor),
            child: Row(
              children: [
                Image.asset(
                  'assets/icon_etherum.png',
                  width: 12,
                ),
                const SizedBox(
                  width: 12,
                ),
                Text(
                  '26,031',
                  style: whiteTextStyle.copyWith(
                    fontWeight: bold,
                  ),
                ),
              ],
            ),
          ),
          Image.asset('assets/profil1.png', width: 52),
        ],
      );
    }

    Widget category() {
      return Container(
        margin: const EdgeInsets.only(top: 39),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              CardHomeCategory(title: 'Trending', color: primaryColor),
              CardHomeCategory(title: 'Art', color: secondaryColor),
              CardHomeCategory(title: 'Gaming', color: secondaryColor),
              CardHomeCategory(title: 'Music', color: secondaryColor),
            ],
          ),
        ),
      );
    }

    Widget content() {
      return Container(
        margin: const EdgeInsets.only(top: 30),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: const [
              CardProductPopular(
                imgUrl: 'assets/img1.png',
                imgVerified: 'assets/profil_verified.png',
              ),
              CardProductPopular(
                imgUrl: 'assets/img4.png',
                imgVerified: 'assets/profil_verified2.png',
              ),
            ],
          ),
        ),
      );
    }

    Widget collection() {
      return Container(
        margin: const EdgeInsets.only(top: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Trending Collections',
              style: whiteTextStyle.copyWith(fontWeight: bold, fontSize: 24),
            ),
            const SizedBox(
              height: 16,
            ),
            Row(
              children: [
                Image.asset(
                  'assets/profil2.png',
                  width: 66,
                ),
                const SizedBox(
                  width: 24,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Ghozali Everyday',
                        style: whiteTextStyle.copyWith(fontWeight: medium),
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      Text(
                        'Ghozali_Ghozalu',
                        style: grayTextStyle.copyWith(fontSize: 12),
                      )
                    ],
                  ),
                ),
                Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          'assets/icon_etherum.png',
                          width: 12,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          '4,128',
                          style: whiteTextStyle.copyWith(fontWeight: bold),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Text(
                      '+23,00%',
                      style: grayTextStyle.copyWith(
                          fontSize: 12, color: successColor),
                    )
                  ],
                ),
              ],
            )
          ],
        ),
      );
    }

    return SafeArea(
      child: Scaffold(
        backgroundColor: darkColor,
        body: ListView(
          padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 24),
          children: [header(), category(), content(), collection()],
        ),
      ),
    );
  }
}
