import 'package:deposito_nelinho/constants.dart';
import 'package:deposito_nelinho/style/fonts.dart';
import 'package:flutter/material.dart';

class OutlinedButtonWidget extends StatelessWidget {
  final String text;
  final double fontSize;
  final double padding;
  final VoidCallback onPressed;
  const OutlinedButtonWidget({
    Key? key,
    required this.text,
    required this.fontSize,
    required this.padding,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(primary: kDefaultTextColor),
      onPressed: onPressed,
      child: Padding(
        padding: EdgeInsets.all(padding),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              text,
              style: googleFont(
                fontFamily: kBodyFont,
                style: TextStyle(
                  color: kHighlightBlackText,
                  fontSize: fontSize,
                ),
              ),
            ),
            Icon(
              Icons.double_arrow,
              color: kHighlightBlackText,
              size: fontSize,
            ),
          ],
        ),
      ),
    );
  }
}
