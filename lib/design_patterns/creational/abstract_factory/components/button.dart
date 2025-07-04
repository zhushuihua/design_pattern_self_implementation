import 'component.dart';

abstract class Button implements Component {
  void click() {
    print('button was clicked');
  }
}
