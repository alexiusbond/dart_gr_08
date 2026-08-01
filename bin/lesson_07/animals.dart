import 'interfaces.dart';
import 'mixins.dart';

// Можно наследовать.
// Может содержать готовые методы.
// Может иметь абстрактные методы, которые наследник обязан реализовать.
abstract class Animal implements Drawable {
  String name;
  int age;

  Animal(this.name, this.age);

  void sleep() {
    print('Animal is sleeping');
  }

  void makeVoice();
}

class Cat extends Animal implements Playable {
  Cat(super.name, super.age);

  @override
  void makeVoice() {
    print('$name says meow');
  }
  
  @override
  void draw() {
    print('🐈');
  }

  @override
  String draw3D(String material) {
    return 'Cat is drawn in 3D from $material';
  }
  
  @override
  void play() {
    print('Cat plays by catching laser');
  }
}

abstract class Reptile extends Animal {
  Reptile(super.name, super.age);

  void crawl() {
    print('$name is crawling');
  }
}

class Snake extends Reptile {
  Snake(super.name, super.age);

  @override
  void makeVoice() {
    print('$name is hissing');
  }

  @override
  void draw() {
    print('🐍');
  }

  @override
  String draw3D(String material) {
    return 'Snake is drawn in 3D from $material';
  }
}

class Parrot extends Animal with Fly implements Playable {
  Parrot(super.name, super.age);

  @override
  void makeVoice() {
    print('$name whripping');
  }

  @override
  void draw() {
    print('🦜');
  }

  @override
  String draw3D(String material) {
    return 'Parrot is drawn in 3D from $material';
  }

  @override
  void play() {
    print('Parrot plays by mimicking sounds');
  }
}
