﻿#language: ru
@tree
@card 'https://trello.com/c/6bQlBHXU'
Функционал: <описание фичи>
Как <Роль>
Я хочу <описание функционала>
Чтобы <бизнес-эффект>

Контекст:
    Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: <РасчетОтопленияАбонентов>
    И я подготавливаю тестовые данные
        И я загружаю макет "РасчетОтопленияАбонентов"
    И я перепровожу загруженные документы
        И В командном интерфейсе я выбираю 'Администрирование' 'Ввод начальных остатков'
        Тогда открылось окно 'Ввод начальных остатков'
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
    И Я запускаю выполнение начислений по организации 'ОАО "СКЭК"' и району 'Березовский городской округ' и МКД '' с 'Июль' '2019' по 'Февраль 2020'
    И Я проверяю полученные результаты абонента Милешина
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
        И из выпадающего списка "&Что искать" я выбираю по строке 'Милешина Алена Валерьевна'
        И я нажимаю на кнопку '&Найти'
        Тогда открылось окно 'Объем начислений'
        И я нажимаю на кнопку с именем 'ФормаУстановитьИнтервал'
        Тогда открылось окно 'Выберите период'
        И в поле 'DateBegin' я ввожу текст '01.07.2019'
        И в поле 'DateEnd' я ввожу текст '29.02.2020'
        И я перехожу к следующему реквизиту
        И я нажимаю на кнопку 'Выбрать'
        #Июль 19
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                     |Услуга      |Точка учета      |Способ начисления        |Прибор учета |Значение тарифа |Период расчета |Период начисления |Сверх норматива |Сумма      |Объем услуги |Объем потребленный |Объем услуги соц норма |Объем услуги потребленный соц норма |Конец периода |Начало периода |
        |'31.07.2019 23:59:59' |'Милешина Алена Валерьевна' |'Отопление' |'узел_Отопление' |'Начисление по среднему' |'247048'     |'1 729,660'     |'01.07.2019'   |'01.07.2019'      |'Нет'           |'731,07'   |'0,422667'   |''                 |'0,422667'             |''                                  |'01.08.2019'  |'01.07.2019'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                     |Услуга      |Точка учета      |Способ начисления        |Прибор учета |Значение тарифа |Период расчета |Период начисления |Сверх норматива |Сумма      |Объем услуги |Объем потребленный |Объем услуги соц норма |Объем услуги потребленный соц норма |Конец периода |Начало периода |
        |'31.07.2019 23:59:59' |'Милешина Алена Валерьевна' |'Отопление' |'узел_Отопление' |'По приборам'            |'247048'     |'1 729,660'     |'01.07.2019'   |'01.07.2019'      |'Нет'           |''         |''           |''                 |''                     |''                                  |'01.08.2019'  |'01.07.2019'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                     |Услуга      |Точка учета      |Способ начисления        |Прибор учета |Значение тарифа |Период расчета |Период начисления |Сверх норматива |Сумма      |Объем услуги |Объем потребленный |Объем услуги соц норма |Объем услуги потребленный соц норма |Конец периода |Начало периода |
        |'31.07.2019 23:59:59' |'Милешина Алена Валерьевна' |'Отопление' |'узел_Отопление' |'Начисление по среднему' |'247048'     |'1 729,660'     |'01.07.2019'   |'01.07.2019'      |'Да'            |'1 229,53' |'0,710850'   |''                 |''                     |''                                  |'01.08.2019'  |'01.07.2019'   |
        #Август 19
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                     |Услуга      |Точка учета      |Способ начисления        |Прибор учета |Значение тарифа |Период расчета |Период начисления |Сверх норматива |Сумма      |Объем услуги |Объем потребленный |Объем услуги соц норма |Объем услуги потребленный соц норма |Конец периода |Начало периода |
        |'31.08.2019 23:59:59' |'Милешина Алена Валерьевна' |'Отопление' |'узел_Отопление' |'Начисление по среднему' |'247048'     |'1 729,660'     |'01.08.2019'   |'01.08.2019'      |'Нет'           |'731,07'   |'0,422667'   |''                 |'0,422667'             |''                                  |'01.09.2019'  |'01.08.2019'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                     |Услуга      |Точка учета      |Способ начисления        |Прибор учета |Значение тарифа |Период расчета |Период начисления |Сверх норматива |Сумма      |Объем услуги |Объем потребленный |Объем услуги соц норма |Объем услуги потребленный соц норма |Конец периода |Начало периода |
        |'31.08.2019 23:59:59' |'Милешина Алена Валерьевна' |'Отопление' |'узел_Отопление' |'По приборам'            |'247048'     |'1 729,660'     |'01.08.2019'   |'01.08.2019'      |'Нет'           |''         |''           |''                 |''                     |''                                  |'01.09.2019'  |'01.08.2019'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                     |Услуга      |Точка учета      |Способ начисления        |Прибор учета |Значение тарифа |Период расчета |Период начисления |Сверх норматива |Сумма      |Объем услуги |Объем потребленный |Объем услуги соц норма |Объем услуги потребленный соц норма |Конец периода |Начало периода |
        |'31.08.2019 23:59:59' |'Милешина Алена Валерьевна' |'Отопление' |'узел_Отопление' |'Начисление по среднему' |'247048'     |'1 729,660'     |'01.08.2019'   |'01.08.2019'      |'Да'            |'1 229,53' |'0,710850'   |''                 |''                     |''                                  |'01.09.2019'  |'01.08.2019'   |
        #Сентябрь 19
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                     |Услуга      |Точка учета      |Способ начисления        |Прибор учета |Значение тарифа |Период расчета |Период начисления |Сверх норматива |Сумма      |Объем услуги |Объем потребленный |Объем услуги соц норма |Объем услуги потребленный соц норма |Конец периода |Начало периода |
        |'30.09.2019 23:59:59' |'Милешина Алена Валерьевна' |'Отопление' |'узел_Отопление' |'Начисление по среднему' |'247048'     |'1 729,660'     |'01.09.2019'   |'01.09.2019'      |'Нет'           |'731,07'   |'0,422667'   |''                 |'0,422667'             |''                                  |'01.10.2019'  |'01.09.2019'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                     |Услуга      |Точка учета      |Способ начисления        |Прибор учета |Значение тарифа |Период расчета |Период начисления |Сверх норматива |Сумма      |Объем услуги |Объем потребленный |Объем услуги соц норма |Объем услуги потребленный соц норма |Конец периода |Начало периода |
        |'30.09.2019 23:59:59' |'Милешина Алена Валерьевна' |'Отопление' |'узел_Отопление' |'По приборам'            |'247048'     |'1 729,660'     |'01.09.2019'   |'01.09.2019'      |'Нет'           |''         |''           |'0,062271'         |''                     |'0,062271'                          |'01.10.2019'  |'01.09.2019'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                     |Услуга      |Точка учета      |Способ начисления        |Прибор учета |Значение тарифа |Период расчета |Период начисления |Сверх норматива |Сумма      |Объем услуги |Объем потребленный |Объем услуги соц норма |Объем услуги потребленный соц норма |Конец периода |Начало периода |
        |'30.09.2019 23:59:59' |'Милешина Алена Валерьевна' |'Отопление' |'узел_Отопление' |'Начисление по среднему' |'247048'     |'1 729,660'     |'01.09.2019'   |'01.09.2019'      |'Да'            |'1 229,53' |'0,710850'   |''                 |''                     |''                                  |'01.10.2019'  |'01.09.2019'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                     |Услуга      |Точка учета      |Способ начисления        |Прибор учета |Значение тарифа |Период расчета |Период начисления |Сверх норматива |Сумма      |Объем услуги |Объем потребленный |Объем услуги соц норма |Объем услуги потребленный соц норма |Конец периода |Начало периода |
        |'30.09.2019 23:59:59' |'Милешина Алена Валерьевна' |'Отопление' |'узел_Отопление' |'По приборам'            |'247048'     |'1 729,660'     |'01.09.2019'   |'01.09.2019'      |'Да'            |''         |''           |'0,104729'         |''                     |''                                  |'01.10.2019'  |'01.09.2019'   |
        #Октябрь 19
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                     |Услуга      |Точка учета      |Способ начисления        |Прибор учета |Значение тарифа |Период расчета |Период начисления |Сверх норматива |Сумма      |Объем услуги |Объем потребленный |Объем услуги соц норма |Объем услуги потребленный соц норма |Конец периода |Начало периода |
        |'31.10.2019 23:59:59' |'Милешина Алена Валерьевна' |'Отопление' |'узел_Отопление' |'Начисление по среднему' |'247048'     |'1 729,660'     |'01.10.2019'   |'01.10.2019'      |'Нет'           |'731,07'   |'0,422667'   |''                 |'0,422667'             |''                                  |'01.11.2019'  |'01.10.2019'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                     |Услуга      |Точка учета      |Способ начисления        |Прибор учета |Значение тарифа |Период расчета |Период начисления |Сверх норматива |Сумма      |Объем услуги |Объем потребленный |Объем услуги соц норма |Объем услуги потребленный соц норма |Конец периода |Начало периода |
        |'31.10.2019 23:59:59' |'Милешина Алена Валерьевна' |'Отопление' |'узел_Отопление' |'По приборам'            |'247048'     |'1 729,660'     |'01.10.2019'   |'01.10.2019'      |'Нет'           |''         |''           |'0,341559'         |''                     |'0,341559'                          |'01.11.2019'  |'01.10.2019'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                     |Услуга      |Точка учета      |Способ начисления        |Прибор учета |Значение тарифа |Период расчета |Период начисления |Сверх норматива |Сумма      |Объем услуги |Объем потребленный |Объем услуги соц норма |Объем услуги потребленный соц норма |Конец периода |Начало периода |
        |'31.10.2019 23:59:59' |'Милешина Алена Валерьевна' |'Отопление' |'узел_Отопление' |'Начисление по среднему' |'247048'     |'1 729,660'     |'01.10.2019'   |'01.10.2019'      |'Да'            |'1 229,53' |'0,710850'   |''                 |''                     |''                                  |'01.11.2019'  |'01.10.2019'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                     |Услуга      |Точка учета      |Способ начисления        |Прибор учета |Значение тарифа |Период расчета |Период начисления |Сверх норматива |Сумма      |Объем услуги |Объем потребленный |Объем услуги соц норма |Объем услуги потребленный соц норма |Конец периода |Начало периода |
        |'31.10.2019 23:59:59' |'Милешина Алена Валерьевна' |'Отопление' |'узел_Отопление' |'По приборам'            |'247048'     |'1 729,660'     |'01.10.2019'   |'01.10.2019'      |'Да'            |''         |''           |'0,574441'         |''                     |''                                  |'01.11.2019'  |'01.10.2019'   |
        #Ноябрь 19
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                     |Услуга      |Точка учета      |Способ начисления        |Прибор учета |Значение тарифа |Период расчета |Период начисления |Сверх норматива |Сумма      |Объем услуги |Объем потребленный |Объем услуги соц норма |Объем услуги потребленный соц норма |Конец периода |Начало периода |
        |'30.11.2019 23:59:59' |'Милешина Алена Валерьевна' |'Отопление' |'узел_Отопление' |'Начисление по среднему' |'247048'     |'1 729,660'     |'01.11.2019'   |'01.11.2019'      |'Нет'           |'731,07'   |'0,422667'   |''                 |'0,422667'             |''                                  |'01.12.2019'  |'01.11.2019'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                     |Услуга      |Точка учета      |Способ начисления        |Прибор учета |Значение тарифа |Период расчета |Период начисления |Сверх норматива |Сумма      |Объем услуги |Объем потребленный |Объем услуги соц норма |Объем услуги потребленный соц норма |Конец периода |Начало периода |
        |'30.11.2019 23:59:59' |'Милешина Алена Валерьевна' |'Отопление' |'узел_Отопление' |'По приборам'            |'247048'     |'1 729,660'     |'01.11.2019'   |'01.11.2019'      |'Нет'           |''         |''           |'0,740542'         |''                     |'0,740542'                          |'01.12.2019'  |'01.11.2019'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                     |Услуга      |Точка учета      |Способ начисления        |Прибор учета |Значение тарифа |Период расчета |Период начисления |Сверх норматива |Сумма      |Объем услуги |Объем потребленный |Объем услуги соц норма |Объем услуги потребленный соц норма |Конец периода |Начало периода |
        |'30.11.2019 23:59:59' |'Милешина Алена Валерьевна' |'Отопление' |'узел_Отопление' |'Начисление по среднему' |'247048'     |'1 729,660'     |'01.11.2019'   |'01.11.2019'      |'Да'            |'1 229,53' |'0,710850'   |''                 |''                     |''                                  |'01.12.2019'  |'01.11.2019'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                     |Услуга      |Точка учета      |Способ начисления        |Прибор учета |Значение тарифа |Период расчета |Период начисления |Сверх норматива |Сумма      |Объем услуги |Объем потребленный |Объем услуги соц норма |Объем услуги потребленный соц норма |Конец периода |Начало периода |
        |'30.11.2019 23:59:59' |'Милешина Алена Валерьевна' |'Отопление' |'узел_Отопление' |'По приборам'            |'247048'     |'1 729,660'     |'01.11.2019'   |'01.11.2019'      |'Да'            |''         |''           |'1,245458'         |''                     |''                                  |'01.12.2019'  |'01.11.2019'   |
        #Декабрь 19
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                     |Услуга      |Точка учета      |Способ начисления        |Прибор учета |Значение тарифа |Период расчета |Период начисления |Сверх норматива |Сумма      |Объем услуги |Объем потребленный |Объем услуги соц норма |Объем услуги потребленный соц норма |Конец периода |Начало периода |
        |'31.12.2019 23:59:59' |'Милешина Алена Валерьевна' |'Отопление' |'узел_Отопление' |'Начисление по среднему' |'247048'     |'1 729,660'     |'01.12.2019'   |'01.12.2019'      |'Нет'           |'731,07'   |'0,422667'   |''                 |'0,422667'             |''                                  |'01.01.2020'  |'01.12.2019'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                     |Услуга      |Точка учета      |Способ начисления        |Прибор учета |Значение тарифа |Период расчета |Период начисления |Сверх норматива |Сумма      |Объем услуги |Объем потребленный |Объем услуги соц норма |Объем услуги потребленный соц норма |Конец периода |Начало периода |
        |'31.12.2019 23:59:59' |'Милешина Алена Валерьевна' |'Отопление' |'узел_Отопление' |'По приборам'            |'247048'     |'1 729,660'     |'01.12.2019'   |'01.12.2019'      |'Нет'           |''         |''           |'0,689831'         |''                     |'0,689831'                          |'01.01.2020'  |'01.12.2019'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                     |Услуга      |Точка учета      |Способ начисления        |Прибор учета |Значение тарифа |Период расчета |Период начисления |Сверх норматива |Сумма      |Объем услуги |Объем потребленный |Объем услуги соц норма |Объем услуги потребленный соц норма |Конец периода |Начало периода |
        |'31.12.2019 23:59:59' |'Милешина Алена Валерьевна' |'Отопление' |'узел_Отопление' |'Начисление по среднему' |'247048'     |'1 729,660'     |'01.12.2019'   |'01.12.2019'      |'Да'            |'1 229,53' |'0,710850'   |''                 |''                     |''                                  |'01.01.2020'  |'01.12.2019'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                     |Услуга      |Точка учета      |Способ начисления        |Прибор учета |Значение тарифа |Период расчета |Период начисления |Сверх норматива |Сумма      |Объем услуги |Объем потребленный |Объем услуги соц норма |Объем услуги потребленный соц норма |Конец периода |Начало периода |
        |'31.12.2019 23:59:59' |'Милешина Алена Валерьевна' |'Отопление' |'узел_Отопление' |'По приборам'            |'247048'     |'1 729,660'     |'01.12.2019'   |'01.12.2019'      |'Да'            |''         |''           |'1,160170'         |''                     |''                                  |'01.01.2020'  |'01.12.2019'   |
        #Январь 20
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                     |Услуга      |Точка учета      |Вид начисления |Способ начисления              |Значение тарифа |Период расчета |Период начисления |Сверх норматива |Сумма       |Объем услуги |Объем потребленный |Объем услуги соц норма |Объем услуги потребленный соц норма |Конец периода |Начало периода |
        |'31.01.2020 23:59:59' |'Милешина Алена Валерьевна' |'Отопление' |'узел_Отопление' |'Начисление'   |'По приборам'                  |'1 729,660'     |'01.01.2020'   |'01.01.2020'      |'Нет'           |''          |''           |'0,824175'         |''                     |'0,824175'                          |'01.02.2020'  |'01.01.2020'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                     |Услуга      |Точка учета      |Вид начисления |Способ начисления              |Значение тарифа |Период расчета |Период начисления |Сверх норматива |Сумма       |Объем услуги |Объем потребленный |Объем услуги соц норма |Объем услуги потребленный соц норма |Конец периода |Начало периода |
        |'31.01.2020 23:59:59' |'Милешина Алена Валерьевна' |'Отопление' |'узел_Отопление' |'Начисление'   |'Начисление по среднему'       |'1 729,660'     |'01.01.2020'   |'01.01.2020'      |'Нет'           |'1 425,54'  |'0,824175'   |''                 |'0,824175'             |''                                  |'01.02.2020'  |'01.01.2020'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                     |Услуга      |Точка учета      |Вид начисления |Способ начисления              |Значение тарифа |Период расчета |Период начисления |Сверх норматива |Сумма       |Объем услуги |Объем потребленный |Объем услуги соц норма |Объем услуги потребленный соц норма |Конец периода |Начало периода |
        |'31.01.2020 23:59:59' |'Милешина Алена Валерьевна' |'Отопление' |'узел_Отопление' |'Начисление'   |'Начисление по среднему'       |'1 729,660'     |'01.01.2020'   |'01.01.2020'      |'Да'            |'397,38'    |'0,229742'   |''                 |''                     |''                                  |'01.02.2020'  |'01.01.2020'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                     |Услуга      |Точка учета      |Вид начисления |Способ начисления              |Значение тарифа |Период расчета |Период начисления |Сверх норматива |Сумма       |Объем услуги |Объем потребленный |Объем услуги соц норма |Объем услуги потребленный соц норма |Конец периода |Начало периода |
        |'31.01.2020 23:59:59' |'Милешина Алена Валерьевна' |'Отопление' |'узел_Отопление' |'Начисление'   |'По приборам'                  |'1 729,660'     |'01.01.2020'   |'01.01.2020'      |'Да'            |''          |''           |'1,405825'         |''                     |''                                  |'01.02.2020'  |'01.01.2020'   |
        #Февраль 20
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                     |Услуга      |Точка учета      |Вид начисления |Способ начисления              |Значение тарифа |Период расчета |Период начисления |Сверх норматива |Сумма       |Объем услуги |Объем потребленный |Объем услуги соц норма |Объем услуги потребленный соц норма |Конец периода |Начало периода |
        |'29.02.2020 23:59:59' |'Милешина Алена Валерьевна' |'Отопление' |'узел_Отопление' |'Начисление'   |'По приборам'                  |'1 729,660'     |'01.02.2020'   |'01.02.2020'      |'Нет'           |''          |''           |'0,824175'         |''                     |'0,824175'                          |'01.03.2020'  |'01.02.2020'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                     |Услуга      |Точка учета      |Вид начисления |Способ начисления              |Значение тарифа |Период расчета |Период начисления |Сверх норматива |Сумма       |Объем услуги |Объем потребленный |Объем услуги соц норма |Объем услуги потребленный соц норма |Конец периода |Начало периода |
        |'29.02.2020 23:59:59' |'Милешина Алена Валерьевна' |'Отопление' |'узел_Отопление' |'Начисление'   |'Начисление по среднему'       |'1 729,660'     |'01.02.2020'   |'01.02.2020'      |'Нет'           |'1 425,54'  |'0,824175'   |''                 |'0,824175'             |''                                  |'01.03.2020'  |'01.02.2020'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                     |Услуга      |Точка учета      |Вид начисления |Способ начисления              |Значение тарифа |Период расчета |Период начисления |Сверх норматива |Сумма       |Объем услуги |Объем потребленный |Объем услуги соц норма |Объем услуги потребленный соц норма |Конец периода |Начало периода |
        |'29.02.2020 23:59:59' |'Милешина Алена Валерьевна' |'Отопление' |'узел_Отопление' |'Начисление'   |'Начисление по среднему'       |'1 729,660'     |'01.02.2020'   |'01.02.2020'      |'Да'            |'397,38'    |'0,229742'   |''                 |''                     |''                                  |'01.03.2020'  |'01.02.2020'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                     |Услуга      |Точка учета      |Вид начисления |Способ начисления              |Значение тарифа |Период расчета |Период начисления |Сверх норматива |Сумма       |Объем услуги |Объем потребленный |Объем услуги соц норма |Объем услуги потребленный соц норма |Конец периода |Начало периода |
        |'29.02.2020 23:59:59' |'Милешина Алена Валерьевна' |'Отопление' |'узел_Отопление' |'Начисление'   |'По приборам'                  |'1 729,660'     |'01.02.2020'   |'01.02.2020'      |'Да'            |''          |''           |'1,072825'         |''                     |''                                  |'01.03.2020'  |'01.02.2020'   |
    И Я проверяю полученные результаты абонента Трусова    
        И в таблице "Список" я активизирую поле "Услуга"
        И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюНайти' на элементе формы с именем "Список"
        Тогда открылось окно 'Найти'
        И из выпадающего списка "&Что искать" я выбираю по строке 'Отопление'
        И я нажимаю на кнопку '&Найти'
        Тогда открылось окно 'Объем начислений'
        И в таблице "Список" я активизирую поле "Абонент"
        И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюНайти' на элементе формы с именем "Список"
        Тогда открылось окно 'Найти'
        И из выпадающего списка "&Что искать" я выбираю по строке 'Трусова Ирина Владимировна'
        И я нажимаю на кнопку '&Найти'
        Тогда открылось окно 'Объем начислений'
        И я нажимаю на кнопку с именем 'ФормаУстановитьИнтервал'
        Тогда открылось окно 'Выберите период'
        И в поле 'DateBegin' я ввожу текст '01.01.2020'
        И в поле 'DateEnd' я ввожу текст '29.02.2020'
        И я перехожу к следующему реквизиту
        И я нажимаю на кнопку 'Выбрать'
        #Январь 20
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                      |Услуга      |Точка учета      |Способ начисления |Значение тарифа |Период расчета |Период начисления |Сверх норматива |Сумма      |Объем услуги |Объем потребленный |Объем услуги соц норма |Объем услуги потребленный соц норма |Конец периода |Начало периода |
        |'31.01.2020 23:59:59' |'Трусова Ирина Владимировна' |'Отопление' |'ввод_Отопление' |'По нормативу'    |'1 729,660'     |'01.01.2020'   |'01.01.2020'      |'Нет'           |''         |''           |'1,098900'         |''                     |'1,098900'                          |'01.02.2020'  |'01.01.2020'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                      |Услуга      |Точка учета      |Способ начисления |Значение тарифа |Период расчета |Период начисления |Сверх норматива |Сумма      |Объем услуги |Объем потребленный |Объем услуги соц норма |Объем услуги потребленный соц норма |Конец периода |Начало периода |
        |'31.01.2020 23:59:59' |'Трусова Ирина Владимировна' |'Отопление' |'ввод_Отопление' |'По нормативу'    |'1 729,660'     |'01.01.2020'   |'01.01.2020'      |'Нет'           |'1 425,54' |'0,824175'   |''                 |'0,824175'             |''                                  |'01.02.2020'  |'01.01.2020'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                      |Услуга      |Точка учета      |Способ начисления |Значение тарифа |Период расчета |Период начисления |Сверх норматива |Сумма      |Объем услуги |Объем потребленный |Объем услуги соц норма |Объем услуги потребленный соц норма |Конец периода |Начало периода |
        |'31.01.2020 23:59:59' |'Трусова Ирина Владимировна' |'Отопление' |'ввод_Отопление' |'По нормативу'    |'1 729,660'     |'01.01.2020'   |'01.01.2020'      |'Да'            |'3 550,90' |'2,052945'   |''                 |''                     |''                                  |'01.02.2020'  |'01.01.2020'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                      |Услуга      |Точка учета      |Способ начисления |Значение тарифа |Период расчета |Период начисления |Сверх норматива |Сумма      |Объем услуги |Объем потребленный |Объем услуги соц норма |Объем услуги потребленный соц норма |Конец периода |Начало периода |
        |'31.01.2020 23:59:59' |'Трусова Ирина Владимировна' |'Отопление' |'ввод_Отопление' |'По нормативу'    |'1 729,660'     |'01.01.2020'   |'01.01.2020'      |'Да'            |''         |''           |'2,737260'         |''                     |''                                  |'01.02.2020'  |'01.01.2020'   |
        #Февраль 20
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                      |Услуга      |Точка учета      |Способ начисления |Значение тарифа |Период расчета |Период начисления |Сверх норматива |Сумма      |Объем услуги |Объем потребленный |Объем услуги соц норма |Объем услуги потребленный соц норма |Конец периода |Начало периода |
        |'29.02.2020 23:59:59' |'Трусова Ирина Владимировна' |'Отопление' |'ввод_Отопление' |'По нормативу'    |'1 729,660'     |'01.02.2020'   |'01.02.2020'      |'Нет'           |''         |''           |'1,098900'         |''                     |'1,098900'                          |'01.03.2020'  |'01.02.2020'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                      |Услуга      |Точка учета      |Способ начисления |Значение тарифа |Период расчета |Период начисления |Сверх норматива |Сумма      |Объем услуги |Объем потребленный |Объем услуги соц норма |Объем услуги потребленный соц норма |Конец периода |Начало периода |
        |'29.02.2020 23:59:59' |'Трусова Ирина Владимировна' |'Отопление' |'ввод_Отопление' |'По нормативу'    |'1 729,660'     |'01.02.2020'   |'01.02.2020'      |'Нет'           |'1 425,54' |'0,824175'   |''                 |'0,824175'             |''                                  |'01.03.2020'  |'01.02.2020'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                      |Услуга      |Точка учета      |Способ начисления |Значение тарифа |Период расчета |Период начисления |Сверх норматива |Сумма      |Объем услуги |Объем потребленный |Объем услуги соц норма |Объем услуги потребленный соц норма |Конец периода |Начало периода |
        |'29.02.2020 23:59:59' |'Трусова Ирина Владимировна' |'Отопление' |'ввод_Отопление' |'По нормативу'    |'1 729,660'     |'01.02.2020'   |'01.02.2020'      |'Да'            |'3 550,90' |'2,052945'   |''                 |''                     |''                                  |'01.03.2020'  |'01.02.2020'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                      |Услуга      |Точка учета      |Способ начисления |Значение тарифа |Период расчета |Период начисления |Сверх норматива |Сумма      |Объем услуги |Объем потребленный |Объем услуги соц норма |Объем услуги потребленный соц норма |Конец периода |Начало периода |
        |'29.02.2020 23:59:59' |'Трусова Ирина Владимировна' |'Отопление' |'ввод_Отопление' |'По нормативу'    |'1 729,660'     |'01.02.2020'   |'01.02.2020'      |'Да'            |''         |''           |'2,737260'         |''                     |''                                  |'01.03.2020'  |'01.02.2020'   |