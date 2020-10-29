﻿#language: ru
@tree
Функционал: <описание фичи>
"https://trello.com/c/VbWK4t1b"
    Как <Роль>
    Я хочу <проверить расчет расчет по показаниям>
    Чтобы <бизнес-эффект>

Контекст:
    Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: <РасчетТолькоПоПоказаниям>
    И я подготавливаю тестовые данные
        И я загружаю макет "РасчетТолькоПоПоказаниям.mxl"
    И я перепровожу загруженные данные
        И В командном интерфейсе я выбираю 'Работа с МКД' 'Операции с МКД'
        Тогда открылось окно 'Операции с МКД'
        И в таблице 'Список' я выделяю все строки
        И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюПровести' на элементе формы с именем "Список"
        И В командном интерфейсе я выбираю 'Работа с абонентами' 'Открытие/закрытие лс физического лица'
        Тогда открылось окно 'Открытие/закрытие лс физического лица'
        И в таблице 'Список' я выделяю все строки
        И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюПровести' на элементе формы с именем "Список"
        И В командном интерфейсе я выбираю 'Работа с абонентами' 'Регистрация показаний абонента'
        Тогда открылось окно 'Регистрация показаний абонента'
        И в таблице 'Список' я выделяю все строки
        И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюПровести' на элементе формы с именем "Список"
    И Я запускаю выполнение начислений по организации 'ОАО "СКЭК"' и району 'Березовский городской округ' и МКД 'Березовский г., Мира ул, Дом № 18' с 'Январь' '2020' по 'Февраль 2020'
    И я проверяю полученные результаты
        И Я открываю навигационную ссылку "e1cib/list/РегистрНакопления.энргОбъемНачислений"
        Тогда открылось окно 'Объем начислений'
        И в таблице "Список" я активизирую поле "Абонент"
        И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюНайти' на элементе формы с именем "Список"
        Тогда открылось окно 'Найти'
        И из выпадающего списка "&Что искать" я выбираю по строке 'Череповская Наталья Олеговна'
        И я перехожу к следующему реквизиту
        И я нажимаю на кнопку '&Найти'         
        Тогда в таблице "Список" количество строк "равно" 4
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                        |Услуга      |Точка учета          |Вид начисления |Способ начисления |Направление использования ТУ |Прибор учета |Шкала       |Объем услуги |Объем потребленный |
        |'31.01.2020 23:59:59' |'Череповская Наталья Олеговна' |'Отопление' |'квартира_Отопление' |'Начисление'   |'По приборам'     |'Основное направление'       |'357357'     |'отопление' |''           |''                 |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                        |Услуга      |Вид начисления   |Направление использования ТУ |Сверх норматива |Объем услуги |Объем потребленный |
        |'31.01.2020 23:59:59' |'Череповская Наталья Олеговна' |'Отопление' |'Начисление ОДН' |'Основное направление'       |'Нет'           |'0,652136'   |'0,652136'         |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                        |Услуга      |Точка учета          |Вид начисления |Способ начисления |Направление использования ТУ |Прибор учета |Шкала       |Объем услуги |Объем потребленный |
        |'29.02.2020 23:59:59' |'Череповская Наталья Олеговна' |'Отопление' |'квартира_Отопление' |'Начисление'   |'По приборам'     |'Основное направление'       |'357357'     |'отопление' |''           |'20,000000'                 |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                        |Услуга      |Вид начисления   |Направление использования ТУ |Сверх норматива |Объем услуги |Объем потребленный |
        |'29.02.2020 23:59:59' |'Череповская Наталья Олеговна' |'Отопление' |'Начисление ОДН' |'Основное направление'       |'Нет'           |'0,652136'   |''         |