﻿#language: ru
@tree
@card 'https://trello.com/c/W1EzM72T'
Функционал: <описание фичи>
Как <Роль>
Я хочу <описание функционала>
Чтобы <бизнес-эффект>

Контекст:
    Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: <РасчетГодовойКорретировки>
    И я подготавливаю тестовые данные
        И я загружаю макет "РасчетГодовойКорретировки"
    И я перепровожу загруженные документы
        И В командном интерфейсе я выбираю 'Администрирование' 'Ввод начальных остатков'
        Тогда открылось окно 'Ввод начальных остатков'
        И в таблице 'Список' я выделяю все строки
        И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюПровести' на элементе формы с именем "Список"
        И В командном интерфейсе я выбираю 'Работа с абонентами' 'Регистрация показаний абонента'
        Тогда открылось окно 'Регистрация показаний абонента'
        И в таблице 'Список' я выделяю все строки
        И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюПровести' на элементе формы с именем "Список"
    И Я запускаю выполнение начислений по организации 'ОАО "СКЭК"' и району 'Плотниковское СП Промышленновского р-на' и МКД '' с 'Май' '2020' по 'Январь 2021'
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
        И из выпадающего списка "&Что искать" я выбираю по строке 'Мачнов Николай Дмитриевич'
        И я нажимаю на кнопку '&Найти'
        Тогда открылось окно 'Объем начислений'
        #Январь 20
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                     |Точка учета      |Вид начисления |Способ начисления              |Направление использования ТУ |Прибор учета |Значение тарифа |Период расчета |Период начисления |Сверх норматива |Сумма       |Объем услуги |Объем потребленный |Сумма по повышенному коэффициенту |Объем услуги соц норма |Объем услуги потребленный соц норма |Конец периода |Начало периода |
        |'01.01.2020 0:00:00'  |'Мачнов Николай Дмитриевич' |'узел_Отопление' |'Начисление'   |'По нормативу'                 |'Основное направление'       |''           |'1 001,840'     |'01.01.2020'   |'01.01.2020'      |'Нет'           |'2 796,14'  |'2,791000'   |'6,060000'         |''                                |''                     |''                                  |'31.01.2020'  |'01.01.2020'   |
        #Февраль 20
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                     |Точка учета      |Вид начисления |Способ начисления              |Направление использования ТУ |Прибор учета |Значение тарифа |Период расчета |Период начисления |Сверх норматива |Сумма       |Объем услуги |Объем потребленный |Сумма по повышенному коэффициенту |Объем услуги соц норма |Объем услуги потребленный соц норма |Конец периода |Начало периода |
        |'01.02.2020 0:00:00'  |'Мачнов Николай Дмитриевич' |'узел_Отопление' |'Начисление'   |'По нормативу'                 |'Основное направление'       |''           |'1 001,840'     |'01.02.2020'   |'01.02.2020'      |'Нет'           |'2 796,14'  |'2,791000'   |'4,847000'         |''                                |''                     |''                                  |'29.02.2020'  |'01.02.2020'   |
        #Март 20
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                     |Точка учета      |Вид начисления |Способ начисления              |Направление использования ТУ |Прибор учета |Значение тарифа |Период расчета |Период начисления |Сверх норматива |Сумма       |Объем услуги |Объем потребленный |Сумма по повышенному коэффициенту |Объем услуги соц норма |Объем услуги потребленный соц норма |Конец периода |Начало периода |
        |'01.03.2020 0:00:00'  |'Мачнов Николай Дмитриевич' |'узел_Отопление' |'Начисление'   |'По нормативу'                 |'Основное направление'       |''           |'1 001,840'     |'01.03.2020'   |'01.03.2020'      |'Нет'           |'2 796,14'  |'2,791000'   |'4,444000'         |''                                |''                     |''                                  |'31.03.2020'  |'01.03.2020'   |
        #Апрель 20
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                     |Точка учета      |Вид начисления |Способ начисления              |Направление использования ТУ |Прибор учета |Значение тарифа |Период расчета |Период начисления |Сверх норматива |Сумма       |Объем услуги |Объем потребленный |Сумма по повышенному коэффициенту |Объем услуги соц норма |Объем услуги потребленный соц норма |Конец периода |Начало периода |
        |'01.04.2020 0:00:00'  |'Мачнов Николай Дмитриевич' |'узел_Отопление' |'Начисление'   |'По нормативу'                 |'Основное направление'       |''           |'1 001,840'     |'01.04.2020'   |'01.04.2020'      |'Нет'           |'2 796,14'  |'2,791000'   |'2,020000'         |''                                |''                     |''                                  |'30.04.2020'  |'01.04.2020'   |
        #Май 20
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                     |Точка учета      |Вид начисления |Способ начисления              |Направление использования ТУ |Прибор учета |Значение тарифа |Период расчета |Период начисления |Сверх норматива |Сумма       |Объем услуги |Объем потребленный |Сумма по повышенному коэффициенту |Объем услуги соц норма |Объем услуги потребленный соц норма |Конец периода |Начало периода |
        |'31.05.2020 23:59:59' |'Мачнов Николай Дмитриевич' |'узел_Отопление' |'Начисление'   |'Начисление по среднему'       |'Основное направление'       |'30448423'   |'1 001,840'     |'01.05.2020'   |'01.05.2020'      |'Нет'           |'1 277,20'  |'1,274856'   |''                 |''                                |'1,274856'             |''                                  |'01.06.2020'  |'01.05.2020'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                     |Точка учета      |Вид начисления |Способ начисления              |Направление использования ТУ |Прибор учета |Значение тарифа |Период расчета |Период начисления |Сверх норматива |Сумма       |Объем услуги |Объем потребленный |Сумма по повышенному коэффициенту |Объем услуги соц норма |Объем услуги потребленный соц норма |Конец периода |Начало периода |
        |'31.05.2020 23:59:59' |'Мачнов Николай Дмитриевич' |'узел_Отопление' |'Начисление'   |'По приборам'                  |'Основное направление'       |'30448423'   |'1 001,840'     |'01.05.2020'   |'01.05.2020'      |'Нет'           |''          |''           |'0,279410'         |''                                |''                     |'0,279410'                          |'01.06.2020'  |'01.05.2020'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                     |Точка учета      |Вид начисления |Способ начисления              |Направление использования ТУ |Прибор учета |Значение тарифа |Период расчета |Период начисления |Сверх норматива |Сумма       |Объем услуги |Объем потребленный |Сумма по повышенному коэффициенту |Объем услуги соц норма |Объем услуги потребленный соц норма |Конец периода |Начало периода |
        |'31.05.2020 23:59:59' |'Мачнов Николай Дмитриевич' |'узел_Отопление' |'Начисление'   |'Начисление по среднему'       |'Основное направление'       |'30448423'   |'1 001,840'     |'01.05.2020'   |'01.05.2020'      |'Да'            |'1 488,29'  |'1,485561'   |''                 |''                                |''                     |''                                  |'01.06.2020'  |'01.05.2020'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                     |Точка учета      |Вид начисления |Способ начисления              |Направление использования ТУ |Прибор учета |Значение тарифа |Период расчета |Период начисления |Сверх норматива |Сумма       |Объем услуги |Объем потребленный |Сумма по повышенному коэффициенту |Объем услуги соц норма |Объем услуги потребленный соц норма |Конец периода |Начало периода |
        |'31.05.2020 23:59:59' |'Мачнов Николай Дмитриевич' |'узел_Отопление' |'Начисление'   |'По приборам'                  |'Основное направление'       |'30448423'   |'1 001,840'     |'01.05.2020'   |'01.05.2020'      |'Да'            |''          |''           |'0,325590'         |''                                |''                     |''                                  |'01.06.2020'  |'01.05.2020'   |
        #Июнь 20
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                     |Точка учета      |Вид начисления |Способ начисления              |Направление использования ТУ |Прибор учета |Значение тарифа |Период расчета |Период начисления |Сверх норматива |Сумма       |Объем услуги |Объем потребленный |Сумма по повышенному коэффициенту |Объем услуги соц норма |Объем услуги потребленный соц норма |Конец периода |Начало периода |
        |'30.06.2020 23:59:59' |'Мачнов Николай Дмитриевич' |'узел_Отопление' |'Начисление'   |'По приборам'                  |'Основное направление'       |'30448423'   |'1 001,840'     |'01.06.2020'   |'01.06.2020'      |'Нет'           |''          |''           |''                 |''                                |''                     |''                                  |'01.07.2020'  |'01.06.2020'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                     |Точка учета      |Вид начисления |Способ начисления              |Направление использования ТУ |Прибор учета |Значение тарифа |Период расчета |Период начисления |Сверх норматива |Сумма       |Объем услуги |Объем потребленный |Сумма по повышенному коэффициенту |Объем услуги соц норма |Объем услуги потребленный соц норма |Конец периода |Начало периода |
        |'30.06.2020 23:59:59' |'Мачнов Николай Дмитриевич' |'узел_Отопление' |'Начисление'   |'Начисление по среднему'       |'Основное направление'       |'30448423'   |'1 001,840'     |'01.06.2020'   |'01.06.2020'      |'Нет'           |'1 277,20'  |'1,274856'   |''                 |''                                |'1,274856'             |''                                  |'01.07.2020'  |'01.06.2020'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                     |Точка учета      |Вид начисления |Способ начисления              |Направление использования ТУ |Прибор учета |Значение тарифа |Период расчета |Период начисления |Сверх норматива |Сумма       |Объем услуги |Объем потребленный |Сумма по повышенному коэффициенту |Объем услуги соц норма |Объем услуги потребленный соц норма |Конец периода |Начало периода |
        |'30.06.2020 23:59:59' |'Мачнов Николай Дмитриевич' |'узел_Отопление' |'Начисление'   |'Начисление по среднему'       |'Основное направление'       |'30448423'   |'1 001,840'     |'01.06.2020'   |'01.06.2020'      |'Да'            |'1 488,29'  |'1,485561'   |''                 |''                                |''                     |''                                  |'01.07.2020'  |'01.06.2020'   |
        #Июль 20
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                     |Точка учета      |Вид начисления |Способ начисления              |Направление использования ТУ |Прибор учета |Значение тарифа |Период расчета |Период начисления |Сверх норматива |Сумма       |Объем услуги |Объем потребленный |Сумма по повышенному коэффициенту |Объем услуги соц норма |Объем услуги потребленный соц норма |Конец периода |Начало периода |
        |'31.07.2020 23:59:59' |'Мачнов Николай Дмитриевич' |'узел_Отопление' |'Начисление'   |'Начисление по среднему'       |'Основное направление'       |'30448423'   |'1 001,840'     |'01.07.2020'   |'01.07.2020'      |'Нет'           |'1 277,20'  |'1,274856'   |''                 |''                                |'1,274856'             |''                                  |'01.08.2020'  |'01.07.2020'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                     |Точка учета      |Вид начисления |Способ начисления              |Направление использования ТУ |Прибор учета |Значение тарифа |Период расчета |Период начисления |Сверх норматива |Сумма       |Объем услуги |Объем потребленный |Сумма по повышенному коэффициенту |Объем услуги соц норма |Объем услуги потребленный соц норма |Конец периода |Начало периода |
        |'31.07.2020 23:59:59' |'Мачнов Николай Дмитриевич' |'узел_Отопление' |'Начисление'   |'Начисление по среднему'       |'Основное направление'       |'30448423'   |'1 300,000'     |'01.07.2020'   |'01.07.2020'      |'Да'            |'1 931,23'  |'1,485561'   |''                 |''                                |''                     |''                                  |'01.08.2020'  |'01.07.2020'   |
        #Август 20
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                     |Точка учета      |Вид начисления |Способ начисления              |Направление использования ТУ |Прибор учета |Значение тарифа |Период расчета |Период начисления |Сверх норматива |Сумма       |Объем услуги |Объем потребленный |Сумма по повышенному коэффициенту |Объем услуги соц норма |Объем услуги потребленный соц норма |Конец периода |Начало периода |
        |'31.08.2020 23:59:59' |'Мачнов Николай Дмитриевич' |'узел_Отопление' |'Начисление'   |'Начисление по среднему'       |'Основное направление'       |'30448423'   |'1 001,840'     |'01.08.2020'   |'01.08.2020'      |'Нет'           |'1 277,20'  |'1,274856'   |''                 |''                                |'1,274856'             |''                                  |'01.09.2020'  |'01.08.2020'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                     |Точка учета      |Вид начисления |Способ начисления              |Направление использования ТУ |Прибор учета |Значение тарифа |Период расчета |Период начисления |Сверх норматива |Сумма       |Объем услуги |Объем потребленный |Сумма по повышенному коэффициенту |Объем услуги соц норма |Объем услуги потребленный соц норма |Конец периода |Начало периода |
        |'31.08.2020 23:59:59' |'Мачнов Николай Дмитриевич' |'узел_Отопление' |'Начисление'   |'Начисление по среднему'       |'Основное направление'       |'30448423'   |'1 300,000'     |'01.08.2020'   |'01.08.2020'      |'Да'            |'1 931,23'  |'1,485561'   |''                 |''                                |''                     |''                                  |'01.09.2020'  |'01.08.2020'   |
        #Сентябрь 20
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                     |Точка учета      |Вид начисления |Способ начисления              |Направление использования ТУ |Прибор учета |Значение тарифа |Период расчета |Период начисления |Сверх норматива |Сумма       |Объем услуги |Объем потребленный |Сумма по повышенному коэффициенту |Объем услуги соц норма |Объем услуги потребленный соц норма |Конец периода |Начало периода |
        |'30.09.2020 23:59:59' |'Мачнов Николай Дмитриевич' |'узел_Отопление' |'Начисление'   |'Начисление по среднему'       |'Основное направление'       |'30448423'   |'1 001,840'     |'01.09.2020'   |'01.09.2020'      |'Нет'           |''          |''           |'1,521540'         |''                                |''                     |'1,521540'                          |'01.10.2020'  |'01.09.2020'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                     |Точка учета      |Вид начисления |Способ начисления              |Направление использования ТУ |Прибор учета |Значение тарифа |Период расчета |Период начисления |Сверх норматива |Сумма       |Объем услуги |Объем потребленный |Сумма по повышенному коэффициенту |Объем услуги соц норма |Объем услуги потребленный соц норма |Конец периода |Начало периода |
        |'30.09.2020 23:59:59' |'Мачнов Николай Дмитриевич' |'узел_Отопление' |'Начисление'   |'Начисление по среднему'       |'Основное направление'       |'30448423'   |'1 001,840'     |'01.09.2020'   |'01.09.2020'      |'Нет'           |'1 277,20'  |'1,274856'   |''                 |''                                |'1,274856'             |''                                  |'01.10.2020'  |'01.09.2020'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                     |Точка учета      |Вид начисления |Способ начисления              |Направление использования ТУ |Прибор учета |Значение тарифа |Период расчета |Период начисления |Сверх норматива |Сумма       |Объем услуги |Объем потребленный |Сумма по повышенному коэффициенту |Объем услуги соц норма |Объем услуги потребленный соц норма |Конец периода |Начало периода |
        |'30.09.2020 23:59:59' |'Мачнов Николай Дмитриевич' |'узел_Отопление' |'Начисление'   |'Начисление по среднему'       |'Основное направление'       |'30448423'   |'1 300,000'     |'01.09.2020'   |'01.09.2020'      |'Да'            |'1 931,23'  |'1,485561'   |''                 |''                                |''                     |''                                  |'01.10.2020'  |'01.09.2020'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                     |Точка учета      |Вид начисления |Способ начисления              |Направление использования ТУ |Прибор учета |Значение тарифа |Период расчета |Период начисления |Сверх норматива |Сумма       |Объем услуги |Объем потребленный |Сумма по повышенному коэффициенту |Объем услуги соц норма |Объем услуги потребленный соц норма |Конец периода |Начало периода |
        |'30.09.2020 23:59:59' |'Мачнов Николай Дмитриевич' |'узел_Отопление' |'Начисление'   |'Начисление по среднему'       |'Основное направление'       |'30448423'   |'1 300,000'     |'01.09.2020'   |'01.09.2020'      |'Да'            |''          |''           |'1,773016'         |''                                |''                     |''                                  |'01.10.2020'  |'01.09.2020'   |
        #Октябрь 20
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                     |Точка учета      |Вид начисления |Способ начисления              |Направление использования ТУ |Прибор учета |Значение тарифа |Период расчета |Период начисления |Сверх норматива |Сумма       |Объем услуги |Объем потребленный |Сумма по повышенному коэффициенту |Объем услуги соц норма |Объем услуги потребленный соц норма |Конец периода |Начало периода |
        |'31.10.2020 23:59:59' |'Мачнов Николай Дмитриевич' |'узел_Отопление' |'Начисление'   |'Начисление по среднему'       |'Основное направление'       |'30448423'   |'1 001,840'     |'01.10.2020'   |'01.10.2020'      |'Нет'           |'1 277,20'  |'1,274856'   |''                 |''                                |'1,274856'             |''                                  |'01.11.2020'  |'01.10.2020'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                     |Точка учета      |Вид начисления |Способ начисления              |Направление использования ТУ |Прибор учета |Значение тарифа |Период расчета |Период начисления |Сверх норматива |Сумма       |Объем услуги |Объем потребленный |Сумма по повышенному коэффициенту |Объем услуги соц норма |Объем услуги потребленный соц норма |Конец периода |Начало периода |
        |'31.10.2020 23:59:59' |'Мачнов Николай Дмитриевич' |'узел_Отопление' |'Начисление'   |'Начисление по среднему'       |'Основное направление'       |'30448423'   |'1 001,840'     |'01.10.2020'   |'01.10.2020'      |'Нет'           |''          |''           |'1,521540'         |''                                |''                     |'1,521540'                          |'01.11.2020'  |'01.10.2020'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                     |Точка учета      |Вид начисления |Способ начисления              |Направление использования ТУ |Прибор учета |Значение тарифа |Период расчета |Период начисления |Сверх норматива |Сумма       |Объем услуги |Объем потребленный |Сумма по повышенному коэффициенту |Объем услуги соц норма |Объем услуги потребленный соц норма |Конец периода |Начало периода |
        |'31.10.2020 23:59:59' |'Мачнов Николай Дмитриевич' |'узел_Отопление' |'Начисление'   |'Начисление по среднему'       |'Основное направление'       |'30448423'   |'1 300,000'     |'01.10.2020'   |'01.10.2020'      |'Да'            |'1 931,23'  |'1,485561'   |''                 |''                                |''                     |''                                  |'01.11.2020'  |'01.10.2020'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                     |Точка учета      |Вид начисления |Способ начисления              |Направление использования ТУ |Прибор учета |Значение тарифа |Период расчета |Период начисления |Сверх норматива |Сумма       |Объем услуги |Объем потребленный |Сумма по повышенному коэффициенту |Объем услуги соц норма |Объем услуги потребленный соц норма |Конец периода |Начало периода |
        |'31.10.2020 23:59:59' |'Мачнов Николай Дмитриевич' |'узел_Отопление' |'Начисление'   |'Начисление по среднему'       |'Основное направление'       |'30448423'   |'1 300,000'     |'01.10.2020'   |'01.10.2020'      |'Да'            |''          |''           |'1,773016'         |''                                |''                     |''                                  |'01.11.2020'  |'01.10.2020'   |
        #Ноябрь 20
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                     |Точка учета      |Вид начисления |Способ начисления              |Направление использования ТУ |Прибор учета |Значение тарифа |Период расчета |Период начисления |Сверх норматива |Сумма       |Объем услуги |Объем потребленный |Сумма по повышенному коэффициенту |Объем услуги соц норма |Объем услуги потребленный соц норма |Конец периода |Начало периода |
        |'30.11.2020 23:59:59' |'Мачнов Николай Дмитриевич' |'узел_Отопление' |'Начисление'   |'Начисление по среднему'       |'Основное направление'       |'30448423'   |'1 001,840'     |'01.11.2020'   |'01.11.2020'      |'Нет'           |'1 277,20'  |'1,274856'   |''                 |''                                |'1,274856'             |''                                  |'01.12.2020'  |'01.11.2020'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                     |Точка учета      |Вид начисления |Способ начисления              |Направление использования ТУ |Прибор учета |Значение тарифа |Период расчета |Период начисления |Сверх норматива |Сумма       |Объем услуги |Объем потребленный |Сумма по повышенному коэффициенту |Объем услуги соц норма |Объем услуги потребленный соц норма |Конец периода |Начало периода |
        |'30.11.2020 23:59:59' |'Мачнов Николай Дмитриевич' |'узел_Отопление' |'Начисление'   |'Начисление по среднему'       |'Основное направление'       |'30448423'   |'1 001,840'     |'01.11.2020'   |'01.11.2020'      |'Нет'           |''          |''           |'1,521540'         |''                                |''                     |'1,521540'                          |'01.12.2020'  |'01.11.2020'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                     |Точка учета      |Вид начисления |Способ начисления              |Направление использования ТУ |Прибор учета |Значение тарифа |Период расчета |Период начисления |Сверх норматива |Сумма       |Объем услуги |Объем потребленный |Сумма по повышенному коэффициенту |Объем услуги соц норма |Объем услуги потребленный соц норма |Конец периода |Начало периода |
        |'30.11.2020 23:59:59' |'Мачнов Николай Дмитриевич' |'узел_Отопление' |'Начисление'   |'Начисление по среднему'       |'Основное направление'       |'30448423'   |'1 300,000'     |'01.11.2020'   |'01.11.2020'      |'Да'            |'1 931,23'  |'1,485561'   |''                 |''                                |''                     |''                                  |'01.12.2020'  |'01.11.2020'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                     |Точка учета      |Вид начисления |Способ начисления              |Направление использования ТУ |Прибор учета |Значение тарифа |Период расчета |Период начисления |Сверх норматива |Сумма       |Объем услуги |Объем потребленный |Сумма по повышенному коэффициенту |Объем услуги соц норма |Объем услуги потребленный соц норма |Конец периода |Начало периода |
        |'30.11.2020 23:59:59' |'Мачнов Николай Дмитриевич' |'узел_Отопление' |'Начисление'   |'Начисление по среднему'       |'Основное направление'       |'30448423'   |'1 300,000'     |'01.11.2020'   |'01.11.2020'      |'Да'            |''          |''           |'1,773016'         |''                                |''                     |''                                  |'01.12.2020'  |'01.11.2020'   |
        #Декабрь 20
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                     |Точка учета      |Вид начисления |Способ начисления              |Направление использования ТУ |Прибор учета |Значение тарифа |Период расчета |Период начисления |Сверх норматива |Сумма       |Объем услуги |Объем потребленный |Сумма по повышенному коэффициенту |Объем услуги соц норма |Объем услуги потребленный соц норма |Конец периода |Начало периода |
        |'31.12.2020 23:59:59' |'Мачнов Николай Дмитриевич' |'узел_Отопление' |'Начисление'   |'Начисление по среднему'       |'Основное направление'       |'30448423'   |'1 001,840'     |'01.12.2020'   |'01.12.2020'      |'Нет'           |'1 277,20'  |'1,274856'   |''                 |''                                |'1,274856'             |''                                  |'01.01.2021'  |'01.12.2020'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                     |Точка учета      |Вид начисления |Способ начисления              |Направление использования ТУ |Прибор учета |Значение тарифа |Период расчета |Период начисления |Сверх норматива |Сумма       |Объем услуги |Объем потребленный |Сумма по повышенному коэффициенту |Объем услуги соц норма |Объем услуги потребленный соц норма |Конец периода |Начало периода |
        |'31.12.2020 23:59:59' |'Мачнов Николай Дмитриевич' |'узел_Отопление' |'Начисление'   |'Среднее по нормативу'         |'Основное направление'       |'30448423'   |'1 001,840'     |'01.12.2020'   |'01.12.2020'      |'Нет'           |''          |''           |'1,107294'         |''                                |''                     |'1,107294'                          |'01.01.2021'  |'01.12.2020'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                     |Точка учета      |Вид начисления |Способ начисления              |Направление использования ТУ |Прибор учета |Значение тарифа |Период расчета |Период начисления |Сверх норматива |Сумма       |Объем услуги |Объем потребленный |Сумма по повышенному коэффициенту |Объем услуги соц норма |Объем услуги потребленный соц норма |Конец периода |Начало периода |
        |'31.12.2020 23:59:59' |'Мачнов Николай Дмитриевич' |'узел_Отопление' |'Начисление'   |'Начисление по среднему'       |'Основное направление'       |'30448423'   |'1 300,000'     |'01.12.2020'   |'01.12.2020'      |'Да'            |'1 931,23'  |'1,485561'   |''                 |''                                |''                     |''                                  |'01.01.2021'  |'01.12.2020'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                     |Точка учета      |Вид начисления |Способ начисления              |Направление использования ТУ |Прибор учета |Значение тарифа |Период расчета |Период начисления |Сверх норматива |Сумма       |Объем услуги |Объем потребленный |Сумма по повышенному коэффициенту |Объем услуги соц норма |Объем услуги потребленный соц норма |Конец периода |Начало периода |
        |'31.12.2020 23:59:59' |'Мачнов Николай Дмитриевич' |'узел_Отопление' |'Начисление'   |'Среднее по нормативу'         |'Основное направление'       |'30448423'   |'1 300,000'     |'01.12.2020'   |'01.12.2020'      |'Да'            |''          |''           |'1,290306'         |''                                |''                     |''                                  |'01.01.2021'  |'01.12.2020'   |
        #Январь 20
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                     |Точка учета      |Вид начисления |Способ начисления              |Направление использования ТУ |Прибор учета |Значение тарифа |Период расчета |Период начисления |Сверх норматива |Сумма       |Объем услуги |Объем потребленный |Сумма по повышенному коэффициенту |Объем услуги соц норма |Объем услуги потребленный соц норма |Конец периода |Начало периода |
        |'31.01.2021 23:59:59' |'Мачнов Николай Дмитриевич' |'узел_Отопление' |'Начисление'   |'Среднее по нормативу'         |'Основное направление'       |'30448423'   |'1 001,840'     |'01.01.2021'   |'01.01.2021'      |'Нет'           |''          |''           |'1,107294'         |''                                |''                     |'1,107294'                          |'01.02.2021'  |'01.01.2021'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                     |Точка учета      |Вид начисления |Способ начисления              |Направление использования ТУ |Прибор учета |Значение тарифа |Период расчета |Период начисления |Сверх норматива |Сумма       |Объем услуги |Объем потребленный |Сумма по повышенному коэффициенту |Объем услуги соц норма |Объем услуги потребленный соц норма |Конец периода |Начало периода |
        |'31.01.2021 23:59:59' |'Мачнов Николай Дмитриевич' |'узел_Отопление' |'Начисление'   |'Начисление по среднему'       |'Основное направление'       |'30448423'   |'1 001,840'     |'01.01.2021'   |'01.01.2021'      |'Нет'           |'1 386,20'  |'1,383656'   |''                 |''                                |'1,383656'             |''                                  |'01.02.2021'  |'01.01.2021'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                     |Точка учета      |Вид начисления |Способ начисления              |Направление использования ТУ |Прибор учета |Значение тарифа |Период расчета |Период начисления |Сверх норматива |Сумма       |Объем услуги |Объем потребленный |Сумма по повышенному коэффициенту |Объем услуги соц норма |Объем услуги потребленный соц норма |Конец периода |Начало периода |
        |'31.01.2021 23:59:59' |'Мачнов Николай Дмитриевич' |'узел_Отопление' |'Начисление'   |'Начисление по среднему'       |'Основное направление'       |'30448423'   |'1 300,000'     |'01.01.2021'   |'01.01.2021'      |'Да'            |'2 096,05'  |'1,612344'   |''                 |''                                |''                     |''                                  |'01.02.2021'  |'01.01.2021'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                     |Точка учета      |Вид начисления |Способ начисления              |Направление использования ТУ |Прибор учета |Значение тарифа |Период расчета |Период начисления |Сверх норматива |Сумма       |Объем услуги |Объем потребленный |Сумма по повышенному коэффициенту |Объем услуги соц норма |Объем услуги потребленный соц норма |Конец периода |Начало периода |
        |'31.01.2021 23:59:59' |'Мачнов Николай Дмитриевич' |'узел_Отопление' |'Начисление'   |'Среднее по нормативу'         |'Основное направление'       |'30448423'   |'1 300,000'     |'01.01.2021'   |'01.01.2021'      |'Да'            |''          |''           |'1,290306'         |''                                |''                     |''                                  |'01.02.2021'  |'01.01.2021'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                     |Точка учета      |Вид начисления |Способ начисления              |Направление использования ТУ |Прибор учета |Значение тарифа |Период расчета |Период начисления |Сверх норматива |Сумма       |Объем услуги |Объем потребленный |Сумма по повышенному коэффициенту |Объем услуги соц норма |Объем услуги потребленный соц норма |Конец периода |Начало периода |
        |'31.01.2021 23:59:59' |'Мачнов Николай Дмитриевич' |''               |'Перерасчет'   |'Корректировка сезонных услуг' |''                           |''           |'1 001,840'     |''             |'01.01.2021'      |'Нет'           |'1 293,54'  |'1,291166'   |''                 |''                                |''                     |''                                  |''            |''             |