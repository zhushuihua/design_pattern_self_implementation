abstract interface class Shape {
  void draw();
}

class Circle implements Shape {
  @override
  void draw() {
    print('draw a circle');
  }
}

class Rectangle implements Shape {
  @override
  void draw() {
    print('draw a rectangle');
  }
}

class Rhombus implements Shape {
  @override
  void draw() {
    print('Draw a rhombus');
  }
}

abstract class ShapeFactory {
  Shape create(String shape);
}

class ConcreteShapeFactory extends ShapeFactory {
  static const circle = 'circle';
  static const rectangle = 'rectangle';
  static const rhombus = 'rhombus';
  @override
  Shape create(String shape) {
    return switch (shape.toLowerCase()) {
      circle => Circle(),
      rectangle => Rectangle(),
      rhombus => Rhombus(),
      _ => throw UnimplementedError('$shape was not implemented'),
    };
  }
}

void main() {
  ShapeFactory factory = ConcreteShapeFactory();
  final circle = factory.create(ConcreteShapeFactory.circle);
  circle.draw();
  final square = factory.create(ConcreteShapeFactory.rectangle);
  square.draw();
}
