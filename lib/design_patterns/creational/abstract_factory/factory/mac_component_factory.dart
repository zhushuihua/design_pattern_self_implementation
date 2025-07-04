import 'package:design_pattern_self_implementation/design_patterns/creational/abstract_factory/components/button.dart';
import 'package:design_pattern_self_implementation/design_patterns/creational/abstract_factory/components/checkbox.dart';
import 'package:design_pattern_self_implementation/design_patterns/creational/abstract_factory/components/mac/mac_button.dart';
import 'package:design_pattern_self_implementation/design_patterns/creational/abstract_factory/components/mac/mac_checkbox.dart';
import 'package:design_pattern_self_implementation/design_patterns/creational/abstract_factory/factory/component_factory.dart';

class MacComponentFactory extends ComponentFactory {
  @override
  Button createButton() {
    return MacButton();
  }

  @override
  Checkbox createCheckbox() {
    return MacCheckbox();
  }
}
