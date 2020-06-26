﻿#language: ru
@tree
@card "https://trello.com/c/O7RNAmqk"
Функционал: <описание фичи>
Как <Роль>
Я хочу <проверить расчет расчет по показаниям>
Чтобы <бизнес-эффект>

Контекст:
    Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: <РасчетПоПоказаниям>
    И я подготавливаю тестовые данные
        И я загружаю макет "РасчетПоПоказаниям.mxl"
    И я перепровожу загруженные данные
        И В командном интерфейсе я выбираю 'Администрирование' 'Ввод начальных остатков'
        Тогда открылось окно 'Ввод начальных остатков'
        И в таблице 'Список' я выделяю все строки
        И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюПровести' на элементе формы с именем "Список"
        И В командном интерфейсе я выбираю 'Работа с абонентами' 'Регистрация показаний абонента'
        Тогда открылось окно 'Регистрация показаний абонента'
        И в таблице 'Список' я выделяю все строки
        И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюПровести' на элементе формы с именем "Список"
    И Я запускаю выполнение начислений по организации 'ОАО "СКЭК"' и району 'Кемеровский городской округ' и МКД '' с 'Июль' '2019' по 'Сентябрь 2019'
    И я проверяю полученные результаты
        И Я открываю навигационную ссылку "e1cib/list/РегистрНакопления.энргОбъемНачислений"
        Тогда открылось окно 'Объем начислений' 
        #Июль
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                         |Услуга                   |Точка учета                        |Способ начисления |Направление использования ТУ |Прибор учета |Значение тарифа |Период расчета |Период начисления |Сумма      |Объем услуги |Объем потребленный |Конец периода |Начало периода |
        |'31.07.2019 23:59:59' |'Зимнухов Александр Викторович' |'Холодное водоснабжение' |'расчетная_Холодное водоснабжение' |'Расчетный'       |'Основное направление'       |'12310149'   |'41,740'        |'01.07.2019'   |'01.07.2019'      |'1 377,42' |'33,000000'  |''                 |'01.08.2019'  |'01.07.2019'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                         |Услуга                   |Точка учета                        |Способ начисления |Направление использования ТУ |Прибор учета |Значение тарифа |Период расчета |Период начисления |Сумма      |Объем услуги |Объем потребленный |Конец периода |Начало периода |
        |'31.07.2019 23:59:59' |'Зимнухов Александр Викторович' |'Холодное водоснабжение' |'расчетная_Холодное водоснабжение' |'Расчетный'       |'Основное направление'       |'12310149'   |'41,740'        |'01.07.2019'   |'01.07.2019'      |''         |''           |'33,000000'        |'01.08.2019'  |'01.07.2019'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                         |Услуга                   |Точка учета                        |Способ начисления |Направление использования ТУ |Прибор учета |Значение тарифа |Период расчета |Период начисления |Сумма      |Объем услуги |Объем потребленный |Конец периода |Начало периода |
        |'31.07.2019 23:59:59' |'Зимнухов Александр Викторович' |'Холодное водоснабжение' |'ввод_Холодное водоснабжение'      |'По нормативу'    |'Основное направление'       |''           |'41,740'        |'01.07.2019'   |'01.07.2019'      |''         |''           |'2,360000'         |'01.08.2019'  |'01.07.2019'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                         |Услуга                   |Точка учета                        |Способ начисления |Направление использования ТУ |Прибор учета |Значение тарифа |Период расчета |Период начисления |Сумма      |Объем услуги |Объем потребленный |Конец периода |Начало периода |
        |'31.07.2019 23:59:59' |'Зимнухов Александр Викторович' |'Холодное водоснабжение' |'огород_Холодное водоснабжение'    |'По нормативу'    |'полив из водопровода'       |''           |'41,740'        |'01.07.2019'   |'01.07.2019'      |''         |''           |'4,832968‬'        |'01.08.2019'  |'01.07.2019'   |
        #Август
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                         |Услуга                   |Точка учета                        |Способ начисления |Направление использования ТУ |Прибор учета |Значение тарифа |Период расчета |Период начисления |Сумма      |Объем услуги |Объем потребленный |Конец периода |Начало периода |
        |'31.08.2019 23:59:59' |'Зимнухов Александр Викторович' |'Холодное водоснабжение' |'расчетная_Холодное водоснабжение' |'Расчетный'       |'Основное направление'       |'12310149'   |'41,740'        |'01.08.2019'   |'01.08.2019'      |'918,28‬'  |'22,000000'  |''                 |'01.09.2019'  |'01.08.2019'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                         |Услуга                   |Точка учета                        |Способ начисления |Направление использования ТУ |Прибор учета |Значение тарифа |Период расчета |Период начисления |Сумма      |Объем услуги |Объем потребленный |Конец периода |Начало периода |
        |'31.08.2019 23:59:59' |'Зимнухов Александр Викторович' |'Холодное водоснабжение' |'расчетная_Холодное водоснабжение' |'Расчетный'       |'Основное направление'       |'12310149'   |'41,740'        |'01.08.2019'   |'01.08.2019'      |''         |''           |'22,000000'        |'01.09.2019'  |'01.08.2019'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                         |Услуга                   |Точка учета                        |Способ начисления |Направление использования ТУ |Прибор учета |Значение тарифа |Период расчета |Период начисления |Сумма      |Объем услуги |Объем потребленный |Конец периода |Начало периода |
        |'31.08.2019 23:59:59' |'Зимнухов Александр Викторович' |'Холодное водоснабжение' |'ввод_Холодное водоснабжение'      |'По нормативу'    |'Основное направление'       |''           |'41,740'        |'01.08.2019'   |'01.08.2019'      |''         |''           |'2,360000'         |'01.09.2019'  |'01.08.2019'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                         |Услуга                   |Точка учета                        |Способ начисления |Направление использования ТУ |Прибор учета |Значение тарифа |Период расчета |Период начисления |Сумма      |Объем услуги |Объем потребленный |Конец периода |Начало периода |
        |'31.08.2019 23:59:59' |'Зимнухов Александр Викторович' |'Холодное водоснабжение' |'огород_Холодное водоснабжение'    |'По нормативу'    |'полив из водопровода'       |''           |'41,740'        |'01.08.2019'   |'01.08.2019'      |''         |''           |'4,832968‬'        |'01.09.2019'  |'01.08.2019'   |
        #Сентябрь
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                         |Услуга                   |Точка учета                        |Способ начисления |Направление использования ТУ |Прибор учета |Значение тарифа |Период расчета |Период начисления |Сумма      |Объем услуги |Объем потребленный |Конец периода |Начало периода |
        |'30.09.2019 23:59:59' |'Зимнухов Александр Викторович' |'Холодное водоснабжение' |'расчетная_Холодное водоснабжение' |'Расчетный'       |'Основное направление'       |'12310149'   |'41,740'        |'01.09.2019'   |'01.09.2019'      |'667,84'   |'16,000000'  |''                 |'01.10.2019'  |'01.09.2019'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                         |Услуга                   |Точка учета                        |Способ начисления |Направление использования ТУ |Прибор учета |Значение тарифа |Период расчета |Период начисления |Сумма      |Объем услуги |Объем потребленный |Конец периода |Начало периода |
        |'30.09.2019 23:59:59' |'Зимнухов Александр Викторович' |'Холодное водоснабжение' |'расчетная_Холодное водоснабжение' |'Расчетный'       |'Основное направление'       |'12310149'   |'41,740'        |'01.09.2019'   |'01.09.2019'      |''         |''           |'16,000000'        |'01.10.2019'  |'01.09.2019'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                         |Услуга                   |Точка учета                        |Способ начисления |Направление использования ТУ |Прибор учета |Значение тарифа |Период расчета |Период начисления |Сумма      |Объем услуги |Объем потребленный |Конец периода |Начало периода |
        |'30.09.2019 23:59:59' |'Зимнухов Александр Викторович' |'Холодное водоснабжение' |'ввод_Холодное водоснабжение'      |'По нормативу'    |'Основное направление'       |''           |'41,740'        |'01.09.2019'   |'01.09.2019'      |''         |''           |'2,360000'         |'01.10.2019'  |'01.09.2019'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                         |Услуга                   |Точка учета                        |Способ начисления |Направление использования ТУ |Прибор учета |Значение тарифа |Период расчета |Период начисления |Сумма      |Объем услуги |Объем потребленный |Конец периода |Начало периода |
        |'30.09.2019 23:59:59' |'Зимнухов Александр Викторович' |'Холодное водоснабжение' |'огород_Холодное водоснабжение'    |'По нормативу'    |'полив из водопровода'       |''           |'41,740'        |'01.09.2019'   |'01.09.2019'      |''         |''           |'4,832968‬'         |'01.10.2019'  |'01.09.2019'   |