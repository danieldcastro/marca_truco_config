import 'flavor_enum.dart';

class Flavors {
  Flavors._();

  static FlavorEnum? flavor;

  static void init(String envFlavor) {
    flavor = FlavorEnum.fromString(envFlavor);
  }

  static String get env => flavor?.name ?? '';

  static String get appTitle => flavor?.appTitle ?? '';

  static String get baseUrl => flavor?.baseUrl ?? '';
}
