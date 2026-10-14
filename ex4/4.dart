abstract class Vehicle {
  double fuelConsumption();
}

class Car extends Vehicle {
  double litersPer100Km;

  Car(this.litersPer100Km);

  @override
  double fuelConsumption() {
    return litersPer100Km;
  }
}

class Motorcycle extends Vehicle {
  double litersPer100Km;

  Motorcycle(this.litersPer100Km);

  @override
  double fuelConsumption() {
    return litersPer100Km;
  }
}

double totalConsumption(List<Vehicle> vehicles, double distance) {
  double sum = 0;

  for (int i = 0; i < vehicles.length; i++) {
    sum += vehicles[i].fuelConsumption() * distance / 100;
  }

  return sum;
}

void main() {
  List<Vehicle> vehicles = [
    Car(5),
    Motorcycle(9)
  ];

  print(totalConsumption(vehicles, 274));
}