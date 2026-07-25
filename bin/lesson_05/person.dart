class Person {
  final String _name;
  int _age;

  Person(this._name, this._age){
    _wasBorn();
  }

  void _wasBorn() {
    print('Person $_name was born');
  }

  // void setAge(int newAge) {
  //   if (newAge <= 0) {
  //     print('Wrong value for age field. It must be positive number');
  //   } else {
  //     _age = newAge;
  //   }
  // }

  // String getName() {
  //   return _name;
  // }

  set age(int value) {
    if (value <= 0) {
      print('Wrong value for age field. It must be positive number');
    } else {
      _age = value;
    }
  }

  String get name => _name;

  int calculateBirthYear() {
    return 2026 - _age;
  }

  void displayInfo() {
    print('NAME: $_name AGE: $_age BIRTH YEAR: ${calculateBirthYear()}');
  }
}
