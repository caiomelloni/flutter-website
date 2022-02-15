import 'package:deposito_nelinho/constants.dart';
import 'package:deposito_nelinho/controllers/main_screen_controller.dart';
import 'package:deposito_nelinho/style/fonts.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class WebMenu extends StatelessWidget {
  final bool isScrolled;
  const WebMenu({
    this.isScrolled = false,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MainScreenController>(context, listen: false);

    return SizedBox(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          WebItem(
            title: 'início',
            onPressed: () {
              provider.scrollToSection(provider.getStartKey);
            },
            isScrolled: isScrolled,
          ),
          const SizedBox(width: 30),
          WebItem(
            title: 'contato',
            onPressed: () {
              provider.scrollToSection(provider.getContactKey);
            },
            isScrolled: isScrolled,
          ),
          const SizedBox(width: 30),
          WebItem(
            title: 'localização',
            onPressed: () {
              provider.scrollToSection(provider.getLocationKey);
            },
            isScrolled: isScrolled,
          ),
        ],
      ),
    );
  }
}

class WebItem extends StatelessWidget {
  final bool isScrolled;
  final String title;
  final VoidCallback onPressed;
  const WebItem({
    Key? key,
    required this.title,
    required this.onPressed,
    required this.isScrolled,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isActive = context
            .select((MainScreenController c) => c.getSelectecMenuItemTitle) ==
        title;

    return InkWell(
      onTap: () {
        Provider.of<MainScreenController>(context, listen: false)
            .setSelectedMenuItemTitle = title;
        onPressed();
      },
      hoverColor: Colors.transparent,
      child: Padding(
        padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
        child: AnimatedContainer(
          duration: kDefaultDuration,
          decoration: isActive
              ? const BoxDecoration(
                  border: Border(
                    bottom: BorderSide(color: kSecondaryRed, width: 1.5),
                  ),
                )
              : const BoxDecoration(
                  border: Border(
                    bottom: BorderSide(color: Colors.transparent, width: 1.5),
                  ),
                ),
          child: Text(
            title,
            style: googleFont(
              fontFamily: kBodyFont,
              style: TextStyle(
                fontSize: kDefaultFontSize * 1.5,
                color: menuItemTextColor(isActive, isScrolled),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

Color menuItemTextColor(bool isActive, bool isScrolled) {
  if (isActive) return kPrimaryRed;
  if (!isScrolled) return kHighlightBlackText;
  return Colors.white;
}
