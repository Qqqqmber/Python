import 'dart:io';

void main() {
  final List<String> students = ['Ivanov Ivan','Данилл Колбасенко','Сивцов Илья','Москоленко Максим','Чибук Владислав','Васильева Алина','Николаев Николай'];
  final List<String> subjects = ['Ин.яз','Рус.яз','Общ.','Хим.','Мат.'];
  final List<List<int>> grades = [[5, 4, 5, 4, 5],[4, 5, 4, 5, 4],[3, 3, 4, 3, 4],[5, 5, 5, 5, 5], [2, 3, 4, 3, 3],[4, 4, 4, 5, 4],[2, 3, 3, 2, 3],];

  while (true) {
    print('\nРасширенный отчет \n ');
    print('1. Вывести сводную таблицу');
    print('2. Поиск по студенту');
    print('3. Вывести уникальные оценки');
    print('4. Max/min оценки по предметам');
    print('5. Студенты с одной двойкой');
    print('6. Предметы выше общего среднего');
    print('7. Категории успеваемости');
    print('0. Выход');
    print('---------------------------------');
    stdout.write('Выберите действие: ');
    String? choice = stdin.readLineSync();

    switch (choice) {
      case '1':
        printSummaryTable(students, subjects, grades);
        break;
      case '2':
        searchStudent(students, subjects, grades);
        break;
      case '3':
        printUniqueGrades(grades);
        break;
      case '4':
        printMinMaxBySubject(students, subjects, grades);
        break;
      case '5':
        printStudentsWithOneF(students, subjects, grades);
        break;
      case '6':
        printSubjectsAboveAverage(subjects, grades);
        break;
      case '7':
        printStudentCategories(students, grades);
        break;
      case '0':
        print('Программа завершена.');
        return;
      default:
        print('Неверный выбор. Пожалуйста, введите число от 0 до 7.');
    }

    print('\nНажмите Enter');
    stdin.readLineSync();
  }
}
void printSummaryTable(
    List<String> students, List<String> subjects, List<List<int>> grades) {
  print('\nТаблица успеваемости:');
  
  String header = 'Студент'.padRight(20);
  for (var subject in subjects) {
    header += subject.padLeft(7);
  }
  header += ' Ср.балл'.padLeft(10);
  print(header);
  List<double> subjectSums = List.filled(subjects.length, 0);

  for (int i = 0; i < students.length; i++) {
    String row = students[i].padRight(20);
    double studentSum = 0;

    for (int j = 0; j < subjects.length; j++) {
      int grade = grades[i][j];
      row += grade.toString().padLeft(6);
      studentSum += grade;
      subjectSums[j] += grade;
    }
    double studentAvg = studentSum / subjects.length;
    row += studentAvg.toStringAsFixed(2).padLeft(10);
    print(row);
  }

  String bottomLine = 'Ср.бал по предмету'.padRight(20);
  double totalSum = 0;
  for (int j = 0; j < subjects.length; j++) {
    double subjectAvg = subjectSums[j] / students.length;
    bottomLine += subjectAvg.toStringAsFixed(2).padLeft(6);
    totalSum += subjectSums[j];
  }

  double totalAvg = totalSum / (students.length * subjects.length);
  bottomLine += totalAvg.toStringAsFixed(2).padLeft(10);
  print(bottomLine);
}

void searchStudent(List<String> students, List<String> subjects,
    List<List<int>> grades) {
  stdout.write('Введите фамилию или имя студента: ');
  String? name = stdin.readLineSync();
  
  if (name == null || name.isEmpty) {
    print('Поиск отменен');
    return;
  }
  List<int> matches = [];
  for (int i = 0; i < students.length; i++) {
    if (students[i].toLowerCase().contains(name.toLowerCase())) {
      matches.add(i);
    }
  }
  if (matches.isEmpty) {
    print('Студент не найден');
    return;
  }

  int studentIndex = matches[0];
  print('\nОценки студента: ${students[studentIndex]}');
  double sum = 0;

  for (int j = 0; j < subjects.length; j++) {
    int grade = grades[studentIndex][j];
    print('${subjects[j].padRight(12)}: $grade');
    sum += grade;
  }

  double avg = sum / subjects.length;
  String category = getCategory(avg);
  print('Средний балл: ${avg.toStringAsFixed(2)}');
  print('Категория: $category');
}

