import random 

inventar = [] 
print("Добро пожаловать в игру!")
print("Хотите получить бонус?")
otv = input()
secret_number = random.randint(1, 5)
attempts = 3

if otv =="Да":
    for attempt in range(attempts):
        guess = input(f"Угадай число от 1 до 5 (попытка {attempt + 1}/{attempts}): ")
        if guess.isdigit() and int(guess) == secret_number:
            print("Правильно! Ты можешь начать свое путешествие!")
            inventar.append("Покебол")
            break
        else:
            print("Не угадал!")
            if attempt == attempts - 1:
                print(f"Правильный ответ был: {secret_number}")
                print("Но ты все равно можешь начать играть!")
else:
    print("Хорошо! Игра начинается!")
print("Как тебя зовут?")
c = input() or "Игрок"
poce_name = "нет"
poce_lvl = 1
exp = 0
poce_max_hp = poce_lvl * 20 + 300
poce_hp = poce_max_hp
pokemon_team = []  


def Player():
    team_info = f"Команда покемонов:"
    i = 1
    for pokemon in pokemon_team:
        team_info += f"{i}. {pokemon['name']} Ур.{pokemon['level']} (ХП {pokemon['hp']}/{pokemon['max_hp']})"
        i += 1
    
    return f"Имя: {c}\n{team_info}\nИнвентарь: {len(inventar)} предметов"

def monster():
    mob = ["Мэджикарп",
            "Слоупок",
             "Ледиба",
             "Пикачу",
             "Чармандер",
             "Бульбазавр",
             "Магнито",
             "Сквиртл"]
    tipe = {
        "Мэджикарп": "Водяной",
        "Слоупок": "Каменный", 
        "Ледиба": "Лесной",
        "Пикачу":"Электричество",
        "Чармандер":"Огненный",
        "Сквиртл":"Водяной",
        "Бульбазавр":"Лесной",
        "Магнито":"Металл"
    }
    level = random.randint(1, 10)
    max_hp = level * 10 + 50
    hp = max_hp
    monsr = random.choice(mob)
    tip = tipe[monsr]
    if tip == "Водяной":
        atac_name = "Гидранасос"
        atac_damage = 20 * level
    elif tip == "Лесной":
        atac_name = "Лесной ветер" 
        atac_damage = 10 * level
    elif tip == "Электричество":
        atac_damage = "Вспышка молнии"
        atac_damage = 30 * level
    elif tip == "Огненный":
        atac_damage = "Инферно"
        atac_damage = 50 * level
    elif tip == "Металл":
        atac_damage = "Раскаленный металл"
        atac_damage = 50 * level
    else:
        atac_name = "Землятрясение"
        atac_damage = 20 * level
        
    ykus_damage = 5 * level
    
    return monsr, tip, level, max_hp, atac_name, atac_damage, ykus_damage, hp

pocemon = {
    "Пикачу": ["Вспышка молнии", 50, "Царапание", 20,"Райчу"],
    "Чармандер": ["Огненный шар", 50, "Царапание", 20,"Чармелион"],
    "Сквиртл": ["Водяной пистолет", 50, "Царапание", 20,"Сквертл"], 
    "Бульбазавр": ["Ядовитая лоза", 50, "Царапание", 20,"Венозавр"]
}

poce_nam = ["Пикачу", "Чармандер", "Сквиртл", "Бульбазавр"]
poce_name = random.choice(poce_nam)
poce_spec_atac_name = pocemon[poce_name][0]
poce_spec_damage = pocemon[poce_name][1]
poce_normal_atac = pocemon[poce_name][2] 
poce_normal_damage = pocemon[poce_name][3]
poce_evol = pocemon[poce_name][4]

pokemon_team.append({
    "name": poce_name,
    "level": poce_lvl,
    "hp": poce_hp,
    "max_hp": poce_max_hp
})

print(f"\nТвой первый покемон - это {poce_name}!")
print(f"Его специальная атака: {poce_spec_atac_name}")
print(Player())

