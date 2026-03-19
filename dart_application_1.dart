// import 'dart:io';
// import 'dart:math';
// import 'dart:mirrors';
// // void main(){
// while(!false){
// print('Выберите действие: + - / ~/ % **(возвести в степень) ><(Сравнить числа) или "stop" для выхода ');
// String op=stdin.readLineSync()!.trim();
// if (op == "Stop" || op == "stop"){
// break; 
// }
// print("Введите первое число ");
// double num1=double.parse(stdin.readLineSync()!);
// if (op == "**"){
//   print("В какую степень нужно возести?");
// } else{
//   print("Введите второе число ");
// }
// double num2=double.parse(stdin.readLineSync()!);
// switch(op){
// case "+":
//   print(num1+num2);
//   break;
// case "-":
//   print(num1-num2);
//   break;
// case "/":
//   print(num1/num2);
//   break;
// case "~/":
//   print(num1~/num2);
//   break;
// case "%":
//   if (num2 != 0) {
//     print(num1 % num2);
//     } else {
//     print("На ноль делить нельзя");
//     }
//   break;
// case "**":
// print(pow(num1, num2));
// break;
// case "><":
// if (num1>= num2 && num1<= num2){
//   print("Числа равны");
// }
// else if(num1>num2){
// print("Первое число больше второго");
// }
// else if (num1<num2){
//   print("Первое число меньше второго");
// }
// break;
// default:
// print("Ошибка");
// }
// }}
// String? name; // ? обозначает что переменная может носить в себе значение типа нулл
// //a
// name=null;
// double num1=double.parse(stdin.readLineSync()?? '');//Если сообщение справа от ?? пустое то выдается значение по умолчанию слева в ""

// String? text;
// int? length=text?.length; //Длинна строки, обращаемся к разнвм методам через ?.
// print(length);

// int? number;
// number??= 0;
// print(number);
// int? a=42;
// int resault = a?? 0;
// print(a ?? 0);

// int d = int.parse(stdin.readLineSync()?? "ничего не введено");
// int b = int.parse(stdin.readLineSync()?? "ничего не введено");

// if (d.isEven){
//     print("четное");
// } else{
//     print("нечетное");
// }
// dynamic value = "Привет";
// print(value.length);
// value = 42;
// print(value -1); //dynamic может принимать любые типы данных и разрешает менять их
// dynamic v = true;
// print(v);
// v="dfdfdf";
// print(v.toUpperCase());
// Object obj = "dfs"; //Object помогает менять тип, но у него нет конкретных методов как у dynamic и он не прнимает null
// print(obj);
// List<int> a = [];
// List<dynamic> d = [1,2,3.4,'12'];
// print(d.length); //длинна списка
// print(d.reversed); //переворачивает список
// print(d.isEmpty);// возращает тру если список пустой
// print(d.isNotEmpty); //если список не пустой выдаст тру
// //  d.single//возвращает значение списка только если элемент 1
// List<int?> f=List.filled(5,null);
// print(f);

// List<int> k = List.generate(3,(int k) => k*k); // сколько раз будет происходить действие 
// List<int> k1 = List.from([1,2,3]); // копирует элементы в пустой список 
// print (k1);
// List.empty(); // пустой список

// const List<int> g = [1,2,3,4,5];
// final t = [3,4,2,1,5];
// final l;
// l = [1,2,3,4,5,6];

// List<String> w =["q","sf","sfs"];

// w.add('f'); //добавляет в конец

// w.addAll(["1eq","4324"]); //добавляет список элементов в конец 

// w.insert(1, "9"); // вставляет элемент в список по индексу 

// final el=['3','4','5'];
// el.remove("4"); // удаляет первый найденный указанный элемент

// el.removeAt(1); //удаляет по индексу

// el.removeLast(); //удаляет последний элемент из списка
// el.clear(); //очищает список
// el.removeRange(1, 3);// удаляет диапазон чисел указанных по индексу последнее не входит
// //поиск элементов
// final e2=[3,4,5,5];


