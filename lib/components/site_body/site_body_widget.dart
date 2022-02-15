import 'package:deposito_nelinho/components/site_body/adress_section.dart';
import 'package:deposito_nelinho/components/site_body/contact_section.dart';
import 'package:deposito_nelinho/components/site_body/introduction_section.dart';
import 'package:deposito_nelinho/components/site_body/section_padding.dart';
import 'package:deposito_nelinho/controllers/main_screen_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SiteBody extends StatelessWidget {
  const SiteBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MainScreenController>(context, listen: false);

    return Column(
      children: [
        SectionPaddingWidget(
          child: IntroductionSection(key: provider.getStartKey),
        ),
        SectionPaddingWidget(
          child: ContactSection(key: provider.getContactKey),
        ),
        SectionPaddingWidget(
          child: AdressSection(key: provider.getLocationKey),
        )
      ],
    );
  }
}
