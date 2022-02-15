import 'package:deposito_nelinho/components/header/mobile_menu_widget.dart';
import 'package:deposito_nelinho/components/header/web_menu.dart';
import 'package:deposito_nelinho/components/office_hours_widget.dart';
import 'package:deposito_nelinho/constants.dart';
import 'package:deposito_nelinho/responsive.dart';
import 'package:deposito_nelinho/style/fonts.dart';
import 'package:flutter/material.dart';

class HeaderWidget extends StatefulWidget {
  final ScrollController scrollController;
  const HeaderWidget(
    this.scrollController, {
    Key? key,
  }) : super(key: key);

  @override
  State<HeaderWidget> createState() => _HeaderWidgetState();
}

class _HeaderWidgetState extends State<HeaderWidget> {
  bool isScrolled = false;

  @override
  void initState() {
    widget.scrollController.addListener(() {
      double scrollPosition = widget.scrollController.position.pixels;
      if (scrollPosition == 0) {
        setState(() {
          isScrolled = false;
        });
      } else {
        setState(() {
          isScrolled = true;
        });
      }
    });

    super.initState();
  }

  @override
  void dispose() {
    widget.scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      decoration: BoxDecoration(
        color: isScrolled ? Colors.black : Colors.white,
      ),
      duration: kDefaultDuration,
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(width: 20),
          if (Responsive.isMobile(context) || Responsive.isTablet(context))
            MobileMenuWidget(isScrolled: isScrolled),
          Text(
            'Nelinho',
            style: googleFont(
              fontFamily: 'Lobster',
              style: const TextStyle(
                  color: kPrimaryRed, fontSize: (kDefaultFontSize * 4)),
            ),
          ),
          const Spacer(),
          if (Responsive.isDesktop(context)) WebMenu(isScrolled: isScrolled),
          const Spacer(),
          if (!Responsive.isMobile(context))
            Padding(
              padding: const EdgeInsets.only(top: 10, right: 50),
              child: OfficeHoursWidget(
                  textColor: isScrolled ? Colors.white : null),
            )
        ],
      ),
    );
  }
}