// print(e2.indexOf(5)); //возвращает индекс первого найденого элемента
// print(e2.lastIndexOf(5));//возвращает индекс последненго найденого элемента
// print(e2.any((x)=>x>4)); // если хотя бы 1 элемент является по условию подходящий
// print(e2.every((x)=>x>4)); // если все элементысписка соответвуют условию то возвращает фолс
// print(e2.contains(4)); // проверяет есть ли в списке элемент со значением 4
// List<int> v =[1,2,3,4,5,6,7,8,9];

// print(v.sublist(1,3)); //срез всех элементов по индексус 1 по 3

// List <int> n = [...v,1,2,7]; // копирует все элементы из первого указанного списка в пустой
// n.sort; // сортирует от меньшего к большему 
// final  numbers = <String>['two','trwre','sdfsd'];
// numbers.sort((a,b) => a.length.compareTo(b.length)); //сравнивает и сортирует по длинне символов в элементе массива
// List<int> a = []; // Создание пустого списка целых чисел
// List<dynamic> d = [1,2,3.4,'12']; // Создание списка с элементами разных типов (динамический)
// print(d.length); // Возвращает количество элементов в списке (длину)
// print(d.reversed); // Возвращает итератор с элементами списка в обратном порядке
// print(d.isEmpty); // Проверяет, пустой ли список (возвращает true/false)
// print(d.isNotEmpty); // Проверяет, не пустой ли список (возвращает true/false)
// // d.single - возвращает единственный элемент списка, но вызовет ошибку, если элементов не 1
// List<int?> f = List.filled(5, null); // Создает список из 5 элементов, все инициализированы null
// print(f);
// List<int> k = List.generate(3, (int k) => k * k); // Генерирует список из 3 элементов по формуле (0,1,4)
// List<int> k1 = List.from([1,2,3]); // Копирует элементы из указанного списка в новый
// print(k1);
// List.empty(); // Создает пустой список (обычно используется с параметрами)
// const List<int> g = [1,2,3,4,5]; // Создает константный список (неизменяемый)
// final t = [3,4,2,1,5]; // Создает список с final - ссылка неизменяема, но содержимое можно менять
// final l;
// l = [1,2,3,4,5,6]; // Инициализация final переменной списком
// List<String> w = ["q","sf","sfs"]; // Создает список строк
// w.add('f'); // Добавляет один элемент в конец списка
// w.addAll(["1eq","4324"]); // Добавляет все элементы из другого списка в конец
// w.insert(1, "9"); // Вставляет элемент по указанному индексу
// final el = ['3','4','5'];
// el.remove("4"); // Удаляет первое вхождение указанного элемента
// el.removeAt(1); // Удаляет элемент по индексу
// el.removeLast(); // Удаляет последний элемент списка
// el.clear(); // Полностью очищает список (удаляет все элементы
// final e2 = [3,4,5,5];
// print(e2.indexOf(5)); // Возвращает индекс первого найденного элемента (2)
// print(e2.lastIndexOf(5)); // Возвращает индекс последнего найденного элемента (3)
// print(e2.any((x) => x > 4)); // Проверяет, есть ли хотя бы один элемент больше 4 (true)
// print(e2.every((x) => x > 4)); // Проверяет, все ли элементы больше 4 (false)
// print(e2.contains(4)); // Проверяет, содержит ли список элемент со значением 4 (true)
// List<int> v = [1,2,3,4,5,6,7,8,9];
// print(v.sublist(1,3)); // Возвращает часть списка с индекса 1 по 3 (не включая 3)
// List<int> n = [...v, 1, 2, 7]; // Создает новый список, копируя элементы v и добавляя новые
// n.sort; // Сортирует список по возрастанию
// final numbers = <String>['two', 'trwre', 'sdfsd'];
// numbers.sort((a,b) => a.length.compareTo(b.length)); // Сортирует по длине строк
// List<int> number = [5,10,15,20,25];
// print(number.reduce((a,b) => a + b)); // Последовательно применяет функцию к элементам (суммирует)
// List<int> f1 = [1,2,3,4];
// var i = f1.map((x) => x + 2).toList(); // Преобразует каждый элемент (прибавляет 2)
// print(i);
// var i1 = f1.where((x) => x % 2 == 0); // Оставляет только элементы, удовлетворяющие условию (четные)
// var i2 = f1.skip(3); // Пропускает первые 3 элемента, возвращает остальные
// print(i2);
// var i3 = f1.take(2); // Берет первые 2 элемента
// print(i3);
// Set<int> set1 = {1,2,3}; // Создание множества целых чисел
// Set<String> set2 = {"g","a"}; // Создание множества строк
// const Set<int> f4 = {4}; // Константное множество
// final f5 = {1,2,4}; // Множество с final ссылкой
// print(f4.first); // Возвращает первый элемент множества
// print(f4.last); // Возвращает последний элемент множества
// print(f5.length); // Возвращает размер множества
// print(f5.isEmpty); // Проверяет, пустое ли множество
// print(f5.isNotEmpty); // Проверяет, не пустое ли множество
// //print(f5.single); // Возвращает единственный элемент или ошибку
// print(f5.add(5)); // Добавляет элемент (возвращает true, если элемент был добавлен)
// f5.addAll({3,4,6}); // Добавляет все элементы из другого множества
// print(f5);
// f5.remove(3); // Удаляет указанный элемент
// print(f5);
// f5.removeWhere((x) => x % 2 == 0); // Удаляет все элементы, удовлетворяющие условию (четные)
// print(f5);
// f5.clear(); // Очищает множество
// print(f5);
// Set<String> fruits = {"яблоко","банан","апельсин"};
// print(fruits.contains("яблоко")); // Проверяет наличие элемента
// print(fruits.containsAll({"яблоко","банан"})); // Проверяет наличие всех элементов
// Set<int> union1 = {1,2,3,4};
// Set<int> union2 = {4,5,6};
// print(union1.union(union2)); // Объединение множеств
// print(union1.intersection(union2)); // Пересечение множеств
// print(union1.difference(union2)); // Разность множеств (элементы union1, которых нет в union2)
// print(union1.union(union2).difference(union2.intersection(union1))); // Симметрическая разность
// Set<int> k3 = {1,2,3,4};
// print(k3.map((x) => x * x)); // Преобразует каждый элемент
// print(k3.where((x) => x >= 2)); // Фильтрует элементы по условию
// Set<int> big = {1,2,3,4};
// Set<int> small = {1,2,3};
// print(small.every((x) => big.containsAll({1,2,3}))); // Проверяет, все ли элементы small есть в big
// print(small.reduce((a, b) => a + b)); // Суммирует все элементы
// Set<int?> ap = {}; // Создает пустое множество с возможностью хранения null
// print(ap);
// Set<String> color = {"красный","синий","зеленый","желтый","белый"};
// print(color);
// }
//СЛОВАРИ
// void main() {
//   Map<String, int> s = {}; //СОЗДАНИЕ ПУСТОГО СЛОВАРЯ
  
