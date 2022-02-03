import 'package:deposito_nelinho/constants.dart';
import 'package:deposito_nelinho/responsive.dart';
import 'package:deposito_nelinho/style/fonts.dart';
import 'package:flutter/material.dart';

class SectionTitleWidget extends StatelessWidget {
  final String redText;
  final String blackText;
  const SectionTitleWidget({
    Key? key,
    required this.redText,
    required this.blackText,
  }) : super(key: key);

  double getFontSize(BuildContext ctx) {
    if (Responsive.isDesktop(ctx)) {
      return kDefaultFontSize * 4;
    }
    if (Responsive.isTablet(ctx)) {
      return kDefaultFontSize * 3;
    }

    return kDefaultFontSize * 2;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Transform.translate(
          offset: const Offset(-20, 35),
          child: Transform.rotate(
            angle: 40,
            child: Container(
              width: 50,
              height: 10,
              color: kLightYellow,
            ),
          ),
        ),
        Transform.translate(
          offset: const Offset(-25, 40),
          child: Transform.rotate(
            angle: 40,
            child: Container(
              width: 50,
              height: 10,
              color: kDarkYellow,
            ),
          ),
        ),
        RichText(
          text: TextSpan(
              style: googleFont(
                fontFamily: kBodyFont,
                style: TextStyle(fontSize: getFontSize(context)),
              ),
              children: [
                TextSpan(
                  text: redText,
                  style: const TextStyle(color: kSecondaryRed),
                ),
                TextSpan(
                  text: blackText,
                  style: const TextStyle(color: kHighlightBlackText),
                ),
              ]),
        )
      ],
    );
  }
}
