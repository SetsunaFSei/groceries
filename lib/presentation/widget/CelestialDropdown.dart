import 'package:flutter/material.dart';

class CelestialDropdown {
  // OrderController orderController = Get.put(OrderController());
  Widget celestialDropdown(String dropdownValue) => DropdownButton<String>(
        value: dropdownValue,
        isExpanded: true,
        onChanged: (String newValue) {},
        items: <String>['One', 'Two', 'Free', 'Four']
            .map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
      );
}
