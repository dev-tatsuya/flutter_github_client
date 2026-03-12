import 'package:intl/intl.dart';

final _thousandsSeparatedFormat = NumberFormat('#,###');

extension IntExt on int {
  /// 数字を千単位でカンマ区切りにする
  String get format => _thousandsSeparatedFormat.format(this);
}
