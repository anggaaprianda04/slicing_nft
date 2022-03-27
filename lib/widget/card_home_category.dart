import 'package:flutter/material.dart';
import 'package:slicing_nft/theme.dart';

class CardHomeCategory extends StatelessWidget {
  final String title;
  final Color color;

  const CardHomeCategory({Key? key, required this.title, required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 16),
      padding: const EdgeInsets.symmetric(horizontal: 31, vertical: 12),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
        child: Text(
          title,
          style: whiteTextStyle.copyWith(fontWeight: bold),
        ),
      ),
    );
  }
}
