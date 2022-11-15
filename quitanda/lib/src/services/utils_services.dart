import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:motion_toast/motion_toast.dart';
import 'package:quitanda/src/config/custom_colors.dart';

class UtilsServices {
  String priceToCurrency(double price) {
    NumberFormat numberFormat = NumberFormat.simpleCurrency(locale: 'pt_BR');

    return numberFormat.format(price);
  }

  String formatDateTime(DateTime dateTime) {
    initializeDateFormatting();

    //hm = fomate com a hora e minuto
    DateFormat dateFormat = DateFormat.yMd('pt_BR').add_Hm();

    return dateFormat.format(dateTime);
  }

  void showToast(
      {required String message, bool isError = false, required context}) {
    MotionToast(
      icon: Icons.info,
      primaryColor: isError ? Colors.red : CustomColors.customSwatchColor,
      // title: const Text("Custom Toast"),
      description: Text(message),
      width: 300,
      height: 100,
      padding: const EdgeInsets.symmetric(vertical: 40),
    ).show(context);
  }
}
