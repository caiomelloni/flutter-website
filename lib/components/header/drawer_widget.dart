import 'package:deposito_nelinho/constants.dart';
import 'package:deposito_nelinho/controllers/main_screen_controller.dart';
import 'package:deposito_nelinho/style/fonts.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MainScreenController>(context, listen: false);

    return Drawer(
      child: Container(
        color: kSecondaryRed,
        child: ListView(
          children: [
            DrawerHeader(
              child: Center(
                child: Text(
                  'Nelinho',
                  style: googleFont(
                      fontFamily: 'Lobster',
                      style: const TextStyle(
                          color: Colors.white, fontSize: kDefaultFontSize * 4)),
                ),
              ),
            ),
            DrawerItem(
              title: 'início',
              press: () {
                provider.scrollToSection(provider.getStartKey);
                Navigator.pop(context);
              },
            ),
            DrawerItem(
              title: 'contato',
              press: () {
                provider.scrollToSection(provider.getContactKey);
                Navigator.pop(context);
              },
            ),
            DrawerItem(
              title: 'localização',
              press: () {
                provider.scrollToSection(provider.getLocationKey);
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}

class DrawerItem extends StatelessWidget {
  final String title;
  final VoidCallback press;

  const DrawerItem({
    Key? key,
    required this.title,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isActive = context
            .select((MainScreenController c) => c.getSelectecMenuItemTitle) ==
        title;

    return SafeArea(
      child: Container(
        color: isActive ? Colors.white : null,
        child: ListTile(
          contentPadding:
              const EdgeInsets.symmetric(horizontal: kDefaultPadding),
          onTap: () {
            Provider.of<MainScreenController>(context, listen: false)
                .setSelectedMenuItemTitle = title;
            press();
          },
          title: Text(
            title,
            style: googleFont(
                fontFamily: kBodyFont,
                style: TextStyle(
                    color: isActive ? kHighlightBlackText : Colors.white,
                    fontSize: kDefaultFontSize * 2)),
          ),
        ),
      ),
    );
  }
}
