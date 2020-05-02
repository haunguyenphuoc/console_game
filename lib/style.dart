import 'package:flutter/material.dart';

Iterable<Color> kThemeColors = [
  HexColor.fromHex("d58300"),
  HexColor.fromHex("e38e00"),
  HexColor.fromHex("f19900"),
  HexColor.fromHex("ffa500"),
  HexColor.fromHex("ffb11b"),
  HexColor.fromHex("ffbd2c"),
  HexColor.fromHex("ffc93b"),
];

extension HexColor on Color {
  /// String is in the format "aabbcc" or "ffaabbcc" with an optional leading "#".
  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }

  /// Prefixes a hash sign if [leadingHashSign] is set to `true` (default is `true`).
  String toHex({bool leadingHashSign = true}) => '${leadingHashSign ? '#' : ''}'
      '${alpha.toRadixString(16).padLeft(2, '0')}'
      '${red.toRadixString(16).padLeft(2, '0')}'
      '${green.toRadixString(16).padLeft(2, '0')}'
      '${blue.toRadixString(16).padLeft(2, '0')}';
}
