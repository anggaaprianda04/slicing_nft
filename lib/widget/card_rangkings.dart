import 'package:flutter/material.dart';
import 'package:slicing_nft/theme.dart';

class CardRangkins extends StatelessWidget {
  final String imgUrl;
  final String title;
  final String number;
  final String percentase;
  final TextStyle colorText;

  const CardRangkins({
    Key? key,
    required this.imgUrl,
    required this.title,
    required this.number,
    required this.percentase,
    required this.colorText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 11),
      decoration: BoxDecoration(
          color: secondaryColor, borderRadius: BorderRadius.circular(15)),
      width: double.infinity,
      child: Column(
        children: [
          Row(
            children: [
              Text(number,
                  style:
                      whiteTextStyle.copyWith(fontSize: 18, fontWeight: bold)),
              const SizedBox(
                width: 10,
              ),
              Image.asset(
                imgUrl,
                width: 45,
              ),
              const SizedBox(
                width: 10,
              ),
              Expanded(
                child: Text(
                  title,
                  overflow: TextOverflow.ellipsis,
                  style: whiteTextStyle.copyWith(fontWeight: medium),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Row(
                    children: [
                      Image.asset(
                        'assets/icon_etherum.png',
                        width: 8,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        '12339,71',
                        style: whiteTextStyle,
                      ),
                    ],
                  ),
                  Text(
                    '202,24%',
                    style: successTextStyle,
                  )
                ],
              )
            ],
          ),
          const SizedBox(
            height: 24,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '24h%',
                    style: grayTextStyle,
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Text(
                    percentase,
                    style: colorText,
                  )
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Floor Price',
                    style: grayTextStyle,
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Row(
                    children: [
                      Image.asset(
                        'assets/icon_etherum.png',
                        width: 8,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        '96,8',
                        style: whiteTextStyle,
                      ),
                    ],
                  )
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Owners',
                    style: grayTextStyle,
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Text(
                    '6,38K',
                    style: grayTextStyle,
                  )
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Items',
                    style: grayTextStyle,
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Text(
                    '10K',
                    style: grayTextStyle,
                  )
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
