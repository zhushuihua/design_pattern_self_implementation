import './component.dart';

abstract class Checkbox implements Component {
  bool checked = false;
  void toggle() {
    checked = !checked;
    print(checked ? 'on' : 'off');
  }
}