//   // ключ     значение
//   s["Анна"] = 9;
//   s["Борис"] = 10;
  
//   print(s);

//   Map<String, int> map = Map.from(s); //КОПИРОВАНИЕ.ПРИДЕРЖКА ИЗНАЧАЛЬНОГО ТИПА

//   Map<String, int> map_1 = Map.unmodifiable(s); //КОПИРОВАНИЕ, НО БЕЗ ВОЗМОЖНОСТИ ИЗМЕНИТЬ
//   //map_1["dwadw"] = 1;
//   print(map_1);

//   Map<String, int> map2 = {
//     "Б":5,
//     "Н":7
//   };

//   int? b = map2[""]; //ПРОВЕРКА ХРАНЕНИЯ ТИПА ДАННЫХ С ОПРЕДЕЛЕННЫМ КЛЮЧЕМ
//   int? b1 = map2["Б"];
//   print(b);
//   print(b1);

//   if (map2.containsKey("Б")) { // ПРОВЕРКА СУЩЕСТВОВАНИЕ КЛЮЧА
//     print(map2["Б"]);
//   }

//   else {
//     print("Не найдено");
//   }

//   if (map2.containsValue(5)) {
//     print(map2);
//   }

//   else {
//     print("Не найдено");
//   }


//   map2["Б"] = 79; //ИЗМЕНЕНИЯ ЗНАЧЕНИЯ
//   print(map2);

//   map2.addAll({ //Добавление новых значений
//     "ха": 42
//   });
//   print(map2);

