import 'package:deposito_nelinho/components/site_body/contact_section.dart';
import 'package:deposito_nelinho/components/site_body/introduction_section.dart';
import 'package:deposito_nelinho/components/site_body/section_padding.dart';
import 'package:flutter/material.dart';

class SiteBody extends StatelessWidget {
  const SiteBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        SectionPaddingWidget(
          child: IntroductionSection(),
        ),
        SectionPaddingWidget(
          child: ContactSection(),
        )
      ],
    );
  }
}

