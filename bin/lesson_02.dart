import 'dart:io';

void main() {
  int temperature = 38;
  int numberOfStudents = 10;
  bool isRainy = false;

  if (temperature > 30) {
    String lake = 'Issyk Kul';
    print('Go swimming to $lake');
  }

  if (isRainy) {
    print('Take an umbrella');
  }

  if (numberOfStudents > 15) {
    print('Go to Geeks');
  } else {
    print('Go to school');
  }

  if (temperature < 40) {
    print('Play Tennis');
  } else {
    print('Play Football');
  }

  temperature = temperature - 40; // -2
  if (temperature > 30) {
    print('The weather is hot');
  } else if (temperature > 20) {
    print('The weather is warm');
  } else if (temperature > 10) {
    print('The weather is cool');
  } else if (temperature > 0) {
    print('The weather is cold');
  } else {
    print('The weather is freezing');
  }

  // else {
  //   print('Something');
  // }

  numberOfStudents += 10; // numberOfStudents = numberOfStudents + 10
  if (numberOfStudents >= 20) {
    print('Go to picnic');
    if (temperature > 25) {
      print('Eat an ice-cream');
    } else {
      print('Drink a hot tea');
    }
  }

  // логический оператор И (AND) - &&
  if (numberOfStudents > 15 && numberOfStudents < 30) {
    print('Play Bowling');
  }

  if (temperature > 15 && numberOfStudents == 22) {
    print('Play Basketball');
  }

  // логический оператор ИЛИ (OR) - ||
  if (temperature < 10 || isRainy) {
    print('Stay at home');
  }

  if (numberOfStudents < 5 || temperature > 40) {
    print('Go walking');
  }

  if (temperature > 10 && temperature < 30 ||
      numberOfStudents > 10 && numberOfStudents < 25 ||
      isRainy) {
    // false && true || true && true || false => 0 * 1 + 1 * 1 + 0 = 0 + 1 + 0 = 1 (true)
    print('Go to work');
  }

  if (temperature > 10 &&
      (temperature < 30 || numberOfStudents > 10) &&
      (numberOfStudents < 25 || isRainy)) {
    // false && (true || true) && (true || false) => 0 * (1 + 1) * (1 + 0) = 0 * 1 * 1 = 0 (false)
    print('Go shopping');
  }

  // логический опервтор отрицания НЕ (NOT) - !
  // if (isRainy) {
  // } else {
  //   print('Go to park!');
  // }

  if (!isRainy) {
    print('Go to park!');
  }

  int number = 5;

  switch (number) {
    case 1:
      print('Число равно одному');
    case 2:
      print('Число равно двум');
    case 3:
      print('Число равно трем');
    default:
      print('Число неизвестно');
  }

  // Преобразование типов (type casting)
  String age = '30';
  int ageAsNumber = int.parse(age);
  print(ageAsNumber + 5);
  print(double.parse(age));

  double price = 15.5;
  print('Price of computer mouse: ' + price.toString() + " USD.");

  print('Where are you from?');
  String? city = stdin.readLineSync();
  print('$city is very beautiful place');

  print('Enter any number, I will calculate the square of it:');
  int num = int.parse(stdin.readLineSync()!);
  print('Square of number = ${num * num}');

  print('Enter first number: ');
  int num1 = int.parse(stdin.readLineSync()!);

  print('Enter second number: ');
  int num2 = int.parse(stdin.readLineSync()!);
  print('Enter a sign (+, -, / or *): ');
  String sign = stdin.readLineSync()!;

  switch (sign) {
    case "+":
      print('Sum of numbers: ${num1 + num2}');
    case "-":
      print('Difference of numbers: ${num1 - num2}');
    case "/":
      print('Division of numbers: ${num1 / num2}');
    case "*":
      print('Product of numbers: ${num1 * num2}');
    default:
      print('You entered wrong sign!');
  }
}
