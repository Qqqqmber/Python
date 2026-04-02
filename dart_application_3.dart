import 'dart:math';
import 'dart:io';
import 'package:characters/characters.dart';

enum Mood {
  happy('Счастье', '\u{1F601}', 10),
  sad('Грусть', '\u{1F623}', 3),
  boredom('Скука', '\u{1F611}', 2),
  disease('Боль', '\u{1F916}', 7),
  anxiety('Тревога', '\u{1F628}', 4);

  final String description;
  final String emoji;
  final int energy;

  const Mood(this.description, this.emoji, this.energy);

  static Mood getRandom() => values[Random().nextInt(values.length)];
}

void main() {
  stdout.write('Введите ваше имя: ');
  String name = stdin.readLineSync() ?? 'Гость';
  print('\nГенерируем случайное настроени');
  Mood mood = Mood.getRandom();
  print('Привет, $name! Твое настроение: ${mood.emoji} ${mood.description} (энергия: ${mood.energy}/10)');

  int codePoint = mood.emoji.runes.first;
  print('\nЮникод вашего эмодзи: U+${codePoint.toRadixString(16).toUpperCase()}');

  stdout.write('\nХотите просмотреть сложные эмодзи? (yes/no): ');
  String choice = stdin.readLineSync()?.toLowerCase() ?? '';
  if (choice == "yes") {
    stdout.write('Введите комбинацию эмодзи: ');
    String emodzi_combination = stdin.readLineSync() ?? '';

    print("\n16 битных единиц: ${emodzi_combination.length}");
    print("Кодовых точек: ${emodzi_combination.runes.length}");
    print("Реальных символов: ${emodzi_combination.characters.length}");

    print("\nПодробный вывод юникода:");
    int count = 0;
    for (var rune in emodzi_combination.runes) {
      count++;
      print("Символ $count: ${String.fromCharCode(rune)}  ->  U+${rune.toRadixString(16).toUpperCase()}");
    }
    print("Хорошего дня");
  }
  else {
    print('Пока!');
  }
}