//   map2.putIfAbsent("ха1", ()=>100); //Добавление значений, только если ключа нет
//   print(map2); 
//   map2.putIfAbsent("ха1", ()=>101); //Добавление значений, только если ключа нет
//   print(map2); 

//   map2.update("Б", (i)=>i+10); //Обновляет значение, если есть ключ
//   print(map2);

//   map2.updateAll((key, value) => value * 2);//ОБНОВЛЕНИЯ ДЛЯ ВСЕЙ КОЛЕКЦИИ
//   print(map2);

//   map2.remove("ха");
//   print(map2);

//   map2.removeWhere((key, value) => value <= 20); //УДАЛЕНИЕ С УСЛОВИЕМ
//   print(map2);

//   //ПРОВЕРКА СВОЙСТВ КОЛЕКЦИЙ
//   print(map2.isEmpty);
//   print(map2.isNotEmpty);
//   print(map2.keys);
//   print(map2.values);
//   print(map2.entries); //ВОЗВРАЩАЕТ ЗНАЧЕНИЯ
//   print(map2.length);

//   map2.forEach((key, value)=>print("$key, $value"));

//   for (var i in map2.entries) {
//     print(i);
//   }

//   for (var i in map2.keys) {
//     print(i);
//   }

//   List<String> numbers = ["adw", "wadaw", "efrad"];

//   //АВТОСОЗДАНИЕ КОЛЕКЦИИ
//   Map<String, int> map10 = Map.fromIterable((numbers),
//   key: (element) => element, 
//   value: (element) => (element as String).length);

//   print(map10); 


//   //СОЗДАНИЕ СЛОВАРЯ ЧЕРЕЗ СПИСОК
//   var a = [
//     MapEntry("a", 1),
//     MapEntry("b", 2)
//   ];

//   Map<String, int> map11 = Map.fromEntries(a);
//   print(map11);

//   //СОЗДАНИЕ СЛОВАРЯ С ПОВТОРЕНИЯМИ СЛОВ

//   String text = "dart dart code flutter datr flutter";

//   List<String> listMap = text.split(" ");
//   Map<String, int> map12 = {};

//   for (var i in listMap) {
//     map12.update(
//         i,
//         (word) => word+1,
//         ifAbsent: () => 1,
//       );
//   }
//   print(map12);

//   List<Map<String,dynamic>> students = [
//     {"name": "Анна", "grade": 2},
//     {"name": "Иван", "grade": 5}
//   ];

//   Map<int, List<String>> grades = {};
//   for(var i in students) {
//     String name = i["name"] as String; //Сохранение значений в другую переменную
//     int grade = i["grade"] as int;

//     grades.putIfAbsent(grade, () => []); //ЕСЛИ КЛЮЧА НЕТ, ТО ОН БУДЕТ ТУДА ЗАПИСЫВАТЬ ПУСТОЙ СПИСОК
//     grades[grade]?.add(name); //ТОЛЬКО ЕСЛИ ЕСТЬ ЗНАЧЕНИЕ ДОБАВЛЯЕМ ЗНАЧЕНИЕ В СПИСОК
//   }

//   print(grades);

//   Map<int, int>? map15 = {1:6};
//   map15 = null; //ПЕРЕДАЧА ЗНАЧЕНИЯ null
//   print(map15);

//   //КОРТЕЖИ
//   var a1 = (1,2); //СОЗДАНИЕ
//   print(a1);

//   (int, int) num = (1,2); //СОЗДАНИЕ С УКАЗАНИЕМ ЯВНОГО ТИПА
//   print(num);
//   import 'dart:ffi';
// import 'dart:io';
// import 'dart:math';

// import 'package:dart_application_class_work_1/dart_application_class_work_1.dart' as dart_application_class_work_1;

