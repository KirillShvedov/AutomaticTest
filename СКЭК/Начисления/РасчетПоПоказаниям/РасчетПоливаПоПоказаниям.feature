﻿#language: ru
@tree
@card "https://trello.com/c/Roiq2Z1G"
Функционал: <описание фичи>
    Как <Роль>
    Я хочу <проверить расчет расчет по показаниям>
    Чтобы <бизнес-эффект>
    Карточка "https://trello.com/c/Roiq2Z1G"
Контекст:
    Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: <РасчетПоливаПоПоказаниям>
    И я подготавливаю тестовые данные
        И я загружаю макет "РасчетПоливаПоПоказаниям.mxl"
    И я перепровожу загруженные данные
        И В командном интерфейсе я выбираю 'Работа с МКД' 'Операции с МКД'
        Тогда открылось окно 'Операции с МКД'
        И в таблице 'Список' я выделяю все строки
        И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюПровести' на элементе формы с именем "Список"
        И В командном интерфейсе я выбираю 'Администрирование' 'Ввод начальных остатков'
        Тогда открылось окно 'Ввод начальных остатков'
        И в таблице 'Список' я выделяю все строки
        И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюПровести' на элементе формы с именем "Список"
        И В командном интерфейсе я выбираю 'Работа с абонентами' 'Регистрация показаний абонента'
        Тогда открылось окно 'Регистрация показаний абонента'
        И в таблице 'Список' я выделяю все строки
        И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюПровести' на элементе формы с именем "Список"
    И Я запускаю выполнение начислений по организации 'ОАО "СКЭК"' и району 'Кемеровский городской округ' и МКД 'Кемерово г, Павленко ул, Дом № 12' с 'Июль' '2019' по 'Август 2019'
    И я проверяю полученные результаты
        И Я открываю навигационную ссылку "e1cib/list/РегистрНакопления.энргОбъемНачислений"
        Тогда открылось окно 'Объем начислений'
        И в таблице "Список" я активизирую поле "Абонент"
        И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюНайти' на элементе формы с именем "Список"
        Тогда открылось окно 'Найти'
        И из выпадающего списка "&Что искать" я выбираю по строке 'Кошелева Ирина Валерьевна'
        И я перехожу к следующему реквизиту
        И я нажимаю на кнопку '&Найти'        
        Тогда в таблице "Список" количество строк "равно" 8
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                     |Услуга                   |Точка учета                |Вид начисления |Способ начисления |Направление использования ТУ |Прибор учета |Шкала      |Сверх норматива |Сумма    |Объем услуги соц норма |Объем услуги |Объем потребленный |
        |'31.07.2019 23:59:59' |'Кошелева Ирина Валерьевна' |'Холодное водоснабжение' |'ввод_ХВС + водоотведение' |'Начисление'   |'По приборам'     |'Основное направление'       |'30680781'   |'Основная' |'Нет'           |'171,44' |'5,010000'             |'5,010000'   |'7,000000'         |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                     |Услуга                   |Точка учета                |Вид начисления |Способ начисления |Направление использования ТУ |Прибор учета |Шкала      |Сверх норматива |Сумма    |Объем услуги соц норма |Объем услуги |Объем потребленный |
        |'31.07.2019 23:59:59' |'Кошелева Ирина Валерьевна' |'Холодное водоснабжение' |'ввод_ХВС + водоотведение' |'Начисление'   |'По приборам'     |'Основное направление'       |'30680781'   |'Основная' |'Да'            |'68,10'  |''                     |'1,990000'   |''                 |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                     |Услуга                   |Точка учета                 |Вид начисления |Способ начисления        |Направление использования ТУ |Прибор учета |Объем услуги |Объем потребленный |
        |'31.07.2019 23:59:59' |'Кошелева Ирина Валерьевна' |'Водоотведение'          |'стоки_ГВС + водоотведение' |'Начисление'   |'Начисление по среднему' |'Основное направление'       |'1'          |'2,166667'   |'2,166667'         |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                     |Услуга                   |Точка учета                 |Вид начисления |Способ начисления        |Направление использования ТУ |Прибор учета |Объем услуги |Объем потребленный |
        |'31.07.2019 23:59:59' |'Кошелева Ирина Валерьевна' |'Водоотведение'          |'ввод_ХВС + водоотведение'  |'Начисление'   |'По приборам'            |'Основное направление'       |'30680781'   |'7,000000'   |'7,000000'         |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                     |Услуга                   |Точка учета                 |Вид начисления |Способ начисления        |Направление использования ТУ |Прибор учета |Объем услуги |Объем потребленный |
        |'31.08.2019 23:59:59' |'Кошелева Ирина Валерьевна' |'Холодное водоснабжение' |'ввод_ХВС + водоотведение'  |'Начисление'   |'По приборам'            |'Основное направление'       |'30680781'   |''           |''                 |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                     |Услуга                   |Точка учета                 |Вид начисления |Способ начисления        |Направление использования ТУ |Прибор учета |Объем услуги |Объем потребленный |
        |'31.08.2019 23:59:59' |'Кошелева Ирина Валерьевна' |'Водоотведение'          |'стоки_ГВС + водоотведение' |'Начисление'   |'По приборам'            |'Основное направление'       |'1'          |'2,000000'   |'2,000000'         |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                     |Услуга                   |Точка учета                 |Вид начисления |Способ начисления        |Направление использования ТУ |Прибор учета |Объем услуги |Объем потребленный |
        |'31.08.2019 23:59:59' |'Кошелева Ирина Валерьевна' |'Водоотведение'          |'ввод_ХВС + водоотведение'  |'Начисление'   |'По приборам'            |'Основное направление'       |'30680781'   |''           |''                 |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                     |Услуга                   |Точка учета                 |Вид начисления |Способ начисления        |Направление использования ТУ |Прибор учета |Объем услуги |Объем потребленный |
        |'31.08.2019 23:59:59' |'Кошелева Ирина Валерьевна' |'Водоотведение'          |'стоки_ГВС + водоотведение' |'Перерасчет'   |'Начисление по среднему' |'Основное направление'       |'1'          |'-2,166667'  |'-2,166667'        |