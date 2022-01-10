/// Конструктор объекта для класса Cuboid должен получить
/// ровно три аргумента в следующем порядке: длина, ширина, высота и сохранить
/// эти три значения в length, width и height соответственно.
/// Класс Cuboid должен иметь геттер SurfaceArea, который возвращает
/// площадь поверхности кубоида, и геттер Volume, который возвращает
/// объем кубоида.
/// Класс Cube является подклассом класса Cuboid.
/// Функция конструктора Cube должна получить только один аргумент, его длину
/// и использовать это переданное значение, чтобы установить
/// length, width и height.
void exercise8() {
  var myCuboid = Cuboid(1, 2, 3);
  var myCube = Cube(2);
  print("Cuboid surface area is ${myCuboid.surfaceArea}");
  print("Cuboid volume is ${myCuboid.volume}");
  print("");
  print("Cube surface area is ${myCube.surfaceArea}");
  print("Cube volume is ${myCube.volume}");
}

class Cuboid {
  num length;
  num width;
  num height;

  Cuboid(this.length, this.width, this.height);

  num get surfaceArea =>
      2 * (length * width + length * height + height * width);

  num get volume => length * width * height;
}

class Cube extends Cuboid {
  Cube(num length) : super(length, length, length);
}

/// Вернуть сумму всех положительных чисел.
void exercise7() {
  int getSumm(List<int> input) {
    final summ = input.fold<int>(0, (a, b) {
      if (b > 0) {
        return a + b;
      } else {
        return a;
      }
    });
    return summ;
  }

  print(getSumm([1, -10, 9, -1]));
  print(getSumm([-1, -2, -3]));
  print(getSumm([]));
  print(getSumm([1, 2]));
}

/// Вернуть сумму длины всех строк в списке.
void exercise6() {
  final listOfStrokes1 = ["a", "ab", "abc"];
  final summ1 = listOfStrokes1
      .map((element) => element.length)
      .fold<int>(0, (a, b) => a + b);
  print(summ1);

  final listOfStrokes2 = ["abcde", "ab", "abc"];
  final summ2 = listOfStrokes2
      .map((element) => element.length)
      .fold<int>(0, (a, b) => a + b);
  print(summ2);

  final listOfStrokes3 = [];
  final summ3 = listOfStrokes3
      .map((element) => element.length)
      .fold<num>(0, (a, b) => a + b);
  print(summ3);
}

/// Вам дана строка «abc» и предполагая, что каждая буква в строке
/// имеет значение, равное ее позиции в алфавите, то наша строка будет
/// иметь значение 1 + 2 + 3 = 6.
/// Вам будет предоставлен список строк, и ваша задача будет вернуть
/// значения строк, умноженные на позицию этой строки в списке.
/// Позиция начинается с 1.
void exercise5() {
  int getSumm(String data) {
    final asciiCodes = data
        .replaceAll(" ", "")
        .toUpperCase()
        .codeUnits
        .map((code) => code - 64);
    var summ = 0;
    for (var code in asciiCodes) {
      summ += code;
    }
    return summ;
  }

  final data = ["dart", "abc", "good luck"];
  final result = data.asMap().entries.map((entry) {
    final index = entry.key;
    final value = entry.value;
    final summ = getSumm(value);
    final result = summ * (index + 1);
    return result;
  }).toList();

  print(result);
}

/// Вам будет дан список (list) и значение (value).
/// Проверьте, содержит ли список данное значение.
/// Список может содержать числа или строки.
/// Value возвращает true, если список содержит значение, и false, если нет.
/// Запрещено использовать indexOf.
void exercise4() {
  final list = [60, 999, 14, "dart1", 45, 95, "dart", 1];
  print(list.contains("dart"));
  print("\n");
  print(list.contains(15));
}

/// Вам будет дан год, верните век, в котором он находится.
/// Первый век охватывает период с 1 года до 100 года включительно
/// Второй - с 101 года до 200 года включительно и т. д.
void exercise3() {
  int getCentury(int year) {
    int partCentury = year % 100;
    int fullCentury = (year ~/ 100);
    int result = partCentury == 0 ? fullCentury : fullCentury + 1;
    return result;
  }

  print(getCentury(1803));
}

/// Напишите программу, которая выводит на экран числа от 1 до 100.
/// При этом вместо чисел, кратных трем, программа должна выводить слово «Super»
/// Вместо чисел, кратных пяти — слово «Quiz»
/// Если число кратно и 3, и 5, то программа должна выводить слово «Super Quiz»
void exercise1() {
  for (int i = 1; i < 101; i++) {
    if (i % 3 == 0 && i % 5 == 0) {
      print("Super Quiz");
    } else if (i % 3 == 0) {
      print("Super");
    } else if (i % 5 == 0) {
      print("Quiz");
    } else {
      print(i);
    }
  }
}
