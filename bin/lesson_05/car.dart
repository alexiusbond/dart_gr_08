import 'person.dart';

class Car {
  // поля / атрибуты
  String model;
  String color;
  int year;
  Person? owner;

  // Конструктор
  // Car(String model, String color, int year) {
  //   this.model = model;
  //   this.color = color;
  //   this.year = year;
  // }

  // Конструктор с инициализирующим списком
  // Car(String model, String color, int year)
  //   : this.model = model,
  //     this.color = color,
  //     this.year = year;

  // Конструктор с параметрами, присваивающимися напрямую
  Car(this.model, this.color, this.year);

  // Именованный конструктор, c инициализирующим списком
  Car.redHonda(this.year) : model = 'Honda Civic', color = 'red';
  Car.withOwner(this.model, this.color, this.year, this.owner);

  void drive(String city) {
    print('Car ${model} is driving to $city');
  }

  void changeColor(String newColor) {
    color = newColor;
  }

  void displayInfo() {
    if (owner == null) {
      print('MODEL: $model COLOR: $color YEAR: $year');
    } else {
      print('MODEL: $model COLOR: $color YEAR: $year ONWER: ${owner!.name}');
    }
  }
}
