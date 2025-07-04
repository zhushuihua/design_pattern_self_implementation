import 'package:design_pattern_self_implementation/design_patterns/creational/abstract_factory/components/checkbox.dart';

class WinCheckbox extends Checkbox {
  @override
  void draw() {
    print('win checkbox was drawn');
  }
}
