import 'package:flutter/material.dart';
import 'package:slicing_nft/theme.dart';

class CardSearchCategories extends StatelessWidget {
  final String imgUrl;
  final String title;

  const CardSearchCategories(
      {Key? key, required this.title, required this.imgUrl})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 8),
      child: Column(children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.asset(
            imgUrl,
            width: 130,
            height: 96,
            fit: BoxFit.cover,
          ),
        ),
        Align(
          alignment: Alignment.topCenter,
          child: Text(
            title,
            textAlign: TextAlign.center,
            style: whiteTextStyle.copyWith(fontWeight: bold),
          ),
        )
      ]),
    );
  }
}
