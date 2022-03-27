import 'package:flutter/material.dart';
import 'package:slicing_nft/theme.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: darkColor,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Image.asset('assets/img_account_bg.png'),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  margin: const EdgeInsets.only(top: 32),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CircleAvatar(
                        backgroundColor: darkColor,
                        child: Icon(Icons.share),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 178),
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(
                        'assets/profil_verified7.png',
                        width: 88,
                      ),
                      Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            border: Border.all(color: whiteColor, width: 2),
                            color: darkColor,
                            borderRadius: BorderRadius.circular(15)),
                        child: Text(
                          'Edit Profile',
                          style: whiteTextStyle.copyWith(
                              fontWeight: bold, fontSize: 16),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            Container(
              margin: const EdgeInsets.only(top: 10),
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Kevin",
                    style:
                        whiteTextStyle.copyWith(fontSize: 24, fontWeight: bold),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.copy,
                            color: primaryColor,
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Text(
                            '0x841a...8a57',
                            style: whiteTextStyle,
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Image.asset(
                            'assets/icon_world.png',
                            width: 24,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Image.asset(
                            'assets/icon_instagram.png',
                            width: 24,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Image.asset(
                            'assets/icon_twitter.png',
                            width: 24,
                          ),
                        ],
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 26,
                  ),
                  Text(
                    'Sell anything',
                    style: grayTextStyle,
                  ),
                  const SizedBox(
                    height: 55,
                  ),
                  Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(right: 10),
                        child: Row(
                          children: [
                            Text(
                              '54',
                              style: whiteTextStyle,
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Text(
                              'Items Total',
                              style: grayTextStyle,
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(right: 10),
                        child: Row(
                          children: [
                            Text(
                              '3,74K',
                              style: whiteTextStyle,
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Text(
                              'Views',
                              style: grayTextStyle,
                            )
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            '1,2K',
                            style: whiteTextStyle,
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Text(
                            'Liked',
                            style: grayTextStyle,
                          )
                        ],
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