while True:
    deistvie = input("Что дальше?\n///Идти в лес/// ///Идти в покецентр/// ///Инвентарь/// ///Статус///")
    
    if deistvie == "Инвентарь":
        if len(inventar) == 0:
            print("Инвентарь пока пуст")
        else:
            print("Инвентарь:", inventar)
    elif deistvie == "Статус":
        print(Player())
        
    elif deistvie == "Идти в покецентр":
        for pokemon in pokemon_team:
            pokemon['hp'] = pokemon['max_hp']
            poce_hp = poce_max_hp
        print("Все покемоны в команде полностью восстановили здоровье!")
            
    elif deistvie == "Идти в лес":
        if poce_hp > 0:
            monsr, tip, level, max_hp, atac_name, atac_damage, ykus_damage, hp = monster()
            
            print(f"Кажется здесь кто-то есть, похоже это {monsr} (Ур.{level}, тип: {tip})!")
            shans = random.randint(1, 10)
            vibr = input("Сражаться, попытаться Сбежать или Попытаться поймать? ")
            
            if vibr == "Сбежать":
                if shans >= 5:
                    print("Вы успешно сбежали!")
                    continue
                else:
                    damage = int(poce_hp * 0.2)  
                    print(f"Побег не удался! {poce_name} получил {damage} урона")
                    poce_hp -= damage
                    if poce_hp <= 0:
                        poce_hp = 0
                        print(f"{poce_name} потерял сознание!")
                        continue
            
            elif vibr == "Попытаться поймать":
                if "Покебол" in inventar:
                    print("Бросаем покебол...")
                    shans_lovli = (max_hp - hp) / max_hp * 10
                    if random.randint(1, 10) < shans_lovli:
                        print(f" Ура! Вы поймали {monsr} (ур.{level})!")
                        pokemon_team.append({
                            "name": monsr,
                            "level": level,
                            "hp": hp,
                            "max_hp": max_hp
                        })
                        inventar.remove("Покебол")
                    else:
                        print(f" {monsr} (ур.{level}) вырвался!")
                        inventar.remove("Покебол")
                else:
                    print("У вас нет покеболов")
                
            print("=== НАЧАЛО БОЯ ===")
            print(f"{poce_name} (HP: {poce_hp}) против {monsr} (HP: {hp})")
            iе = 0
            
            while poce_hp > 0 and hp > 0:
                iе += 1
                print(f"\n--- Ход {iе} ---")
                print(f"{poce_name}: {poce_hp} HP")
                print(f"{monsr}: {hp} HP")
                print("\nВыберите атаку:")
                print("1. Царапание")

                if iе % 3 == 0: 
                    print(f"2. {poce_spec_atac_name} (доступно!)")
                print("3. Попытаться поймать")
                
                choice = input("Введите номер действия: ")
                
                if choice == "1":
                    damage = poce_normal_damage * poce_lvl
                    hp -= damage
                    print(f"{poce_name} использовал Царапание и нанес {damage} урона!")
                elif choice == "2" and iе % 3 == 0:
                    damage = poce_spec_damage * poce_lvl
                    hp -= damage
                    print(f"{poce_name} использовал {poce_spec_atac_name} и нанес {damage} урона!")
                elif choice == "3":
                    if "Покебол" in inventar:
                        print("Бросаем покебол...")
                        shans_lovli = (max_hp - hp) / max_hp * 10
                        if random.randint(1, 10) < shans_lovli:
                            print(f" Ура! Вы поймали {monsr} (ур.{level})!")
                            pokemon_team.append({
                                "name": monsr,
                                "level": level,
                                "hp": hp,
                                "max_hp": max_hp
                            })
                            inventar.remove("Покебол")
                            break
                        else:
                            print(f" {monsr} (ур.{level}) вырвался!")
                            if random.randint(1,10)>=5:
                                inventar.remove("Покебол")
                                continue
                    else:
                        print("У вас нет покеболов")
                        continue
                else:
                    print("Неверный выбор! Пропускаем ход")
                
                if hp <= 0:
                    hp = 0
                    print(f"\nПобеда! {monsr} побежден!")
                    exp += level * 10
                    if exp >= poce_lvl * 100:
                        print(f"{poce_name} повысил уровень!")
                        poce_lvl += 1
                        poce_max_hp = poce_lvl * 20 + 300
                        poce_hp = poce_max_hp
                    if poce_lvl == 5:
                        print(f"{poce_name} эволиционирует в...\n{poce_evol}")
                        poce_name = poce_evol

                    print(f"{poce_name} получает {level * 10} опыта!")
                    if random.random() < 0.5: 
                        inventar.append("Покебол")
                        print("Вы нашли Покебол!")
                    break
                
                if random.random() < 0.4: 
                    poce_hp -= atac_damage
                    print(f"{monsr} использовал {atac_name} и нанес {atac_damage} урона!")
                else:
                    poce_hp -= ykus_damage
                    print(f"{monsr} использовал Укус и нанес {ykus_damage} урона!")
                
                if poce_hp <= 0:
                    poce_hp = 0
                    print(f"\n{poce_name} потерял сознание! Бой проигран")
                    break

        else:
            print("Ваш покемон не готов сражаться! Отправляйтесь в покецентр чтобы восстановить здоровье")
    else:
        print("Неизвестное действие. Попробуйте снова")