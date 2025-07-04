import 'package:design_pattern_self_implementation/design_patterns/creational/abstract_factory/components/button.dart';
import 'package:design_pattern_self_implementation/design_patterns/creational/abstract_factory/components/checkbox.dart';

abstract class ComponentFactory {
  Button createButton();
  Checkbox createCheckbox();
}