// void main(List<String> arguments) {
/*  List<int> a = [];
List<dynamic> d = [1,2,3.4,'12'];
print(d.length); //длинна списка
print(d.reversed); //переворачивает список
print(d.isEmpty);// возращает тру если список пустой
print(d.isNotEmpty); //если список не пустой выдаст тру
//  d.single//возвращает значение списка только если элемент 1
List<int?> f=List.filled(5,null);
print(f);

List<int> k = List.generate(3,(int k) => k*k); // сколько раз будет происходить действие 
List<int> k1 = List.from([1,2,3]); // копирует элементы в пустой список 
print (k1);
List.empty(); // пустой список

const List<int> g = [1,2,3,4,5];
final t = [3,4,2,1,5];
final l;
l = [1,2,3,4,5,6];

List<String> w =["q","sf","sfs"];

w.add('f'); //добавляет в конец

w.addAll(["1eq","4324"]); //добавляет список элементов в конец 

w.insert(1, "9"); // вставляет элемент в список по индексу 

final el=['3','4','5'];
el.remove("4"); // удаляет первый найденный указанный элемент

el.removeAt(1); //удаляет по индексу

el.removeLast(); //удаляет последний элемент из списка
el.clear(); //очищает список
// удаляет диапазон чисел указанных по индексу последнее не входит
//поиск элементов
final e2=[3,4,5,5];


print(e2.indexOf(5)); //возвращает индекс первого найденого элемента
print(e2.lastIndexOf(5));//возвращает индекс последненго найденого элемента
print(e2.any((x)=>x>4)); // если хотя бы 1 элемент является по условию подходящий
print(e2.every((x)=>x>4)); // если все элементысписка соответвуют условию то возвращает фолс
print(e2.contains(4)); // проверяет есть ли в списке элемент со значением 4
List<int> v =[1,2,3,4,5,6,7,8,9];

print(v.sublist(1,3)); //срез всех элементов по индексус 1 по 3

List <int> n = [...v,1,2,7]; // копирует все элементы из первого указанного списка в пустой
n.sort; // сортирует от меньшего к большему 
final  numbers = <String>['two','trwre','sdfsd'];
numbers.sort((a,b) => a.length.compareTo(b.length)); //сравнивает и сортирует по длинне символов в элементе массива

List<int> number = [5,10,15,20,25];
print(number.reduce((a,b)=>a+b));

List<int> f1 = [1,2,3,4];

var i = f1.map((x)=>x+2).toList();
print(i);
var i1 = f1.where((x)=>x%2 == 0);

var i2 = f1.skip(3);
print(i2);

var i3=f1.take(2);
print(i3);

Set<int> set1 = {1,2,3};
Set<String> set2 = {"g","a"};

const Set<int> f4 ={4};

final f5 = {1,2,4};

print(f4.first);
print(f4.last);

print(f5.length);
print(f5.isEmpty);
print(f5.isNotEmpty);
//print(f5.single);

print(f5.add(5));
f5.addAll({3,4,6});
print(f5);

f5.remove(3);
print(f5);

f5.removeWhere((x)=> x%2==0);
print(f5);

f5.clear();
print(f5);

Set<String> fruits={"яблоко","банан","апельсин"};
print(fruits.contains("яблоко"));
print(fruits.contains({"яблоко","банан"}));

Set<int> union1 = {1,2,3,4};
Set<int> union2 = {4,5,6};
print(union1.union(union2));

print(union1.intersection(union2));

print(union1.difference(union2));

print(union1.union(union2).difference(union2.intersection(union1)));

Set<int> k3 = {1,2,3,4};
print(k3.map((x) => x*x));

print(k3.where((x) => x>=2));

Set<int> big = {1,2,3,4};
Set<int> small = {1,2,3};

print(small.every((x)=>big.containsAll({1,2,3})));

print(small.reduce((a,b)=>a+b));

Set<int?> ap = {};
print(ap);

Set<String> color = {"красный","синий","зеленый","желтый","белый"};
print(color);

Set<int?> numbers_1 = {};
numbers_1.addAll({1,2,3,4,5});*/

// for (int i = 1; i<=5; i++) {
//   print(i);
// }
// print("");

// for (int i = 5; i >= 1; i--) {
//   print(i);
// }
// print("");
// for (int i = 1; i <= 2; i++){
//   for (int j = 1; j <= 2; j++) {
//     print(i*j);
//   }
// }

// int sum = 0;
// for (int i = 1; i <= 10; sum +=i,i++);
// print(sum);

// List<String> list = ["банан","апельсин"];

// print("");
// for (var i in list) {
//   print(i);
// }
// print("");

