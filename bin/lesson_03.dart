import 'dart:io';

void main() {
  print('Start of Program');
  for (int i = 1; i <= 3; i = i + 1) {
    print('Step $i');
  }

  print('---------------------');
  int number = 7;
  for (int i = 1; i <= 10; i++) {
    // i = i + 1 => i++ (increment)
    print('$number x $i = ${number * i}');
  }

  print('---------------------');
  number = 5;
  for (int i = 10; i >= 1; i--) {
    // i = i - 1 => i-- (decrement)
    print('$number x $i = ${number * i}');
  }

  print('---------------------');
  number = 9;
  for (int i = 10; i >= 2; i -= 2) {
    // i = i - 2 => i-=2
    print('$number x $i = ${number * i}');
  }

  int count = 0;
  while (count <= 5) {
    print('Count is $count');
    count++;
    print('Square is ${count * count}');
  }

  String myStr = '#';
  while (myStr.length <= 7) {
    print(myStr);
    myStr += '#';
  }

  int doCount = 0;
  do {
    print('Do-While count is: $doCount');
    doCount++;
  } while (doCount > 5);

  doCount = 0;
  while (doCount > 5) {
    print('While count is: $doCount');
    doCount++;
  }

  // Коллекция List - список
  // упорядоченная коллекция элементов, доступ по индексу, может содержать дубликаты, изменяемый размер

  List<String> fruits = ['Apple', 'Banana', 'Orange'];
  print('My favorite fruits are ${fruits[2]} and ${fruits[0]}');
  print(fruits);
  fruits[1] = 'Kiwi';
  print(fruits);

  // print(fruits[10]);
  fruits.add('Mango');
  print(fruits);
  fruits.removeAt(0);
  print(fruits);
  print('Fruits count: ${fruits.length}');
  fruits.insert(1, 'Pear');
  print(fruits);
  fruits.removeLast();
  print(fruits);
  print('End of Program');
  fruits.insert(1, 'Orange');
  print(fruits);
  fruits.remove('Orange');
  print(fruits);

  // Коллекции Map - словарь
  // неупорядоченная коллекция пар ключ-значение, ключи уникальны
  Map<String, int> ages = {'Jim': 24, 'Jane': 26, 'Bob': 30};
  print('Jane is ${ages['Jane']} years old');
  ages['Bob'] = 31;
  print(ages);
  ages['David'] = 22;
  print(ages);
  ages.remove('Jim');
  print(ages);
  print('Total people: ${ages.length}');

  // Итерация по парам ключ-значение
  ages.forEach((name, age) {
    print('$name is $age y.o ');
  });

  // Коллекции Set - множество
  // неупорядоченная коллекция уникальных элементов
  Set<String> colors = {'Red', 'Blue', 'Green'};
  print(colors);
  colors.add('Yellow');
  print(colors);
  colors.add('Blue');
  print(colors);
  colors.remove('Red');
  print(colors);

  for (String c in colors) {
    print('I like $c color.');
  }

  List<int> numbers = [22, -3, 67, -11, 8];
  for (int num in numbers) {
    if (num < 0) {
      break; // экстренно прерывает работу цикла
    }
    print(num);
  }
  print('---------------------');
  for (int num in numbers) {
    if (num < 0) {
      continue; // прерывает работу текущей итерации
    }
    print(num);
  }

  String? value;
  while (true) {
    print('Enter a number or "q" to exit:');
    value = stdin.readLineSync();
    if(value == null || value == 'q'){
      break;
    }
    print('Number times 2: ${int.parse(value) * 2}');
  }
}
