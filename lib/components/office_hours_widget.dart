import 'package:deposito_nelinho/constants.dart';
import 'package:deposito_nelinho/style/fonts.dart';
import 'package:flutter/material.dart';

class OfficeHoursWidget extends StatelessWidget {
  final Color? textColor;
  const OfficeHoursWidget({
    this.textColor,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool _isOpen = isOpen();

    return SizedBox(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 15,
            height: 15,
            decoration: BoxDecoration(
              color: _isOpen ? Colors.green : Colors.red,
              borderRadius: const BorderRadius.all(
                Radius.circular(100),
              ),
            ),
          ),
          const SizedBox(width: kDefaultPadding * 0.5),
          Text(
            "${_isOpen ? "Aberto" : "Fechado"} 8:00 às 18:00",
            style: googleFont(
                fontFamily: kBodyFont, style: TextStyle(color: textColor)),
          ),
        ],
      ),
    );
  }
}

bool isOpen() {
  int currentHour = DateTime.now().hour;
  int openingHour = 8;
  int closingHour = 18;

  int weekday = DateTime.now().weekday;

  if (weekday == 7) {
    closingHour = 8;
  } else if (weekday == 6) {
    closingHour = 15;
  }

  return currentHour >= openingHour && currentHour < closingHour;
}
