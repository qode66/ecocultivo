import 'package:collection/collection.dart';

enum Row {
  A,
  B,
  C,
  D,
  E,
  F,
  G,
  H,
  I,
  J,
}

enum Columna {
  A,
  B,
  C,
  D,
  E,
  F,
  G,
  H,
  I,
  J,
}

enum VALORceldas {
  A,
  B,
  C,
  D,
  E,
  F,
  G,
  H,
  I,
  J,
}

extension FFEnumExtensions<T extends Enum> on T {
  String serialize() => name;
}

extension FFEnumListExtensions<T extends Enum> on Iterable<T> {
  T? deserialize(String? value) =>
      firstWhereOrNull((e) => e.serialize() == value);
}

T? deserializeEnum<T>(String? value) {
  switch (T) {
    case (Row):
      return Row.values.deserialize(value) as T?;
    case (Columna):
      return Columna.values.deserialize(value) as T?;
    case (VALORceldas):
      return VALORceldas.values.deserialize(value) as T?;
    default:
      return null;
  }
}
