// Привет учитель

void main() {
  // DRY - don't repeat yourself
  print('ЗАВТРАК');
  makeTea();

  print('ОБЕД');
  makeTea();

  print('УЖИН');
  makeTea();

  testFunction();

  addition(5, 3, 'Сумма чисел');
  addition(10, 4, 'Результат сложения');

  calculatePerimeter(6.5, 4, 'Аудитория 4');
  calculatePerimeter(2.5, 4.5, 'Кухня');
  calculatePerimeter(8.5, 10, 'Холл');

  int areaOfAuditory3 = calculateArea(6.5, 4);
  print('Площадь комнаты Аудитория 3: $areaOfAuditory3 кв.м.');
  int areaOfKitchen = calculateArea(2.5, 4.5);
  print('Площадь комнаты Кухня: $areaOfKitchen кв.м.');
  int areaOfHall = calculateArea(8.5, 10);
  print('Площадь комнаты Холла: $areaOfHall кв.м.');
  print('ОБЩАЯ ПЛОЩАДЬ: ${areaOfAuditory3 + areaOfKitchen + areaOfHall} кв.м.');
  print(
    'Цена доставки до Бишкека = ${shippingCost(city: 'Бишкек', weigth: 5.5)}',
  );
  print(
    'Цена доставки до города Ош = ${shippingCost(city: 'Ош', weigth: 10, discount: 300)}',
  );

  print(globalVariable);
}

double shippingCost({
  required double weigth,
  required String city,
  int discount = 0,
}) {
  // возвращаемая функция с именноваными параметрами
  double price = weigth * 100;
  if (city.toLowerCase() != 'бишкек') {
    price *= 2;
  }
  return price - discount;
}

int calculateArea(double length, double width) {
  // возвращаемая функция с позиционными параметрами
  double area = length * width;
  return area.round();
}

void calculatePerimeter(double length, double width, String roomName) {
  // невозвращаемая функция с позиционными параметрами
  double perimeter = 2 * (length + width);
  print('Периметр комнаты $roomName: $perimeter м.');
}

void addition(int num1, int num2, String phrase) {
  // невозвращаемая функция с позиционными параметрами
  int result = num1 + num2;
  print('$phrase: $result');
}

void makeTea() {
  // невозвращаемая функция без параметров
  print('Вскипятить воду');
  print('Насыпать заварку');
  print('Залить кипятком');
  print('Дать настояться');
  print('Налить в чашку');
  print('Добавить молоко или сахар по-вкусу');
  testFunction();
}

void testFunction() {
  print('Это тестовая функция');
}

String globalVariable = 'Я глобальная переменная';
void scopeExample(int paramValue) {
  print(paramValue);
  // print(localVariable);
  var localVariable = 'Я локальная переменная';
  print(localVariable);
  if (paramValue > 0) {
    print(localVariable);
    int ifBlockVariable = 7;
    print(ifBlockVariable);
  }
  // print(ifBlockVariable);
  globalVariable;
}
