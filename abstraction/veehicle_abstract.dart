void main() {
  print("this is for Car");

  Car car = Car();
  car.start();
  car.stop();
  print("this is for Bike");
  Bike bike = Bike();
  bike.start();
  bike.stop();
}

abstract class Vehicle {
  void start();
  void stop();
}

class Car extends Vehicle {
  @override
  void start() {
    print("Engien Start");
  }

  @override
  void stop() {
    print("Engien Sto[p]");
  }
}

class Bike extends Vehicle {
  @override
  void start() {
    print("Engien Start");
  }

  @override
  void stop() {
    print("Engien Sto[p]");
  }
}
