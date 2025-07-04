import 'package:design_pattern_self_implementation/design_patterns/creational/prototype/engine.dart';

import 'car.dart';

void main() {
  final engine = Engine('V8', 3.5);
  final car = Car('BMW', '530', engine, 2025);
  print(car);
}
