import 'car.dart';
import 'person.dart';

void main() {
  int number = 55;

  Car myCar = Car('BMW X7', 'red', 2020);
  Car bestCar = Car('Lexus IS', 'white', 2025);

  print(number);
  print(myCar);

  myCar.displayInfo();
  bestCar.displayInfo();
  // bestCar.color = 'yellow';
  bestCar.changeColor('yellow');
  bestCar.displayInfo();

  myCar.drive('Osh');
  bestCar.drive('Kant');
  myCar.drive('Batken');

  Car friendsCar = Car.redHonda(2009);
  friendsCar.displayInfo();

  Person friend = Person('Jim', 25);
  // friend.setAge(-26);
  friend.age = -26;
  friend.displayInfo();
  // print('My friend\'s name is ${friend.getName()}');
  print('My friend\'s name is ${friend.name}');

  Car fastCar = Car.withOwner('Ford Mustang', 'green', 2010, friend);
  fastCar.displayInfo();
  friendsCar.owner = friend;
  friendsCar.displayInfo();

  // Person woman = Person('Lucy', 43);
  // //         a = b;
  // bestCar.owner = woman;
  bestCar.owner = Person('Lucy', 43);
  bestCar.displayInfo();
  print('End of program');
}
