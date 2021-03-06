#language: ru
@tree
Функционал: Правильность формирования документа перерасчет - операция изменение параметров расчета

Как <Роль>
Я хочу <описание функционала>
Чтобы <бизнес-эффект>

Контекст:
    Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: <ПерерасчетВСлучаеКорректировкиПоказанийПоОтоплению>
    И я подготавливаю тестовые данные
        И я загружаю макет "ПерерасчетВСлучаеКорректировкиПоказанийПоОтоплению"
        И я перепровожу созданные документы
            И В командном интерфейсе я выбираю 'Работа с абонентами' 'Открытие/закрытие лс физического лица'
            Тогда открылось окно 'Открытие/закрытие лс физического лица'
            И в таблице 'Список' я выделяю все строки
            И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюПровести' на элементе формы с именем "Список"
            И В командном интерфейсе я выбираю 'Работа с абонентами' 'Регистрация показаний абонента'
            Тогда открылось окно 'Регистрация показаний абонента'
            И в таблице 'Список' я выделяю все строки
            И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюПровести' на элементе формы с именем "Список"
            И В командном интерфейсе я выбираю 'Работа с абонентами' 'Приходный кассовый ордер'
            Тогда открылось окно 'Приходный кассовый ордер'
            И в таблице 'Список' я выделяю все строки
            И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюПровести' на элементе формы с именем "Список"
    И Я запускаю выполнение начислений по организации 'ОАО "СКЭК"' и району 'Березовский городской округ' и МКД '' с 'Июль' '2019' по 'Ноябрь 2019'
    И я проверяю полученные результаты
        И В командном интерфейсе я выбираю 'Расчет начислений' 'Перерасчет'
        Тогда открылось окно 'Перерасчет'
        И в таблице "Список" я перехожу к первой строке
        И в таблице "Список" я выбираю текущую строку
        Тогда открылось окно 'Перерасчет * от *'
        И я нажимаю на кнопку 'Заполнить'
        И я перехожу к закладке "Расшифровка"
        Тогда в таблице "Расшифровка" количество строк "равно" 9  
        И я проверяю правильность расчета услуги ХВС                 
            И в таблице "Расшифровка" я перехожу к строке:
            | Период начисления | Услуга                    | Точка учета                   | Начало периода | Конец периода | Снимаем |
            | '01.07.2019'      | 'Холодное водоснабжение'  | 'ввод_ХВС + водоотведение'    |'01.07.2019'    |'01.08.2019'   | 'нет' | 
            И в таблице "Расшифровка" текущая строка равна:
            | Способ начисления | Объем услуги | Объем потребленный |
            | 'По приборам'     | '4,000000'   | '4,000000'         |
            И в таблице "Расшифровка" я перехожу к строке:
            | Период начисления | Услуга                    | Точка учета                   | Начало периода | Конец периода | Снимаем |
            | '01.08.2019'      | 'Холодное водоснабжение'  | 'ввод_ХВС + водоотведение'    |'01.08.2019'    |'01.09.2019'   | 'нет' | 
            И в таблице "Расшифровка" текущая строка равна:
            | Способ начисления | Объем услуги  | Объем потребленный    |
            | 'По приборам'     | ''            | ''                    |
            И в таблице "Расшифровка" я перехожу к строке:
            | Период начисления | Услуга                    | Точка учета                   | Начало периода | Конец периода | Снимаем |
            | '01.09.2019'      | 'Холодное водоснабжение'  | 'ввод_ХВС + водоотведение'    |'01.09.2019'    |'01.10.2019'   | 'нет' | 
            И в таблице "Расшифровка" текущая строка равна:
            | Способ начисления | Объем услуги  | Объем потребленный    |
            | 'По приборам'     | ''            | ''                    |
        И я проверяю правильность расчета услуги водоотведение               
            И в таблице "Расшифровка" я перехожу к строке:
            | Период начисления | Услуга                    | Точка учета                   | Начало периода | Конец периода | Снимаем |
            | '01.07.2019'      | 'Водоотведение'           | 'ввод_ХВС + водоотведение'    |'01.07.2019'    |'01.08.2019'   | 'нет' | 
            И в таблице "Расшифровка" текущая строка равна:
            | Способ начисления | Объем услуги | Объем потребленный |
            | 'По приборам'     | '4,000000'   | '4,000000'         |
            И в таблице "Расшифровка" я перехожу к строке:
            | Период начисления | Услуга                    | Точка учета                   | Начало периода | Конец периода | Снимаем |
            | '01.08.2019'      | 'Водоотведение'           | 'ввод_ХВС + водоотведение'    |'01.08.2019'    |'01.09.2019'   | 'нет' | 
            И в таблице "Расшифровка" текущая строка равна:
            | Способ начисления | Объем услуги  | Объем потребленный |
            | 'По приборам'     | ''            | ''         |
            И в таблице "Расшифровка" я перехожу к строке:
            | Период начисления | Услуга                    | Точка учета                   | Начало периода | Конец периода | Снимаем |
            | '01.09.2019'      | 'Водоотведение'           | 'ввод_ХВС + водоотведение'    |'01.09.2019'    |'01.10.2019'   | 'нет' | 
            И в таблице "Расшифровка" текущая строка равна:
            | Способ начисления | Объем услуги  | Объем потребленный |
            | 'По приборам'     | ''            | ''         |                 
        И я проверяю правильность расчета услуги отопление             
            И я перехожу к закладке "Результат"
            И в таблице "РезультатПерерасчета" я перехожу к строке:
            | Период начисления | Услуга      |          
            | '01.07.2019'      | 'Отопление' |
            И в таблице "РезультатПерерасчета" текущая строка равна:
            | Сумма До   |  Сумма После |
            | '3 805,77' | '3 805,77'   |
            И в таблице "РезультатПерерасчета" я перехожу к строке:
            | Период начисления | Услуга      |          
            | '01.08.2019'      | 'Отопление' |
            И в таблице "РезультатПерерасчета" текущая строка равна:
            | Сумма До   | Сумма После |
            | '3 805,77' | '3 805,77'  |
            И в таблице "РезультатПерерасчета" я перехожу к строке:
            | Период начисления | Услуга      |          
            | '01.09.2019'      | 'Отопление' |
            И в таблице "РезультатПерерасчета" текущая строка равна:
            | Сумма До   | Сумма После |
            | '3 805,76' | '3 805,76'  |
        И я нажимаю на кнопку 'Записать и закрыть'
        И я жду закрытия окна 'Перерасчет * от *' в течение 20 секунд