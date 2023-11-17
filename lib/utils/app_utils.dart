import 'dart:ui';
import 'dart:js' as js;

extension ColorString on Color {
  String toHexString() {
    return '#${(value & 0xFFFFFF).toRadixString(16).padLeft(6, '0').toUpperCase()}';
  }
}


class AppUtils{
  void setMetaThemeColor(Color color) {
    js.context.callMethod("setMetaThemeColor", [color.toHexString()]);
  }
}