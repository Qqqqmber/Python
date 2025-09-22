while True:
    pin = ["пароль"]
    v = input("Введите пароль")
    if v in pin:
        print("Доступ разрешeн")
        break
    else:
        print("Неверный пароль попробуйте еще")
while True:
    ab = [1,2,3,4,5,6,7,8,9]
    a = int(input("Введите первое число "))
    b = int(input("Введите второе число "))
    if a >= 1 and a  is not 0:
        print("первое число положительное")
    elif a<=-1 and not 0:
        print("первое число отрицательное")
    else:
        print("Первое число рациональное")
    if b >= 1 and not 0:
        print("второе число положительное")
    elif b<=-1 and not 0:
        print("Второе число отрицательное")
    else:
        print("Второе число рациональное")
        
        print("второе число отрицательное")
    c = int(input("Выберите действие 1:сложение 2:вычитание 3:умножение 4:деление 5: целочисленное деление 6:найти остаток от деления 7: возвести в степень 8: пропустить 9: выход"))
    if c not in ab:
        print("Выберите вариант из указанного")
    elif c == 1:
        print("Ответ:",a+b)
        break
    elif c ==2:
        print("Ответ:",a-b)
        break
    elif c is 3:
        print("Ответ:",a*b)
        break
    elif c ==4:
        if  b != 0:
            print("Ответ:",a/b)
            break
        else:
            print("На 0 делить нельзя")        
    elif c ==5:
        print("Ответ:",a//b)
        break
    elif c ==6:
        print("Ответ:",a%b)
        break
    elif c ==7:
        print("Ответ:",a**b)
        break
    elif c ==8:
        print("Пропуск")
        break
    elif c == 9 :
        print("Удачи")
        break
print("Сравним")
if a> b:
    print("первое число больше")
elif a<b:
    print("второе число больше")
else:
    print("Они равны")
print('Введите побитовый оператор: & Побитовое И,| Побитовое ИЛИ ,^ Побитовое ИСКЛЮЧАЮЩЕЕ ИЛИ, ~ Побитовое НЕ, << Побитовый сдвиг влево, >> Побитовый сдвиг вправо, пропуск')
z = input()
if  z == "&":
    print(a&b)
elif z == "|":
    print(a|b)
elif z == "^":
    print(a^b)
elif z == "~":
     b = ~a
     print(b)
elif z == "<<":
    print(a>>b)
elif z == ">>":
    print(a>>b)
while True:
   otv = input("Вам понравилась программа?")
   if otv == "да" or "":
    print("Спасибо за ответ")
    break
   else:
    print("Введите да или нет")    




