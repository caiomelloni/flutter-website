import 'package:deposito_nelinho/constants.dart';
import 'package:deposito_nelinho/responsive.dart';
import 'package:flutter/material.dart';

class SectionPaddingWidget extends StatelessWidget {
  final Widget child;
  const SectionPaddingWidget({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: Responsive.isDesktop(context)
              ? kDefaultPadding * 4
              : kDefaultPadding * 2,
          vertical: kDefaultPadding ),
      child: child,
    );
  }
}
