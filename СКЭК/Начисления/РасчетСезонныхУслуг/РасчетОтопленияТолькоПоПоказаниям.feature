﻿#language: ru
@tree
@card 'https://trello.com/c/e0LOI1PY'
Функционал: <описание фичи>
Как <Роль>
Я хочу <описание функционала>
Чтобы <бизнес-эффект>

Контекст:
    Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: <РасчетОтопленияТолькоПоПоказаниям>
    И я подготавливаю тестовые данные
        И я загружаю макет "РасчетОтопленияТолькоПоПоказаниям"
    И я перепровожу загруженные документы
        И В командном интерфейсе я выбираю 'Администрирование' 'Ввод начальных остатков'
        Тогда открылось окно 'Ввод начальных остатков'
        И в таблице 'Список' я выделяю все строки
        И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюПровести' на элементе формы с именем "Список"
        И В командном интерфейсе я выбираю 'Работа с абонентами' 'Регистрация показаний абонента'
        Тогда открылось окно 'Регистрация показаний абонента'
        И в таблице 'Список' я выделяю все строки
        И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюПровести' на элементе формы с именем "Список"
    И Я запускаю выполнение начислений по организации 'ОАО "СКЭК"' и району 'Кемеровский городской округ' и МКД '' с 'Октябрь' '2020' по 'Декабрь 2020'
    И Я проверяю полученные результаты
        И Я открываю навигационную ссылку "e1cib/list/РегистрНакопления.энргОбъемНачислений"
        Тогда открылось окно 'Объем начислений'
        И в таблице "Список" я активизирую поле "Услуга"
        И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюНайти' на элементе формы с именем "Список"
        Тогда открылось окно 'Найти'
        И из выпадающего списка "&Что искать" я выбираю по строке 'Отопление'
        И я нажимаю на кнопку '&Найти'
        Тогда открылось окно 'Объем начислений'
        И в таблице "Список" я активизирую поле "Абонент"
        И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюНайти' на элементе формы с именем "Список"
        Тогда открылось окно 'Найти'
        И из выпадающего списка "&Что искать" я выбираю по строке 'Акобян Левон Сережаевич'
        И я нажимаю на кнопку '&Найти'
        Тогда открылось окно 'Объем начислений'
        И я нажимаю на кнопку с именем 'ФормаУстановитьИнтервал'
        Тогда открылось окно 'Выберите период'
        И в поле 'DateBegin' я ввожу текст '01.10.2020'
        И в поле 'DateEnd' я ввожу текст '31.12.2020'
        И я перехожу к следующему реквизиту
        И я нажимаю на кнопку 'Выбрать'
        #Октябрь
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                   |Услуга      |Точка учета      |Вид начисления |Способ начисления        |Направление использования ТУ |Прибор учета |Значение тарифа |Период расчета |Период начисления |Сверх норматива |Объем услуги |Объем потребленный |Объем услуги соц норма |Объем услуги потребленный соц норма |Сумма      |Конец периода |Начало периода |
        |'31.10.2020 23:59:59' |'Акобян Левон Сережаевич' |'Отопление' |'узел_Отопление' |'Начисление'   |'По приборам'            |'Основное направление'       |'18067931'   |'844,170'       |'01.10.2020'   |'01.10.2020'      |'Нет'           |''           |'0,405405'         |''                     |'0,405405'                          |''         |'01.11.2020'  |'01.10.2020'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                   |Услуга      |Точка учета      |Вид начисления |Способ начисления        |Направление использования ТУ |Прибор учета |Значение тарифа |Период расчета |Период начисления |Сверх норматива |Объем услуги |Объем потребленный |Объем услуги соц норма |Объем услуги потребленный соц норма |Сумма      |Конец периода |Начало периода |
        |'31.10.2020 23:59:59' |'Акобян Левон Сережаевич' |'Отопление' |'узел_Отопление' |'Начисление'   |'По приборам'            |'Основное направление'       |'18067931'   |'1 727,910'     |'01.10.2020'   |'01.10.2020'      |'Да'            |''           |'0,094595'         |''                     |''                                  |''         |'01.11.2020'  |'01.10.2020'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                   |Услуга      |Точка учета      |Вид начисления |Способ начисления        |Направление использования ТУ |Прибор учета |Значение тарифа |Период расчета |Период начисления |Сверх норматива |Объем услуги |Объем потребленный |Объем услуги соц норма |Объем услуги потребленный соц норма |Сумма      |Конец периода |Начало периода |
        |'31.10.2020 23:59:59' |'Акобян Левон Сережаевич' |'Отопление' |'узел_Отопление' |'Начисление'   |'Начисление по среднему' |'Основное направление'       |'18067931'   |'844,170'       |'01.10.2020'   |'01.10.2020'      |'Нет'           |'1,859595'   |''                 |'1,859595'             |''                                  |'1 569,81' |'01.11.2020'  |'01.10.2020'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                   |Услуга      |Точка учета      |Вид начисления |Способ начисления        |Направление использования ТУ |Прибор учета |Значение тарифа |Период расчета |Период начисления |Сверх норматива |Объем услуги |Объем потребленный |Объем услуги соц норма |Объем услуги потребленный соц норма |Сумма      |Конец периода |Начало периода |
        |'31.10.2020 23:59:59' |'Акобян Левон Сережаевич' |'Отопление' |'узел_Отопление' |'Начисление'   |'Начисление по среднему' |'Основное направление'       |'18067931'   |'1 727,910'     |'01.10.2020'   |'01.10.2020'      |'Да'            |'0,433905'   |''                 |''                     |''                                  |'749,75'   |'01.11.2020'  |'01.10.2020'   |
        #Октябрь
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                   |Услуга      |Точка учета      |Вид начисления |Способ начисления        |Направление использования ТУ |Прибор учета |Значение тарифа |Период расчета |Период начисления |Сверх норматива |Объем услуги |Объем потребленный |Объем услуги соц норма |Объем услуги потребленный соц норма |Сумма      |Конец периода |Начало периода |
        |'30.11.2020 23:59:59' |'Акобян Левон Сережаевич' |'Отопление' |'узел_Отопление' |'Начисление'   |'Начисление по среднему' |'Основное направление'       |'18067931'   |'844,170'       |'01.11.2020'   |'01.11.2020'      |'Нет'           |'1,859595'   |''                 |'1,859595'             |''                                  |'1 569,81' |'01.12.2020'  |'01.11.2020'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                   |Услуга      |Точка учета      |Вид начисления |Способ начисления        |Направление использования ТУ |Прибор учета |Значение тарифа |Период расчета |Период начисления |Сверх норматива |Объем услуги |Объем потребленный |Объем услуги соц норма |Объем услуги потребленный соц норма |Сумма      |Конец периода |Начало периода |
        |'30.11.2020 23:59:59' |'Акобян Левон Сережаевич' |'Отопление' |'узел_Отопление' |'Начисление'   |'Начисление по среднему' |'Основное направление'       |'18067931'   |'1 727,910'     |'01.11.2020'   |'01.11.2020'      |'Да'            |'0,433905'   |''                 |''                     |''                                  |'749,75'   |'01.12.2020'  |'01.11.2020'   |
        #Декабрь
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                   |Услуга      |Точка учета      |Вид начисления |Способ начисления        |Направление использования ТУ |Прибор учета |Значение тарифа |Период расчета |Период начисления |Сверх норматива |Объем услуги |Объем потребленный |Объем услуги соц норма |Объем услуги потребленный соц норма |Сумма      |Конец периода |Начало периода |
        |'31.12.2020 23:59:59' |'Акобян Левон Сережаевич' |'Отопление' |'узел_Отопление' |'Начисление'   |'По приборам'            |'Основное направление'       |'18067931'   |'844,170'       |'01.12.2020'   |'01.12.2020'      |'Нет'           |''           |'0,486487'         |''                     |'0,486487'                          |''         |'01.01.2021'  |'01.12.2020'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                   |Услуга      |Точка учета      |Вид начисления |Способ начисления        |Направление использования ТУ |Прибор учета |Значение тарифа |Период расчета |Период начисления |Сверх норматива |Объем услуги |Объем потребленный |Объем услуги соц норма |Объем услуги потребленный соц норма |Сумма      |Конец периода |Начало периода |
        |'31.12.2020 23:59:59' |'Акобян Левон Сережаевич' |'Отопление' |'узел_Отопление' |'Начисление'   |'По приборам'            |'Основное направление'       |'18067931'   |'1 727,910'     |'01.12.2020'   |'01.12.2020'      |'Да'            |''           |'0,113513'         |''                     |''                                  |''         |'01.01.2021'  |'01.12.2020'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                   |Услуга      |Точка учета      |Вид начисления |Способ начисления        |Направление использования ТУ |Прибор учета |Значение тарифа |Период расчета |Период начисления |Сверх норматива |Объем услуги |Объем потребленный |Объем услуги соц норма |Объем услуги потребленный соц норма |Сумма      |Конец периода |Начало периода |
        |'31.12.2020 23:59:59' |'Акобян Левон Сережаевич' |'Отопление' |'узел_Отопление' |'Начисление'   |'Начисление по среднему' |'Основное направление'       |'18067931'   |'844,170'       |'01.12.2020'   |'01.12.2020'      |'Нет'           |'1,859595'   |''                 |'1,859595'             |''                                  |'1 569,81' |'01.01.2021'  |'01.12.2020'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                   |Услуга      |Точка учета      |Вид начисления |Способ начисления        |Направление использования ТУ |Прибор учета |Значение тарифа |Период расчета |Период начисления |Сверх норматива |Объем услуги |Объем потребленный |Объем услуги соц норма |Объем услуги потребленный соц норма |Сумма      |Конец периода |Начало периода |
        |'31.12.2020 23:59:59' |'Акобян Левон Сережаевич' |'Отопление' |'узел_Отопление' |'Начисление'   |'Начисление по среднему' |'Основное направление'       |'18067931'   |'1 727,910'     |'01.12.2020'   |'01.12.2020'      |'Да'            |'0,433905'   |''                 |''                     |''                                  |'749,75'   |'01.01.2021'  |'01.12.2020'   |