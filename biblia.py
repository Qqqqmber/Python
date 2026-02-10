import os
from abc import ABC, abstractmethod



for file, header in [("Книги.txt", "Название|Автор|Статус\n"), 
                     ("Библиотекари.txt", "Имя\n"),
                     ("Пользователи.txt", "Имя|Книги\n")]:
    if not os.path.exists(file):
        with open(file, "w", encoding="utf-8") as f:
            f.write(header)

class Person(ABC):
    def __init__(self, name):
        self.__name = name
    
    @abstractmethod
    def menu(self): pass
    
    def get_name(self):
        return self.__name

class Book:
    def __init__(self, title, author, status="Есть"):
        self.__title = title
        self.__author = author
        self.__status = status
    
    def get_info(self):
        return f"{self.__title}|{self.__author}|{self.__status}"
    
    def is_available(self):
        return self.__status == "Есть"
    
    def change_status(self):
        self.__status = "Нет" if self.__status == "Есть" else "Есть"

class Bibliotekar(Person):
    def menu(self):
        while True:
            print('''
1. Добавить новую книгу.
2. Удалить книгу из системы.
3. Зарегистрировать нового пользователя.
4. Просмотреть список всех пользователей.
5. Просмотреть список всех книг (с их статусами)
6. Закончить смену''')
            choice = input('Выберите действие: ')
            if choice == "1":
                Book(input("Название: "), input("Автор: ")).save()
                print("Книга добавлена!")
            elif choice == "2":
                self.remove_book()
            elif choice == "3":
                self.register_user()
            elif choice == "4":
                self.show_users()
            elif choice == "5":
                self.show_books()
            elif choice == "6":
                print("Ваша смена закончилась")
                break
            else:
                print("Неверный выбор! Попробуйте 1-6")
    
    def remove_book(self):
        title = input("Название книги для удаления: ")
        books = open("Книги.txt", encoding="utf-8").readlines()[1:]
        if not any(title in book for book in books):
            print("Книга не найдена!")
            return
        
        with open("Книги.txt", "w", encoding="utf-8") as f:
            f.write("Название|Автор|Статус\n")
            for book in books:
                if title not in book:
                    f.write(f"{book}\n")
        print("Книга удалена!")
    
    def register_user(self):
        name = input("Имя нового пользователя: ")
        if name in open("Пользователи.txt", encoding="utf-8").read():
            print("Пользователь уже существует!")
        else:
            with open("Пользователи.txt", "a", encoding="utf-8") as f:
                f.write(f"{name}|\n")
            print("Пользователь зарегистрирован!")
    
    def show_users(self):
        users = open("Пользователи.txt", encoding="utf-8").readlines()[1:]
        if not users:
            print("Нет пользователей")
        else:
            for user in users:
                print(user.strip().replace("|", " - "))
    
    def show_books(self):
        books = open("Книги.txt", encoding="utf-8").readlines()[1:]
        if not books:
            print("Нет книг")
        else:
            for book in books:
                print(book.replace("|", " - "))

class Client(Person):
    def __init__(self, name):
        super().__init__(name)
        if not self.is_registered():
            print("Пользователь не найден!")
            raise ValueError
    
    def is_registered(self):
        users = open("Пользователи.txt", encoding="utf-8").readlines()[1:]
        return any(self.get_name() in user for user in users)
    
    def menu(self):
        while True:
            print('''
Добро пожаловать!
1. Просмотреть доступные книги
2. Взять книгу
3. Вернуть книгу
4. Просмотреть список взятых книг
5. Выход
''')
            choice = input("Выберите действие: ")
            if choice == "1":
                self.show_available()
            elif choice == "2":
                self.take_book()
            elif choice == "3":
                self.return_book()
            elif choice == "4":
                self.show_my_books()
            elif choice == "5":
                break
            else:
                print("Неверный выбор! Попробуйте 1-5")
    
    def show_available(self):
        books = open("Книги.txt", encoding="utf-8").readlines()[1:]
        available = [b for b in books if "Есть" in b]
        if not available:
            print("Нет доступных книг")
        else:
            for book in available:
                print(book.strip().replace("|", " - "))
    
    def take_book(self):
        title = input("Название книги: ")
        books = open("Книги.txt", encoding="utf-8").readlines()
        for i in range(1, len(books)):
            if title in books[i] and "Есть" in books[i]:
                parts = books[i].strip().split("|")
                books[i] = f"{parts[0]}|{parts[1]}|Нет\n"
                with open("Книги.txt", "w", encoding="utf-8") as f:
                    f.writelines(books)
                
                self.update_user_books(title, "add")
                print("Книга взята!")
                return
        print("Книга не найдена или уже взята!")
    
    def return_book(self):
        title = input("Название книги: ")
        users = open("Пользователи.txt", encoding="utf-8").readlines()
        for i in range(1, len(users)):
            if self.get_name() in users[i] and title in users[i]:
                books = open("Книги.txt", encoding="utf-8").readlines()
                for j in range(1, len(books)):
                    if title in books[j]:
                        parts = books[j].strip().split("|")
                        books[j] = f"{parts[0]}|{parts[1]}|Есть\n"
                        with open("Книги.txt", "w", encoding="utf-8") as f:
                            f.writelines(books)
                        self.update_user_books(title, "remove")
                        print("Книга возвращена!")
                        return  
        print("Вы не брали эту книгу или ее не существует!")
    
    def update_user_books(self, title, action):
        users = open("Пользователи.txt", encoding="utf-8").readlines()
        for i in range(1, len(users)):
            if self.get_name() in users[i]:
                parts = users[i].strip().split("|")
                books = parts[1].split(",") if parts[1] else []
                if action == "add":
                    books.append(title)
                elif action == "remove" and title in books:
                    books.remove(title)
                users[i] = f"{parts[0]}|{','.join(books)}\n"
                break
        with open("Пользователи.txt", "w", encoding="utf-8") as f:
            f.writelines(users)
    
    def show_my_books(self):
        users = open("Пользователи.txt", encoding="utf-8").readlines()[1:]
        for user in users:
            if self.get_name() in user:
                parts = user.strip().split("|")
                if parts[1]:
                    for book in parts[1].split(","):
                        print(book)
                else:
                    print("У вас нет книг")
                return

class Library:
    @staticmethod
    def save_book(book):
        with open("Книги.txt", "a", encoding="utf-8") as f:
            f.write(f"{book.get_info()}\n")

Book.save = Library.save_book

while True:
    print('Вы Библиотекарь или Клиент (или Выход)?')
    role = input("Выберите свою роль: ")
    if role == "Библиотекарь":
        name = input("Как вас зовут? ")
        with open("Библиотекари.txt", "a", encoding="utf-8") as f:
            f.write(f"{name}\n")
        print("Ваша смена началась")
        Bibliotekar(name).menu()
    elif role == "Клиент":
        name = input("Ваше имя: ")
        try:
            Client(name).menu()
        except ValueError:
            print("Сначала зарегистрируйтесь у библиотекаря!")
    elif role == "Выход":
        print("Библиотека закрыта")
        break
    else:
        print('Неверный выбор! Попробуйте еще раз')