import 'package:deposito_nelinho/components/outlined_button_widget.dart';
import 'package:deposito_nelinho/components/section_title_widget.dart';
import 'package:deposito_nelinho/constants.dart';
import 'package:deposito_nelinho/responsive.dart';
import 'package:deposito_nelinho/style/fonts.dart';
import 'package:flutter/material.dart';
import 'dart:html' as html;

class ContactSection extends StatelessWidget {
  const ContactSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SectionTitleWidget(redText: "Entre em contato", blackText: ''),
        const SizedBox(height: kDefaultPadding * 2),
        Responsive.isDesktop(context)
            ? Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: getSubSections(context),
              )
            : Container(
                constraints: const BoxConstraints(maxHeight: 400),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: getSubSections(context),
                ),
              )
      ],
    );
  }
}

List<Widget> getSubSections(BuildContext context) {
  double width = MediaQuery.of(context).size.width;

  return [
    Expanded(
      child: Column(
        children: [
          Text(
            'Faça seu pedido pela nossa loja virtual',
            textAlign: TextAlign.center,
            style: googleFont(
              fontFamily: kBodyFont,
              style: const TextStyle(
                  color: kDefaultTextColor, fontSize: kDefaultFontSize * 1.5),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 50),
            child: FittedBox(
              child: OutlinedButtonWidget(
                text: 'Comprar Online',
                fontSize: kDefaultFontSize * 1.5,
                padding: kDefaultPadding,
                onPressed: () {
                  html.window.open('https://wa.me/5511985299144', "_blank");
                },
              ),
            ),
          )
        ],
      ),
    ),
    if (width > 1131)
      Flexible(
        child: Center(
          child: Text(
            'Ou',
            style: googleFont(
              fontFamily: 'Lobster',
              style: const TextStyle(
                  fontSize: kDefaultFontSize * 4, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    Expanded(
      child: Column(
        children: [
          Text(
            'Fale com nossos atendentes pelo Whatsapp',
            textAlign: TextAlign.center,
            style: googleFont(
              fontFamily: kBodyFont,
              style: const TextStyle(
                  color: kDefaultTextColor, fontSize: kDefaultFontSize * 1.5),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Container(
              constraints: const BoxConstraints(maxWidth: 350),
              child: Row(
                mainAxisAlignment: width > 1131
                    ? MainAxisAlignment.spaceBetween
                    : MainAxisAlignment.spaceAround,
                children: [
                  const Icon(Icons.message, size: 50),
                  Text(
                    '(11) 99465-6439',
                    style: googleFont(
                      fontFamily: kBodyFont,
                      style: TextStyle(
                          color: kDefaultTextColor,
                          fontSize: Responsive.isMobile(context)
                              ? kDefaultFontSize * 1.5
                              : kDefaultFontSize * 2.5),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    )
  ];
}
