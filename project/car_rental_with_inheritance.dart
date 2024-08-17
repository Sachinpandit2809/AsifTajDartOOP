void main() {
  Car car = Car("TATA", "ace2013", 2013, 2);
  car.printVehiclesDetials();
  print(car.calculateRentalPrice(10));

  Bike bike = Bike('TVS', 'apache', 2021, false);
  print("this is the information about Bikes1 'false'");
  print(bike.calculateRentalPrice(10));
  Bike bike1 = Bike('TVS', 'apache', 2021, true);
  print("this is the information about Bikes2 'true'");
  print(bike1.calculateRentalPrice(10));
}

class Vehicles {
  String? brand;
  String? model;
  int? year;
  // Constructor of the vehicles
  Vehicles(this.brand, this.model, this.year);
  // printing method
  void printVehiclesDetials() {
    print("Brand => $brand");
    print("Model => $model");
    print("Year => $year");
  }

  double calculateRentalPrice(double days) {
    return (3000 * days);
  }
}

class Bike extends Vehicles {
  bool isCarrier;
  Bike(String brand, String model, int year, this.isCarrier)
      : super(
          brand,
          model,
          year,
        );
  void printVehiclesDetials() {
    super.printVehiclesDetials();
    print("has Carrier ${isCarrier ? 'Yes ' : 'No'}");
  }

  @override
  double calculateRentalPrice(double days) {
    return super.calculateRentalPrice(days) - (isCarrier ? 1000 : 0);
  }
}

class Car extends Vehicles {
  int doors;
  Car(String brand, String model, int year, this.doors)
      : super(brand, model, year);
  @override
  double calculateRentalPrice(double days) {
    return super.calculateRentalPrice(days) + 1000 * doors;
  }
}
