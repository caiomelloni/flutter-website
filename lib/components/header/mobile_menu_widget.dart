import 'package:deposito_nelinho/constants.dart';
import 'package:deposito_nelinho/controllers/main_screen_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MobileMenuWidget extends StatelessWidget {
  const MobileMenuWidget({
    Key? key,
    required this.isScrolled,
  }) : super(key: key);

  final bool isScrolled;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          child: Icon(
            Icons.menu,
            color: isScrolled ? Colors.white : kHighlightBlackText,
          ),
          onTap: () =>
              Provider.of<MainScreenController>(context, listen: false)
                  .openOrCloseDrawer(),
        ),
        const SizedBox(width: 20),
      ],
    );
  }
}
