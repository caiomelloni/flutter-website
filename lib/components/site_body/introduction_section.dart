import 'package:deposito_nelinho/components/outlined_button_widget.dart';
import 'package:deposito_nelinho/components/section_title_widget.dart';
import 'package:deposito_nelinho/constants.dart';
import 'package:deposito_nelinho/responsive.dart';
import 'package:deposito_nelinho/style/fonts.dart';
import 'package:flutter/material.dart';

class IntroductionSection extends StatelessWidget {
  const IntroductionSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SectionTitleWidget(
          redText: 'Depósito de materiais ',
          blackText: 'para construção ideal para a sua obra',
        ),
        const SizedBox(height: kDefaultPadding * 1.5),
        Text(
          'Atendemos em Itaquecetuba e região. Há mais de 20 anos trabalhamos com qualidade para  entregar tudo o que é necessário para satisfazer as demandas das obras de nossos clientes.',
          style: googleFont(
            fontFamily: kBodyFont,
            style: TextStyle(
                fontSize: Responsive.isDesktop(context)
                    ? kDefaultFontSize * 1.5
                    : kDefaultFontSize,
                color: kDefaultTextColor),
          ),
        ),
        const SizedBox(height: kDefaultPadding * 2),
        FittedBox(
          child: OutlinedButtonWidget(
            padding: 10,
            fontSize: kDefaultFontSize * 1.5,
            text: 'Faça um pedido',
            onPressed: () {},
          ),
        )
      ],
    );
  }
}
