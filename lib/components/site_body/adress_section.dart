import 'package:deposito_nelinho/components/section_title_widget.dart';
import 'package:deposito_nelinho/constants.dart';
import 'package:deposito_nelinho/responsive.dart';
import 'package:deposito_nelinho/style/fonts.dart';
import 'package:flutter/material.dart';
import 'dart:html' as html;

class AdressSection extends StatelessWidget {
  const AdressSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SectionTitleWidget(
            redText: 'Conheça nossa loja física', blackText: ''),
        const SizedBox(height: kDefaultPadding * 2),
        GestureDetector(
          onTap: () {
            html.window.open('https://goo.gl/maps/QZ7E9jNpwzTva8H58', "_blank");
          },
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 800, maxHeight: 800),
            child: Image.asset('assets/mapa.jpg'),
          ),
        ),
        const SizedBox(height: kDefaultPadding),
        Text(
          'R. Rancharia, 54 - Jardim Amaral, Itaquaquecetuba - SP, 08587-220',
          style: googleFont(
            fontFamily: kBodyFont,
            style: TextStyle(
              color: kDefaultTextColor,
              fontSize: Responsive.isDesktop(context)
                  ? kDefaultFontSize * 1.5
                  : kDefaultFontSize,
            ),
          ),
        )
      ],
    );
  }
}
