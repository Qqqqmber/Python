import 'dart:io';
import 'dart:math';
void main(){
while(!false){
print('Выберите действие: + - / ~/ % **(возвести в степень) ><(Сравнить числа) или "stop" для выхода ');
String op=stdin.readLineSync()!.trim();
if (op == "Stop" || op == "stop"){
break; 
}
print("Введите первое число ");
double num1=double.parse(stdin.readLineSync()!);
if (op == "**"){
  print("В какую степень нужно возести?");
} else{
  print("Введите второе число ");
}
double num2=double.parse(stdin.readLineSync()!);
switch(op){
case "+":
  print(num1+num2);
  break;
case "-":
  print(num1-num2);
  break;
case "/":
  print(num1/num2);
  break;
case "~/":
  print(num1~/num2);
  break;
case "%":
  if (num2 != 0) {
    print(num1 % num2);
    } else {
    print("На ноль делить нельзя");
    }
  break;
case "**":
print(pow(num1, num2));
break;
case "><":
if (num1>= num2 && num1<= num2){
  print("Числа равны");
}
else if(num1>num2){
print("Первое число больше второго");
}
else if (num1<num2){
  print("Первое число меньше второго");
}
break;
default:
print("Ошибка");
}
}
}
