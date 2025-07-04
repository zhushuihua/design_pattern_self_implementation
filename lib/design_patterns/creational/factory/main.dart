abstract class Vehicle {
  void drive();
}

abstract class VehicleFactory {
  Vehicle create();
  void drive() {
    final vehicle = create();
    vehicle.drive();
  }
}

class Car extends Vehicle {
  @override
  void drive() {
    print('drive a car');
  }
}

class Truck extends Vehicle {
  @override
  void drive() {
    print('drive a truck');
  }
}

class Bicycle extends Vehicle {
  @override
  void drive() {
    print('drive a bicycle');
  }
}

class CarFactory extends VehicleFactory {
  @override
  Car create() {
    return Car();
  }
}

class TruckFactory extends VehicleFactory {
  @override
  Vehicle create() {
    return Truck();
  }
}

void main() {
  VehicleFactory factory = CarFactory();
  factory.drive();
  VehicleFactory truckFactory = TruckFactory();
  truckFactory.drive();
}
