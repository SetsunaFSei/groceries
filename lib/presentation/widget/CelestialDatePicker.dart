import 'package:flutter/material.dart';
import 'package:groceries/presentation/misc/AppIcon.dart';
import 'package:groceries/presentation/widget/CelestialButton.dart';
import 'package:groceries/presentation/widget/CelestialText.dart';
import 'package:intl/intl.dart';

class CelestialDatePicker extends StatelessWidget {
  CelestialDatePicker({@required this.onPressed, this.dateTime});
  final CelestialText celestialText = new CelestialText();
  final GestureTapCallback onPressed;
  // final DateTime dateTime;
  final DateTime dateTime;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Row(
          children: [
            Flexible(
              child: celestialText.celestialTextField(
                  dateTime == null
                      ? 'Tanggal Pengaturan'
                      : DateFormat('dd-MM-yyyy').format(dateTime).toString(),
                  null),
            ),
            CelestialIconButton(
              onPressed: onPressed,
              icon: AppIcon.arrowDown,
            ),
          ],
        ),
      ],
    );
  }
}
