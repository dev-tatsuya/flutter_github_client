import 'package:intl/intl.dart';

final _thousandsSeparatedFormat = NumberFormat('#,###');

extension IntExt on int {
  String get format => _thousandsSeparatedFormat.format(this);
}
