import 'package:flutter/material.dart';
import 'package:slicing_nft/theme.dart';

class CardProductPopular extends StatelessWidget {
  final String imgUrl;
  final String imgVerified;

  const CardProductPopular(
      {Key? key, required this.imgUrl, required this.imgVerified})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      margin: const EdgeInsets.only(right: 16),
      height: 394,
      width: 267,
      decoration: BoxDecoration(
        color: secondaryColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  imgUrl,
                  width: double.infinity,
                  height: 259,
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 11),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 48,
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(7),
                            color: Colors.black.withOpacity(0.5)),
                        child: Center(
                          child: Text(
                            'Art',
                            style: whiteTextStyle,
                          ),
                        ),
                      ),
                      Icon(
                        Icons.favorite_outline,
                        color: darkColor,
                      )
                    ],
                  )),
            ],
          ),
          const SizedBox(
            height: 24,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Mosu #1930',
                style:
                    whiteTextStyle.copyWith(fontSize: 16, fontWeight: medium),
              ),
              Row(
                children: [
                  Icon(Icons.av_timer, color: grayLightColor),
                  const SizedBox(width: 5),
                  Text(
                    '102d Left',
                    style: grayTextStyle,
                  )
                ],
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(children: [
                Image.asset(
                  imgVerified,
                  fit: BoxFit.cover,
                  width: 32,
                ),
                const SizedBox(
                  width: 8,
                ),
                Text(
                  'karafuru',
                  style: grayTextStyle.copyWith(fontSize: 12),
                )
              ]),
              Container(
                width: 86,
                height: 40,
                padding: const EdgeInsets.all(
                  5,
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(17),
                    border: Border.all(
                      color: primaryColor,
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
                      '2,75 ETH',
                      style: whiteTextStyle.copyWith(
                        fontSize: 12,
                        fontWeight: medium,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
