import 'animals.dart';

void main() {
  Animal.displayCounter();

  Cat cat = Cat(Color.red, 2);
  cat.meow();
  print(cat.info());
  print('Cat is ${cat.age} years old.');

  Dog dog = Dog(Color.yellow, 5, 'Sit');
  dog.bark();
  print(dog.info());

  FightingDog fightingDog = FightingDog(Color.darkGreen, 1, 'fight', 10);
  fightingDog.bark();
  fightingDog.fight();
  print(fightingDog.info());

  Animal.displayCounter();

  if (fightingDog.commands == 'fight') {
    print('This dog is dangerous');
  }

  if (fightingDog.color == Color.darkGreen) {
    print('This dog is beautiful');
  }

  int number = -2;
  // if (number >= 0) {
  //   print('Number is positive');
  // } else {
  //   print('Number is negative');
  // }
  String message = number >= 0 ? 'Number is positive' : 'Number is negative';
  print(message);
  print('End of program');
}
