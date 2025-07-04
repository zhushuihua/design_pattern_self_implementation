import 'package:design_pattern_self_implementation/design_patterns/creational/singleton/singleton.dart';

void main() {
  Singleton singleton1 = Singleton();
  Singleton singleton2 = Singleton();
  print(singleton1 == singleton2);
}
