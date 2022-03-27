import 'package:flutter/material.dart';
import 'package:slicing_nft/theme.dart';
import 'package:slicing_nft/widget/card_rangkings.dart';

class StatsPage extends StatelessWidget {
  const StatsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TabBar myTab = TabBar(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      indicatorColor: primaryColor,
      tabs: <Widget>[
        Tab(
          child: Text(
            'Rangkins',
            style: whiteTextStyle.copyWith(fontSize: 20, fontWeight: bold),
          ),
        ),
        Tab(
          child: Text(
            'Activity',
            style: whiteTextStyle.copyWith(fontSize: 20, fontWeight: bold),
          ),
        ),
      ],
    );

    return SafeArea(
      child: DefaultTabController(
          length: 2,
          initialIndex: 0,
          child: Scaffold(
            backgroundColor: darkColor,
            appBar: AppBar(
              toolbarHeight: 120.0,
              backgroundColor: darkColor,
              elevation: 0,
              title: Text(
                'Stats',
                style: whiteTextStyle.copyWith(fontWeight: bold, fontSize: 34),
              ),
              bottom: PreferredSize(
                child: Container(
                  color: darkColor,
                  child: myTab,
                ),
                preferredSize: Size.fromHeight(myTab.preferredSize.height),
              ),
            ),
            body: TabBarView(children: [
              SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Container(
                  margin: const EdgeInsets.only(top: 24),
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  width: double.infinity,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                              height: 45,
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 5),
                              decoration: BoxDecoration(
                                color: secondaryColor,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Row(
                                children: [
                                  Text(
                                    'All Categories',
                                    style: grayTextStyle.copyWith(fontSize: 18),
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  Icon(
                                    Icons.arrow_drop_down,
                                    size: 26,
                                    color: grayLightColor,
                                  )
                                ],
                              )),
                          Container(
                              height: 45,
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 15, vertical: 5),
                              decoration: BoxDecoration(
                                color: secondaryColor,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Row(
                                children: [
                                  Text(
                                    'All Chains',
                                    style: grayTextStyle.copyWith(fontSize: 18),
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  Icon(
                                    Icons.arrow_drop_down,
                                    size: 26,
                                    color: grayLightColor,
                                  )
                                ],
                              )),
                        ],
                      ),
                      const SizedBox(
                        height: 32,
                      ),
                      CardRangkins(
                        number: '01',
                        imgUrl: 'assets/profil_verified3.png',
                        title: 'Bored Ape Yacht Club',
                        colorText: successTextStyle,
                        percentase: '11,3%',
                      ),
                      CardRangkins(
                        number: '02',
                        imgUrl: 'assets/profil_verified4.png',
                        title: 'Cryptopunks',
                        colorText: dangerTextStyle,
                        percentase: '-11,3%',
                      ),
                      CardRangkins(
                        number: '03',
                        imgUrl: 'assets/profil_verified5.png',
                        title: 'Meebits',
                        colorText: dangerTextStyle,
                        percentase: '-40,3%',
                      ),
                      CardRangkins(
                        number: '04',
                        imgUrl: 'assets/profil_verified6.png',
                        title: '404',
                        colorText: dangerTextStyle,
                        percentase: '-40,3%',
                      ),
                    ],
                  ),
                ),
              ),
              Center(
                child: Text(
                  'Page Activity',
                  style: grayTextStyle,
                ),
              ),
            ]),
          )),
    );
  }
}
