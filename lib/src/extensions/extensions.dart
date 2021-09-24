

extension EnumString on Enum {
  String get getName =>
      toString()
        ..substring(toString().indexOf('.') + 1);
}

extension IterableExt<T> on Iterable<T> {
  /// return first item or return null if empty
  T? get firstItem  => isEmpty ? null : first;
}