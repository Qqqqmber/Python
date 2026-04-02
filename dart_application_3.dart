import 'dart:math';
import 'dart:io';
import 'package:characters/characters.dart';

enum Mood {
  happy('Счастье', '\u{1F600}', 10),
  sad('Грусть', '\u{1F622}', 3),
  boredom('Скука', '\u{1F611}', 2),
  disease('Боль', '\u{1F912}', 7),
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
  print('\nГенерируем случайное настроение...');
  
  Mood mood = Mood.getRandom();

  print('Привет, $name! Твое настроение: ${mood.emoji} ${mood.description} (энергия: ${mood.energy}/10)');

  int codePoint = mood.emoji.runes.first;
  print('\nЮникод вашего эмодзи: U+${codePoint.toRadixString(16).toUpperCase()}');

  stdout.write('\nХотите просмотреть сложные эмодзи? (yes/no): ');
  String answer = stdin.readLineSync()?.toLowerCase() ?? 'нет';

  if (answer == 'yes' || answer == 'y') {
    stdout.write('Введите комбинацию эмодзи: ');
    String input = stdin.readLineSync() ?? '';

    int utf16Units = input.length;
    int codePoints = input.runes.length;
    int realChars = input.characters.length;

    print('\nАнализ строки "$input":');
    print('- 16-битных единиц: $utf16Units');
    print('- Кодовых точек: $codePoints');
    print('- Реальных символов: $realChars');
    print('\nПодробный вывод юникода:');
    int index = 1;
    for (var char in input.characters) {
      List<String> codePointsList = [];
      for (var rune in char.runes) {
        codePointsList.add('U+${rune.toRadixString(16).toUpperCase()}');
      }
      print('Символ $index: $char → ${codePointsList.join(' ')}');
      index++;
    }
  }

  print('\nСпасибо, приходите снова!');
}