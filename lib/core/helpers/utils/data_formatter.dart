import 'package:intl/intl.dart';

class DataFormatter {
  DataFormatter._initila();
  static String formatPrice(double price) {
    final formatter = NumberFormat('#,###');
    return '${formatter.format(price)}جم';
  }

  static String formatSellsCount(int sellsCount) {
    final formatter = NumberFormat.compact(locale: 'en');
    return '${formatter.format(sellsCount)}+';
  }
}
