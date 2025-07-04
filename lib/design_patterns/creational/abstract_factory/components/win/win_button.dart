import 'package:design_pattern_self_implementation/design_patterns/creational/abstract_factory/components/button.dart';

class WinButton extends Button {
  @override
  void draw() {
    print('win button is drawn');
  }
}
