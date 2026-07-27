enum Color {
  red('\x1B[31m'),
  yellow('\x1B[33m'),
  darkGreen('\x1B[32m');

  final String code;

  const Color(this.code);
}

class Animal {
  static int _counter = 0;

  static void displayCounter() {
    print('Animal class produced $_counter objects.');
  }

  Color color;
  int age;

  Animal(this.color, this.age) {
    _counter++;
  }

  String info() {
    return 'COLOR: ${color.code}${color.name}\x1B[0m AGE: $age';
  }
}

class Cat extends Animal {
  Cat(super.color, super.age);

  void meow() {
    print('Cat says meow!');
  }
}

class Dog extends Animal {
  String commands;

  Dog(super.color, super.age, this.commands);

  void bark() {
    print('Dog says woof!');
  }

  @override
  String info() {
    return '${super.info()} COMMANDS: $commands';
  }
}

class FightingDog extends Dog {
  int wins;

  FightingDog(super.color, super.age, super.commands, this.wins);

  void fight() {
    print('${color.name} dog is fighting');
  }

  @override
  String info() {
    return '${super.info()} WINS: $wins';
  }
}
