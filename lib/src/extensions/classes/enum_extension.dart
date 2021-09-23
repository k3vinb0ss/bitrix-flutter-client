
extension EnumString on Enum {
  String get getName =>
      toString()
        ..substring(toString().indexOf('.') + 1);
}