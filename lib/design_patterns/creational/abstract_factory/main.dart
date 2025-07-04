import 'package:design_pattern_self_implementation/design_patterns/creational/abstract_factory/factory/component_factory.dart';
import 'package:design_pattern_self_implementation/design_patterns/creational/abstract_factory/factory/mac_component_factory.dart';
import 'package:design_pattern_self_implementation/design_patterns/creational/abstract_factory/factory/win_componet_factory.dart';

void main() {
  ComponentFactory factory = MacComponentFactory();
  final btn = factory.createButton();
  btn.draw();
  btn.click();
  final checkbox = factory.createCheckbox();
  checkbox.draw();
  checkbox.toggle();
  checkbox.toggle();
  checkbox.toggle();
}
