class Car {
  static int numberOfCars = 0;

  String brand;
  String model;
  int year;
  double milesDriven;

  Car(this.brand, this.model, this.year, [this.milesDriven = 0.0]) {
    numberOfCars++;
  }

  void drive(double miles) {
    milesDriven += miles;
  }

  double getMilesDriven() {
    return milesDriven;
  }

  String getBrand() {
    return brand;
  }

  String getModel() {
    return model;
  }

  int getYear() {
    return year;
  }

  int getAge() {
    int currentYear = DateTime.now().year;
    return currentYear - year;
  }
}

void main() {
  // Brand Name, Model, Year
  Car car1 = Car("Tesla", "Model S", 2019);
  Car car2 = Car("Lamborghini", "Aventador", 2022);
  Car car3 = Car("Koenigsegg", "Jesko", 2023);
  Car car4 = Car("Mansory", "Vivere", 2021);
  Car car5 = Car("W Motors", "Lykan Hypersport", 2020);
  Car car6 = Car("Aston", "Martin DB11", 2017);
  Car car7 = Car("Rimac", "Nevera", 2023);
  Car car8 = Car("Hispano Suiza", "Carmen Boulogne", 2022);
  Car car9 = Car("Faraday Future", "FF 91 2.0 Futurist Alliance", 2024);
  Car car10 = Car("Toyota", "Noah", 2016);
  Car car11 = Car("Mitsubishi", "Pajero", 2018);
  Car car12 = Car("Toyota", "Allion", 2017);
  Car car13 = Car("Hyundai", "Santa Fe", 2020);
  Car car14 = Car("BMW", "X5", 2021);
  Car car15 = Car("Ford", "Mustang", 2019);

  // Driven Miles
  car1.drive(15000);
  car2.drive(22000);
  car3.drive(8000);
  car4.drive(1000);
  car5.drive(5000);
  car6.drive(30000);
  car7.drive(6000);
  car8.drive(4000);
  car9.drive(7000);
  car10.drive(12000);
  car11.drive(18000);
  car12.drive(9000);
  car13.drive(15000);
  car14.drive(20000);
  car15.drive(25000);

  List<Car> cars = [
    car1, car2, car3, car4, car5, car6, car7, car8, car9,
    car10, car11, car12, car13, car14, car15
  ];
  for (int i = 0; i < cars.length; i++) {
    Car car = cars[i];
    print("Car ${i + 1}:");
    print("Brand: ${car.getBrand()}");
    print("Model: ${car.getModel()}");
    print("Year: ${car.getYear()}");
    print("Miles Driven: ${car.getMilesDriven()}");
    print("Age: ${car.getAge()} years");
    print("");
  }

  print("Total number of Car objects created: ${Car.numberOfCars}");
}
