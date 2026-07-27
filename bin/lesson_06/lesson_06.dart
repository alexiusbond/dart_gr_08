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

  if(fightingDog.commands == 'fight'){
    print('This dog is dangerous');
  }

  if(fightingDog.color == Color.darkGreen){
    print('This dog is beautiful');
  }
  print('End of program');
}