// for (var e in list.asMap().entries) { //приписание нашего списка к словарю
//   print("${e.key}, ${e.value}");
// }
// print("");
// String S = "Hello world";
// for (var i in S.split("")) {
//   print(i);
// }

// print("");


// int i = 1;
// while (i <= 5) {
//   print(i);
//   i++;
// }

// print("");

// int number = 1000;
// while (number>0) {
//   print(number);
//   number~/=2;
// }

// while(true) {
//   print("Бесконечный цикл");
//   break;
// }

// // do {
// //   //тело цикла
// // } while(условие);

// i = 1;

// do {
//   print(i);
//   i++;
// } while(i<= 5);

// print("");

// List<int> d = [1,2,3,4];
// d.forEach(print);


// print("");


// List<int> d1 = [1,2,3,4];
// d1.forEach((d) {
//   print(d+2);
// });

// print("");

// for (int i = 1; i <= 10; i++) {
//   if (i == 5) {
//     break;
//   }

//   print(i);
// }

// print("");

// for (int i = 1; i <= 5; i++) {
//   print(i);
// }

// for (int i = 10; i >= 1; i--) {
//   print(i);
// }

// print("");

// sum = 0;

// for (int i = 1; i <= 10; i++) {
//   sum += i;
// }

// print(sum);

// print("");

// for (int i = 2; i <= 20; i++) {
//   if (i%2 == 0) {
//     print(i);
//   }
// }

// List<int> list1 = [3,-1,5,-2,7,0,-4];
// list1.forEach((int number_1){
//   if (number_1 > 0) {
//     print(number_1);
//   }
// });


// // }
// import 'dart:io';
// import 'dart:math';
// import 'dart:mirrors';
// void main() {
//   //ЗАПИСИ
//   var person = ("Sergei", 42); // НЕЯВНОЕ ОПРЕДЛЕНИЕ КОРТЕЖА
//   print(person);

//   (String,int) person1 = ("Sergei", 42); //ЯВНОЕ ОПРЕДЛЕНИЕ КОРТЕЖА
//   print(person1);

//   print(person1.$1); //Обращение к определенным элементам
//   print(person1.$2); //АНОНИМНЫЕ КОРТЕЖИ

//   var person2 = (name:"Sergei", age:24);
//   print(person2.name);
//   print(person2.age);

//   ({int age, String name}) person3 = (name:"Tom", age:32);
//   print(person3); //ИМЕНОВАННЫЕ КОРТЕЖИ 

//   var person4 = ("Nikolai", age: 9);
//   print(person4.$1);
// }
// void person((String, int) person5) {
//   print(person5.$1);
//   print(person5.$2);
// void main() {
//   //ЗАПИСИ
//   var person = ("Sergei", 42); // НЕЯВНОЕ ОПРЕДЛЕНИЕ КОРТЕЖА
//   print(person);

//   (String,int) person1 = ("Sergei", 42); //ЯВНОЕ ОПРЕДЛЕНИЕ КОРТЕЖА
//   print(person1);

//   print(person1.$1); //Обращение к определенным элементам
//   print(person1.$2); //АНОНИМНЫЕ КОРТЕЖИ

//   var person2 = (name:"Sergei", age:24);
//   print(person2.name);
//   print(person2.age);

//   ({int age, String name}) person3 = (name:"Tom", age:32);
//   print(person3); //ИМЕНОВАННЫЕ КОРТЕЖИ

//   var person4 = ("Nikolai", age: 9);
//   print(person4.$1);
//   print(person4.age);

  

  
// }
//ФУНКЦИЯ

// void main() {
//   var person5 = f();
//   print(person5); //ИМЕНОВАНАЯ ФУНКЦИЯ
  
// }

// (String, int) f() {
//     return("Tom", 22);
//   }

  
// var person6 = ("Ya", 8);

// void person((String, int) person5) {
//   print(person6.$1);
//   print(person6.$2);
// }

// void main() {
  
//   var person1 = ("hh", 8);
//   var person2 = ("hh", 8);
//   var person3 = (name:"hh", age:8);

//   print(person1 == person2);
//   print(person1 == person3); //кортежи разных типов сравнить не получиться