void printUniqueGrades(List<List<int>> grades) {
  Set<int> uniqueGrades = {};

  for (var studentGrades in grades) {
    uniqueGrades.addAll(studentGrades);
  }
  List<int> sorted = uniqueGrades.toList()..sort();
  print('\nУникальные оценки в журнале: ${sorted.join(', ')}');
}

void printMinMaxBySubject(
    List<String> students, List<String> subjects, List<List<int>> grades) {
  print('');
  for (int j = 0; j < subjects.length; j++) {
    int maxGrade = -1;
    int minGrade = 6;
    List<String> maxStudents = [];
    List<String> minStudents = [];

    for (int i = 0; i < students.length; i++) {
      int grade = grades[i][j];

      if (grade > maxGrade) {
        maxGrade = grade;
        maxStudents = [students[i]];
      } else if (grade == maxGrade) {
        maxStudents.add(students[i]);
      }

      if (grade < minGrade) {
        minGrade = grade;
        minStudents = [students[i]];
      } else if (grade == minGrade) {
        minStudents.add(students[i]);
      }
    }

    print('${subjects[j]}:');
    print('  Максимум $maxGrade: ${maxStudents.join(', ')}');
    print('  Минимум $minGrade: ${minStudents.join(', ')}');
  }
}

void printStudentsWithOneF(
    List<String> students, List<String> subjects, List<List<int>> grades) {
  print('');
  bool found = false;

  for (int i = 0; i < students.length; i++) {
    int fCount = 0;
    int fSubject = -1;

    for (int j = 0; j < subjects.length; j++) {
      if (grades[i][j] == 2) {
        fCount++;
        fSubject = j;
      }
    }

    if (fCount == 1) {
      found = true;
      print('${students[i]} — ${subjects[fSubject]}');
    }
  }
  if (!found) {
    print('Нет студентов с ровно одной двойкой');
  }
}

void printSubjectsAboveAverage(List<String> subjects, List<List<int>> grades) {
  double totalSum = 0;
  int totalCount = 0;

  for (var studentGrades in grades) {
    totalSum += studentGrades.reduce((a, b) => a + b);
    totalCount += studentGrades.length;
  }

  double totalAvg = totalSum / totalCount;
  print('\nОбщий средний балл: ${totalAvg.toStringAsFixed(2)}');
  List<double> subjectAvgs = List.filled(subjects.length, 0);

  for (int j = 0; j < subjects.length; j++) {
    double sum = 0;
    for (int i = 0; i < grades.length; i++) {
      sum += grades[i][j];
    }
    subjectAvgs[j] = sum / grades.length;
  }
  bool found = false;
  for (int j = 0; j < subjects.length; j++) {
    if (subjectAvgs[j] > totalAvg) {
      found = true;
      print('${subjects[j]}: ${subjectAvgs[j].toStringAsFixed(2)}');
    }
  }
  if (!found) {
    print('Нет предметов выше общего среднего');
  }
}

void printStudentCategories(List<String> students, List<List<int>> grades) {
  int excellent = 0;
  int good = 0;
  int other = 0;

  for (int i = 0; i < students.length; i++) {
    double sum = 0;
    for (int j = 0; j < grades[i].length; j++) {
      sum += grades[i][j];
    }
    double avg = sum / grades[i].length;

    if (avg >= 4.75) {
      excellent++;
    } else if (avg >= 3.75) {
      good++;
    } else {
      other++;
    }
  }
  print('\nКатегории успеваемости:');
  print('Отличники (ср.балл >= 4.5): $excellent');
  print('Хорошисты (ср.балл >= 3.5 ): $good');
  print('Остальные (ср.балл < 3.5): $other');

  if (excellent > 0) {
    print('\nСписок отличников:');
    for (int i = 0; i < students.length; i++) {
      double sum = 0;
      for (int j = 0; j < grades[i].length; j++) {
        sum += grades[i][j];
      }
      double avg = sum / grades[i].length;
      if (avg >= 4.75) {
        print('  ${students[i]}');
      }
    }
  }
}
String getCategory(double avg) {
  if (avg >= 4.5) return 'Отличник';
  if (avg >= 3.5) return 'Хорошист';
  return 'Остальные';
}