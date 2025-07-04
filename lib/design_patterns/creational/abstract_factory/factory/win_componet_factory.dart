import 'package:design_pattern_self_implementation/design_patterns/creational/abstract_factory/components/button.dart';
import 'package:design_pattern_self_implementation/design_patterns/creational/abstract_factory/components/checkbox.dart';
import 'package:design_pattern_self_implementation/design_patterns/creational/abstract_factory/components/win/win_button.dart';
import 'package:design_pattern_self_implementation/design_patterns/creational/abstract_factory/components/win/win_checkbox.dart';
import 'package:design_pattern_self_implementation/design_patterns/creational/abstract_factory/factory/component_factory.dart';

class WinComponetFactory extends ComponentFactory {
  @override
  Button createButton() {
    return WinButton();
  }

  @override
  Checkbox createCheckbox() {
    return WinCheckbox();
  }
}