//   List<(int,int)> list = [
//     (0,0)
//   ];

//   var record = (4,5);

//   var (a,b) = record;
//   print("$a, $b");

//   List<(int,int)> list1 = [
//     (0,0),
//     (4,5),
//     (5,6)
//   ];

//   for (var i in list1) {
//     print("${i.$1}, ${i.$2}");
//   }

//   List<({int x,int y})> list2 = [
//     (x:0,y:0),
//     (x:4,y:5),
//     (x:5,y:6)
//   ];

//   for (var i in list2) {
//     print("${i.x}, ${i.y}");
//   }

//   List<int> numbers = [1,2,3];
//   Iterable<int> it = numbers; //задаем последовательность элементов, которые ранее были в списке
  
//   for (var i in it) {
//     print(i);
//   }


// List<int> list3 = [1,2,3,45];

// Iterable<int> events = list3.where((x) => x <= 3); //составление последовательности по условию
// print(events);
// print(events.toList());

// //итератор используется для перебора тех или иных элементов (преобразование, фильтрация данных)

// Iterable<int> num = [1,2,3,4];
// var first = num.take(3); //будет выводить элементы от 1 до 3
// print(first);

// var second = num.skip(2); //идет перебор со 2 элемента по индексу и до конца
// print(second);

// var f = [1,2,3,4,5,6,7,8,9]
//   .skip(1)
//   .take(3)
//   .where((x)=>x%2 == 0);

// print(f.toList()); //преобразование в список обязательно, а  иначе будет возвращать итератор

// Iterable<int> r = [1,2,3,4,5,6];

// int sum = r.reduce((a,b)=>a+b); //итератор принимает значение и сводит все к одному числу
// print(sum);

// int sum2 = r.fold(3, (a,v) => a*v); //отчет с определенного значения
// print(sum2);

// var nums = range(0,5);
// print(nums);
// print(nums.toList());  
// }

// //создание собственного итератора

// Iterable<int> range(int start, int end) sync*{ //sync - выдача элементов постепенно
//  int s = start;
//  while(s<end) {
//   yield s; //вывод значениея
//   s++;
//  }
// }

// void main(){ // в [] небязательный параметр по умолчанию тип dinamic так что после выполнения программы он сам определится 
// Function func=prinHt;// создали обьект и присвоили ему ссылку на обьект 
// }
// // именованный параметр записывается в {}
// // required - обязательный параметр  
// // картедж был придуман что бы возвращать несколько значений
// // если функция имеет тип void то ее никак нельзя использовать как аргумент
// void prinHt(){


// }
// void func2(Function func){ // можно передавать функции в качестве параметров 

// }

// void operation(int a,int b, Function func1){
// int result=func1(a,b); // сохраняем результат выполнения функции func1


// }

void main(){
formatName("Илья",'Лох');
formatName("Макс",'Масколенко','Олегович');
print(calculate(1, 2, '-'));
print(calculate(1, 0, '/'));
print(countSigns([1,2,-3,0,-5,0]));
List<int> doubled = transformList([1,2,3,4,56], (int x) => x * 2);
print(doubled);
}

void formatName(String name,String surname,[String? midlename]){
    print(name + ' ' + surname + ' ' + (midlename ?? '') );
}

double? calculate(double x,double y, String operation){
    if (operation == "-"){
        return x - y;
    }
    if (operation == "+"){
        return x + y;
    }
    if (operation == "*"){
        return x * y;
    }
    if (operation == "/"){
        if (y == 0){
        print('На нуль делить нельзя!');
        return null;
        }
    return x / y;
    }
    return null;
}

String countSigns(List<int> arrey){
int plus = 0;
int minus = 0;
int nole = 0;
for (int i = 0; i< arrey.length; i++){
    if (arrey[i] > 0){
        plus++;
    }
    if (arrey[i] < 0){
        minus++;
    }
    if (arrey[i] == 0){
        nole++;
    }
}
return "Больше нуля ${plus}\n Меньше нуля ${minus}\n Нулей ${nole}";
}

List<int> transformList(List<int> list, int Function(int) transformer) {
  List<int> result = [];
  for (int element in list) {
    result.add(transformer(element));
  }
  return result;
}
