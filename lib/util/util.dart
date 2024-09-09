import 'package:intl/intl.dart';

(String, String) separate(String nameWithOwner) {
  final splitted = nameWithOwner.split('/');
  return (splitted[0], splitted[1]);
}

final _thousandsSeparatedFormat = NumberFormat('#,###');

extension IntExt on int {
  String get format => _thousandsSeparatedFormat.format(this);
}
