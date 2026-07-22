void main() {
  print('Hello world!');
  print(56);
  print(5.45); // Распечатка дробного значения

  // Однострочный комментарий

  /*
Многострочный 
комментарий
*/

  // Переменные и типы данных
  String myName = 'Jim Smith'; // строковый тип данных
  int myAge = 25; // целочисленный тип данных
  double myHeight = 1.75; // тип данных с плавающей точкой
  bool isTeacher = true;

  print(myName);
  print(myAge);
  print(myHeight);
  print(isTeacher);

  String myJob; // создание / объявление переменной
  //print(myJob);

  myJob = 'Dart Developper'; // присваивание значения переменной / инициализация
  print(myJob);

  int mySalary = 2000;
  print(mySalary);

  myJob = 'Senior Dart Developper'; // изменение значения переменной
  mySalary = mySalary + 1000;
  print(myJob);
  print(mySalary);

  String nameOfMyFriend1 = 'Jane';
  String nameOfMyFriend2 = 'Peter';
  // String my pet name = 'Tom';  // Ошибка: пробелы в имене переменной
  // String 1myPetName = 'Tom';  // Ошибка: имя переменной не может начинаться с цифры
  // String my_pet_name = 'Buddy'; // Допустимо, но не принято в стиле Dart

  print(
    'My name is ' + myName + '. My job is ' + myJob + '.',
  ); // Конкатенация / соединение строк
  // print('My age is ' + myAge);
  print(
    'My name is $myName. My job is $myJob. My salary is ${mySalary}USD.',
  ); // интерполяция строк
  print('I was born in 2026 - $myAge.');
  print('I was born in ${2026 - myAge}.');
  print('I am $myAge years old.');

  // Экранирование строк
  print("Today I'm learning Dart Programming");
  print('Today I\'m learning "Dart Programming"');

  print(
    ("Lorem Ipsum is simply dummy text of the printing and typesetting industry. \n" +
        "\tLorem Ipsum has been the industry's standard dummy text ever since 1966, when designers at Letraset and James Mosley"),
  );

  print('''
Lorem Ipsum is simply dummy text of the printing and typesetting industry. 
          Lorem Ipsum has been the industry's standard dummy text ever since 1966, when designers at Letraset and James Mosley
''');

// строковые функции
  String sampleText = '   Hello Dart!   ';
  print(sampleText.toUpperCase());
  print(sampleText.toLowerCase());
  print(sampleText.trim());
  print(sampleText.replaceAll('Dart', 'Flutter'));

// Арифметические операторы
print(1 + 3);
print(10 - 3);
print(10 * 3);
print(10 / 2);
print(10 ~/ 4); // целочисленное деление
print(13 % 4); // остаток от деления

print('1 + 3 = ${1 + 3}');


  // var -> значение может изменяться и тип определяется автоматически
  // final -> значение не может изменяться после инициализации, тип можно указать

var digit = 43; // Тип данных определяется автоматически -> int
print(digit + 12);

var country = 'Kyrgyz Republic'; // Тип данных определяется автоматически -> String
print(country.toUpperCase());

final String unchangableVariable = 'This variable can not change its value'; // константа
// unchangableVariable = 'New value'; // Ошибка: Нельзя изменить значение final - оно константно после инициализации

String? city;
print(city);
}
