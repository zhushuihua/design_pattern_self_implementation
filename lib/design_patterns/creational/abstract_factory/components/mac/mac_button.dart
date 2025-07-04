import 'package:design_pattern_self_implementation/design_patterns/creational/abstract_factory/components/button.dart';

class MacButton extends Button {
  @override
  void draw() {
    print('Mac button was drawn');
  }
}
