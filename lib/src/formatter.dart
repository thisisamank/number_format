import 'package:number_format/src/number_systems.dart';

class NumberFormatter {
  /// [getValue]
  static String getValue({
    required num number,
    NumberSystem system = NumberSystem.INTERNATIONAL,
    int uptoPlaces = 3,
  }) {
    number = number.abs();
    double convertedNumber = 0.0;
    String placeValueLetter = '';
    if (system == NumberSystem.INTERNATIONAL) {
      //For [number] greater than equals to 1 Trillion.
      if (number >= 1000000000000) {
        convertedNumber = number / 1000000000000;
        placeValueLetter = 'T';
      }
      // For [number] less than 1 Trillion and greater than 1 Billion.
      else if (number >= 1000000000 && number < 1000000000000) {
        convertedNumber = number / 1000000000;
        placeValueLetter = 'B';
      }
      // For [number] less than 1 Billion and greater than 1 Million.
      else if (number >= 1000000 && number < 1000000000) {
        convertedNumber = number / 1000000;
        placeValueLetter = 'M';
      }
      // For [number] less than 1 Million and greater than 1 Thousand.
      else if (number >= 1000 && number < 1000000) {
        convertedNumber = number / 1000;
        placeValueLetter = 'K';
      }
      // For [number] less than a thousand.
      else {
        convertedNumber = number / 1;
        placeValueLetter = '';
      }
    }
    //For Indian System
    else {
      //For [number] greater than equals to 1 crore.
      if (number >= 10000000) {
        convertedNumber = number / 10000000;
        placeValueLetter = 'Cr';
      }
      // For [number] less than 1 Crore and greater than 1 Lakh.
      else if (number >= 100000 && number < 10000000) {
        convertedNumber = number / 100000;
        placeValueLetter = 'L';
      }
      // For [number] less than 1 Lakh and greater than 1 Thousand.
      else if (number >= 1000 && number < 100000) {
        convertedNumber = number / 1000;
        placeValueLetter = 'Th';
      }
      // For [number] less than a thousand.
      else {
        convertedNumber = number / 1;
        placeValueLetter = '';
      }
    }
    return convertedNumber.toStringAsFixed(uptoPlaces) + placeValueLetter;
  }

  String _removeTrailing() {
    return "Todo";
  }
}
