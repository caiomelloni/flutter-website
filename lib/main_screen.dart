import 'package:deposito_nelinho/constants.dart';
import 'package:deposito_nelinho/controllers/main_screen_controller.dart';
import 'package:deposito_nelinho/style/fonts.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    'Nelinho',
                    style: googleFont(
                      fontFamily: 'Lobster',
                      style: const TextStyle(
                          color: kPrimaryRed, fontSize: (kDefaultFontSize * 4)),
                    ),
                  ),
                  const WebMenu()
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class WebMenu extends StatelessWidget {
  const WebMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          WebItem(
            title: 'início',
            onPressed: () {},
          ),
          WebItem(
            title: 'contato',
            onPressed: () {},
          ),
          WebItem(
            title: 'localização',
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}

class WebItem extends StatefulWidget {
  final String title;
  final VoidCallback onPressed;
  const WebItem({
    Key? key,
    required this.title,
    required this.onPressed,
  }) : super(key: key);

  @override
  State<WebItem> createState() => _WebItemState();
}

class _WebItemState extends State<WebItem> {
  bool isActive = false;

  @override
  void initState() {
    isActive = Provider.of<MainScreenController>(context, listen: false)
            .getSelectecMenuItemTitle ==
        widget.title;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Provider.of<MainScreenController>(context, listen: false)
            .setSelectedMenuItemTitle = widget.title;

        setState(() {
          isActive = Provider.of<MainScreenController>(context, listen: false)
                  .getSelectecMenuItemTitle ==
              widget.title;
        });

        widget.onPressed();
      },
      child: AnimatedContainer(
        duration: kDefaultDuration,
        margin: const EdgeInsets.only(bottom: 10),
        decoration: (isActive
            ? const BoxDecoration(
                border: Border(
                  bottom: BorderSide(color: kSecondaryRed, width: 1.5),
                ),
              )
            : null),
        child: Text(
          widget.title,
          style: googleFont(
            fontFamily: kBodyFont,
            style: TextStyle(
              fontSize: kDefaultFontSize * 1.5,
              color: isActive
                  ? kSecondaryRed
                  : kHighlightBlackText,
            ),
          ),
        ),
      ),
    );
  }
}
