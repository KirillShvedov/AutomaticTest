﻿#language: ru
@tree
@card 'https://trello.com/c/NswCxSKq'
Функционал: <описание фичи>
Как <Роль>
Я хочу <описание функционала>
Чтобы <бизнес-эффект>

Контекст:
    Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: <РасчетПоНормативуПриФормулеРасчета>
    И я подготавливаю тестовые данные
        И я загружаю макет "РасчетПоНормативуПриФормулеРасчета"
    И я перепровожу загруженные документы
        И В командном интерфейсе я выбираю 'Администрирование' 'Ввод начальных остатков'
        Тогда открылось окно 'Ввод начальных остатков'
        И в таблице 'Список' я выделяю все строки
        И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюПровести' на элементе формы с именем "Список"
    И Я запускаю выполнение начислений по организации 'ОАО "СКЭК"' и району 'Кемеровский городской округ' и МКД '' с 'Сентябрь' '2020' по 'Декабрь 2020'
    И я проверяю начисления
        И Я открываю навигационную ссылку "e1cib/list/РегистрНакопления.энргОбъемНачислений"
        Тогда открылось окно 'Объем начислений'
        И я нажимаю на кнопку с именем 'ФормаУстановитьИнтервал'
        Тогда открылось окно 'Выберите период'
        И в поле 'DateBegin' я ввожу текст '01.09.2020'
        И в поле 'DateEnd' я ввожу текст '31.12.2020'
        И я перехожу к следующему реквизиту
        И я нажимаю на кнопку 'Выбрать'
        Тогда открылось окно 'Объем начислений'
        Тогда в таблице "Список" количество строк "равно" 34
        #Сентябрь
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                          |Услуга                   |Точка учета                     |Способ начисления        |Направление использования ТУ |Прибор учета |Значение тарифа |Период расчета |Период начисления |Сумма    |Объем услуги |Объем потребленный |Сумма по повышенному коэффициенту |Конец периода |Начало периода |
        |'30.09.2020 23:59:59' |'Ярбусова Людмила Александровна' |'Холодное водоснабжение' |'*+ввод_ХВС + водоотведение'    |'По формулам расчета'    |'Основное направление'       |''           |'23,620'        |'01.09.2020'   |'01.09.2020'      |'47,24'  |'2,000000'   |''                 |''                                |'01.10.2020'  |'01.09.2020'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                          |Услуга                   |Точка учета                     |Способ начисления        |Направление использования ТУ |Прибор учета |Значение тарифа |Период расчета |Период начисления |Сумма    |Объем услуги |Объем потребленный |Сумма по повышенному коэффициенту |Конец периода |Начало периода |
        |'30.09.2020 23:59:59' |'Ярбусова Людмила Александровна' |'Холодное водоснабжение' |'*+ввод_ХВС + водоотведение'    |'По формулам расчета'    |'Основное направление'       |''           |'23,620'        |'01.09.2020'   |'01.09.2020'      |''       |''           |'2,000000'         |''                                |'01.10.2020'  |'01.09.2020'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                          |Услуга                   |Точка учета                     |Способ начисления        |Направление использования ТУ |Прибор учета |Значение тарифа |Период расчета |Период начисления |Сумма    |Объем услуги |Объем потребленный |Сумма по повышенному коэффициенту |Конец периода |Начало периода |
        |'30.09.2020 23:59:59' |'Ярбусова Людмила Александровна' |'Холодное водоснабжение' |'+ввод_ХВС + водоотведение'     |'Начисление по среднему' |'Основное направление'       |'1112583'    |'23,620'        |'01.09.2020'   |'01.09.2020'      |''       |''           |''                 |''                                |'01.10.2020'  |'01.09.2020'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                          |Услуга                   |Точка учета                     |Способ начисления        |Направление использования ТУ |Прибор учета |Значение тарифа |Период расчета |Период начисления |Сумма    |Объем услуги |Объем потребленный |Сумма по повышенному коэффициенту |Конец периода |Начало периода |
        |'30.09.2020 23:59:59' |'Ярбусова Людмила Александровна' |'Холодное водоснабжение' |'+ввод_ХВС + водоотведение'     |'Начисление по среднему' |'Основное направление'       |'1112583'    |'23,620'        |'01.09.2020'   |'01.09.2020'      |''       |''           |'14,333333'        |''                                |'01.10.2020'  |'01.09.2020'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                          |Услуга                   |Точка учета                     |Способ начисления        |Направление использования ТУ |Прибор учета |Значение тарифа |Период расчета |Период начисления |Сумма    |Объем услуги |Объем потребленный |Сумма по повышенному коэффициенту |Конец периода |Начало периода |
        |'30.09.2020 23:59:59' |'Ярбусова Людмила Александровна' |'Холодное водоснабжение' |'огород_Холодное водоснабжение' |'Начисление по среднему' |'полив из водопровода'       |'0001040517' |'23,620'        |'01.09.2020'   |'01.09.2020'      |''       |''           |'12,333333'        |''                                |'01.10.2020'  |'01.09.2020'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                          |Услуга                   |Точка учета                     |Способ начисления        |Направление использования ТУ |Прибор учета |Значение тарифа |Период расчета |Период начисления |Сумма    |Объем услуги |Объем потребленный |Сумма по повышенному коэффициенту |Конец периода |Начало периода |
        |'30.09.2020 23:59:59' |'Ярбусова Людмила Александровна' |'Холодное водоснабжение' |'огород_Холодное водоснабжение' |'Начисление по среднему' |'полив из водопровода'       |'0001040517' |'23,620'        |'01.09.2020'   |'01.09.2020'      |'291,31' |'12,333333'  |''                 |''                                |'01.10.2020'  |'01.09.2020'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                          |Услуга                   |Точка учета                     |Способ начисления        |Направление использования ТУ |Прибор учета |Значение тарифа |Период расчета |Период начисления |Сумма    |Объем услуги |Объем потребленный |Сумма по повышенному коэффициенту |Конец периода |Начало периода |
        |'30.09.2020 23:59:59' |'Ярбусова Людмила Александровна' |'Водоотведение'          |'*+ввод_ХВС + водоотведение'    |'По формулам расчета'    |'Основное направление'       |''           |'17,250'        |'01.09.2020'   |'01.09.2020'      |''       |''           |'2,000000'         |''                                |'01.10.2020'  |'01.09.2020'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                          |Услуга                   |Точка учета                     |Способ начисления        |Направление использования ТУ |Прибор учета |Значение тарифа |Период расчета |Период начисления |Сумма    |Объем услуги |Объем потребленный |Сумма по повышенному коэффициенту |Конец периода |Начало периода |
        |'30.09.2020 23:59:59' |'Ярбусова Людмила Александровна' |'Водоотведение'          |'*+ввод_ХВС + водоотведение'    |'По формулам расчета'    |'Основное направление'       |''           |'17,250'        |'01.09.2020'   |'01.09.2020'      |'34,50'  |'2,000000'   |''                 |''                                |'01.10.2020'  |'01.09.2020'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                          |Услуга                   |Точка учета                     |Способ начисления        |Направление использования ТУ |Прибор учета |Значение тарифа |Период расчета |Период начисления |Сумма    |Объем услуги |Объем потребленный |Сумма по повышенному коэффициенту |Конец периода |Начало периода |
        |'30.09.2020 23:59:59' |'Ярбусова Людмила Александровна' |'Водоотведение'          |'+ввод_ХВС + водоотведение'     |'Начисление по среднему' |'Основное направление'       |'1112583'    |'17,250'        |'01.09.2020'   |'01.09.2020'      |''       |''           |''                 |''                                |'01.10.2020'  |'01.09.2020'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                          |Услуга                   |Точка учета                     |Способ начисления        |Направление использования ТУ |Прибор учета |Значение тарифа |Период расчета |Период начисления |Сумма    |Объем услуги |Объем потребленный |Сумма по повышенному коэффициенту |Конец периода |Начало периода |
        |'30.09.2020 23:59:59' |'Ярбусова Людмила Александровна' |'Водоотведение'          |'+ввод_ХВС + водоотведение'     |'Начисление по среднему' |'Основное направление'       |'1112583'    |'17,250'        |'01.09.2020'   |'01.09.2020'      |''       |''           |'14,333333'        |''                                |'01.10.2020'  |'01.09.2020'   |
        #Октябрь
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                          |Услуга                   |Точка учета                     |Способ начисления        |Направление использования ТУ |Прибор учета |Значение тарифа |Период расчета |Период начисления |Сумма    |Объем услуги |Объем потребленный |Сумма по повышенному коэффициенту |Конец периода |Начало периода |
        |'31.10.2020 23:59:59' |'Ярбусова Людмила Александровна' |'Холодное водоснабжение' |'*+ввод_ХВС + водоотведение'    |'По формулам расчета'    |'Основное направление'       |''           |'23,620'        |'01.10.2020'   |'01.10.2020'      |'47,24'  |'2,000000'   |''                 |''                                |'01.11.2020'  |'01.10.2020'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                          |Услуга                   |Точка учета                     |Способ начисления        |Направление использования ТУ |Прибор учета |Значение тарифа |Период расчета |Период начисления |Сумма    |Объем услуги |Объем потребленный |Сумма по повышенному коэффициенту |Конец периода |Начало периода |
        |'31.10.2020 23:59:59' |'Ярбусова Людмила Александровна' |'Холодное водоснабжение' |'*+ввод_ХВС + водоотведение'    |'По формулам расчета'    |'Основное направление'       |''           |'23,620'        |'01.10.2020'   |'01.10.2020'      |''       |''           |'2,000000'         |''                                |'01.11.2020'  |'01.10.2020'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                          |Услуга                   |Точка учета                     |Способ начисления        |Направление использования ТУ |Прибор учета |Значение тарифа |Период расчета |Период начисления |Сумма    |Объем услуги |Объем потребленный |Сумма по повышенному коэффициенту |Конец периода |Начало периода |
        |'31.10.2020 23:59:59' |'Ярбусова Людмила Александровна' |'Холодное водоснабжение' |'+ввод_ХВС + водоотведение'     |'Начисление по среднему' |'Основное направление'       |'1112583'    |'23,620'        |'01.10.2020'   |'01.10.2020'      |''       |''           |''                 |''                                |'01.11.2020'  |'01.10.2020'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                          |Услуга                   |Точка учета                     |Способ начисления        |Направление использования ТУ |Прибор учета |Значение тарифа |Период расчета |Период начисления |Сумма    |Объем услуги |Объем потребленный |Сумма по повышенному коэффициенту |Конец периода |Начало периода |
        |'31.10.2020 23:59:59' |'Ярбусова Людмила Александровна' |'Холодное водоснабжение' |'+ввод_ХВС + водоотведение'     |'Начисление по среднему' |'Основное направление'       |'1112583'    |'23,620'        |'01.10.2020'   |'01.10.2020'      |''       |''           |'14,333333'        |''                                |'01.11.2020'  |'01.10.2020'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                          |Услуга                   |Точка учета                     |Способ начисления        |Направление использования ТУ |Прибор учета |Значение тарифа |Период расчета |Период начисления |Сумма    |Объем услуги |Объем потребленный |Сумма по повышенному коэффициенту |Конец периода |Начало периода |
        |'31.10.2020 23:59:59' |'Ярбусова Людмила Александровна' |'Холодное водоснабжение' |'огород_Холодное водоснабжение' |'Начисление по среднему' |'полив из водопровода'       |'0001040517' |'23,620'        |'01.10.2020'   |'01.10.2020'      |''       |''           |'12,333333'        |''                                |'01.11.2020'  |'01.10.2020'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                          |Услуга                   |Точка учета                     |Способ начисления        |Направление использования ТУ |Прибор учета |Значение тарифа |Период расчета |Период начисления |Сумма    |Объем услуги |Объем потребленный |Сумма по повышенному коэффициенту |Конец периода |Начало периода |
        |'31.10.2020 23:59:59' |'Ярбусова Людмила Александровна' |'Холодное водоснабжение' |'огород_Холодное водоснабжение' |'Начисление по среднему' |'полив из водопровода'       |'0001040517' |'23,620'        |'01.10.2020'   |'01.10.2020'      |'291,31' |'12,333333'  |''                 |''                                |'01.11.2020'  |'01.10.2020'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                          |Услуга                   |Точка учета                     |Способ начисления        |Направление использования ТУ |Прибор учета |Значение тарифа |Период расчета |Период начисления |Сумма    |Объем услуги |Объем потребленный |Сумма по повышенному коэффициенту |Конец периода |Начало периода |
        |'31.10.2020 23:59:59' |'Ярбусова Людмила Александровна' |'Водоотведение'          |'*+ввод_ХВС + водоотведение'    |'По формулам расчета'    |'Основное направление'       |''           |'17,250'        |'01.10.2020'   |'01.10.2020'      |''       |''           |'2,000000'         |''                                |'01.11.2020'  |'01.10.2020'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                          |Услуга                   |Точка учета                     |Способ начисления        |Направление использования ТУ |Прибор учета |Значение тарифа |Период расчета |Период начисления |Сумма    |Объем услуги |Объем потребленный |Сумма по повышенному коэффициенту |Конец периода |Начало периода |
        |'31.10.2020 23:59:59' |'Ярбусова Людмила Александровна' |'Водоотведение'          |'*+ввод_ХВС + водоотведение'    |'По формулам расчета'    |'Основное направление'       |''           |'17,250'        |'01.10.2020'   |'01.10.2020'      |'34,50'  |'2,000000'   |''                 |''                                |'01.11.2020'  |'01.10.2020'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                          |Услуга                   |Точка учета                     |Способ начисления        |Направление использования ТУ |Прибор учета |Значение тарифа |Период расчета |Период начисления |Сумма    |Объем услуги |Объем потребленный |Сумма по повышенному коэффициенту |Конец периода |Начало периода |
        |'31.10.2020 23:59:59' |'Ярбусова Людмила Александровна' |'Водоотведение'          |'+ввод_ХВС + водоотведение'     |'Начисление по среднему' |'Основное направление'       |'1112583'    |'17,250'        |'01.10.2020'   |'01.10.2020'      |''       |''           |''                 |''                                |'01.11.2020'  |'01.10.2020'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                          |Услуга                   |Точка учета                     |Способ начисления        |Направление использования ТУ |Прибор учета |Значение тарифа |Период расчета |Период начисления |Сумма    |Объем услуги |Объем потребленный |Сумма по повышенному коэффициенту |Конец периода |Начало периода |
        |'31.10.2020 23:59:59' |'Ярбусова Людмила Александровна' |'Водоотведение'          |'+ввод_ХВС + водоотведение'     |'Начисление по среднему' |'Основное направление'       |'1112583'    |'17,250'        |'01.10.2020'   |'01.10.2020'      |''       |''           |'14,333333'        |''                                |'01.11.2020'  |'01.10.2020'   |
        #Ноябрь
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                          |Услуга                   |Точка учета                     |Способ начисления        |Направление использования ТУ |Прибор учета |Значение тарифа |Период расчета |Период начисления |Сумма    |Объем услуги |Объем потребленный |Сумма по повышенному коэффициенту |Конец периода |Начало периода |
        |'30.11.2020 23:59:59' |'Ярбусова Людмила Александровна' |'Холодное водоснабжение' |'*+ввод_ХВС + водоотведение'    |'По формулам расчета'    |'Основное направление'       |''           |'23,620'        |'01.11.2020'   |'01.11.2020'      |'47,24'  |'2,000000'   |''                 |''                                |'01.12.2020'  |'01.11.2020'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                          |Услуга                   |Точка учета                     |Способ начисления        |Направление использования ТУ |Прибор учета |Значение тарифа |Период расчета |Период начисления |Сумма    |Объем услуги |Объем потребленный |Сумма по повышенному коэффициенту |Конец периода |Начало периода |
        |'30.11.2020 23:59:59' |'Ярбусова Людмила Александровна' |'Холодное водоснабжение' |'*+ввод_ХВС + водоотведение'    |'По формулам расчета'    |'Основное направление'       |''           |'23,620'        |'01.11.2020'   |'01.11.2020'      |''       |''           |'2,000000'         |''                                |'01.12.2020'  |'01.11.2020'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                          |Услуга                   |Точка учета                     |Способ начисления        |Направление использования ТУ |Прибор учета |Значение тарифа |Период расчета |Период начисления |Сумма    |Объем услуги |Объем потребленный |Сумма по повышенному коэффициенту |Конец периода |Начало периода |
        |'30.11.2020 23:59:59' |'Ярбусова Людмила Александровна' |'Холодное водоснабжение' |'+ввод_ХВС + водоотведение'     |'Начисление по среднему' |'Основное направление'       |'1112583'    |'23,620'        |'01.11.2020'   |'01.11.2020'      |''       |''           |''                 |''                                |'01.12.2020'  |'01.11.2020'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                          |Услуга                   |Точка учета                     |Способ начисления        |Направление использования ТУ |Прибор учета |Значение тарифа |Период расчета |Период начисления |Сумма    |Объем услуги |Объем потребленный |Сумма по повышенному коэффициенту |Конец периода |Начало периода |
        |'30.11.2020 23:59:59' |'Ярбусова Людмила Александровна' |'Холодное водоснабжение' |'+ввод_ХВС + водоотведение'     |'Начисление по среднему' |'Основное направление'       |'1112583'    |'23,620'        |'01.11.2020'   |'01.11.2020'      |''       |''           |'14,333333'        |''                                |'01.12.2020'  |'01.11.2020'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                          |Услуга                   |Точка учета                     |Способ начисления        |Направление использования ТУ |Прибор учета |Значение тарифа |Период расчета |Период начисления |Сумма    |Объем услуги |Объем потребленный |Сумма по повышенному коэффициенту |Конец периода |Начало периода |
        |'30.11.2020 23:59:59' |'Ярбусова Людмила Александровна' |'Холодное водоснабжение' |'огород_Холодное водоснабжение' |'Начисление по среднему' |'полив из водопровода'       |'0001040517' |'23,620'        |'01.11.2020'   |'01.11.2020'      |''       |''           |'12,333333'        |''                                |'01.12.2020'  |'01.11.2020'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                          |Услуга                   |Точка учета                     |Способ начисления        |Направление использования ТУ |Прибор учета |Значение тарифа |Период расчета |Период начисления |Сумма    |Объем услуги |Объем потребленный |Сумма по повышенному коэффициенту |Конец периода |Начало периода |
        |'30.11.2020 23:59:59' |'Ярбусова Людмила Александровна' |'Холодное водоснабжение' |'огород_Холодное водоснабжение' |'Начисление по среднему' |'полив из водопровода'       |'0001040517' |'23,620'        |'01.11.2020'   |'01.11.2020'      |'291,31' |'12,333333'  |''                 |''                                |'01.12.2020'  |'01.11.2020'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                          |Услуга                   |Точка учета                     |Способ начисления        |Направление использования ТУ |Прибор учета |Значение тарифа |Период расчета |Период начисления |Сумма    |Объем услуги |Объем потребленный |Сумма по повышенному коэффициенту |Конец периода |Начало периода |
        |'30.11.2020 23:59:59' |'Ярбусова Людмила Александровна' |'Водоотведение'          |'*+ввод_ХВС + водоотведение'    |'По формулам расчета'    |'Основное направление'       |''           |'17,250'        |'01.11.2020'   |'01.11.2020'      |''       |''           |'2,000000'         |''                                |'01.12.2020'  |'01.11.2020'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                          |Услуга                   |Точка учета                     |Способ начисления        |Направление использования ТУ |Прибор учета |Значение тарифа |Период расчета |Период начисления |Сумма    |Объем услуги |Объем потребленный |Сумма по повышенному коэффициенту |Конец периода |Начало периода |
        |'30.11.2020 23:59:59' |'Ярбусова Людмила Александровна' |'Водоотведение'          |'*+ввод_ХВС + водоотведение'    |'По формулам расчета'    |'Основное направление'       |''           |'17,250'        |'01.11.2020'   |'01.11.2020'      |'34,50'  |'2,000000'   |''                 |''                                |'01.12.2020'  |'01.11.2020'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                          |Услуга                   |Точка учета                     |Способ начисления        |Направление использования ТУ |Прибор учета |Значение тарифа |Период расчета |Период начисления |Сумма    |Объем услуги |Объем потребленный |Сумма по повышенному коэффициенту |Конец периода |Начало периода |
        |'30.11.2020 23:59:59' |'Ярбусова Людмила Александровна' |'Водоотведение'          |'+ввод_ХВС + водоотведение'     |'Начисление по среднему' |'Основное направление'       |'1112583'    |'17,250'        |'01.11.2020'   |'01.11.2020'      |''       |''           |''                 |''                                |'01.12.2020'  |'01.11.2020'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                          |Услуга                   |Точка учета                     |Способ начисления        |Направление использования ТУ |Прибор учета |Значение тарифа |Период расчета |Период начисления |Сумма    |Объем услуги |Объем потребленный |Сумма по повышенному коэффициенту |Конец периода |Начало периода |
        |'30.11.2020 23:59:59' |'Ярбусова Людмила Александровна' |'Водоотведение'          |'+ввод_ХВС + водоотведение'     |'Начисление по среднему' |'Основное направление'       |'1112583'    |'17,250'        |'01.11.2020'   |'01.11.2020'      |''       |''           |'14,333333'        |''                                |'01.12.2020'  |'01.11.2020'   |
        #Декабрь
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                          |Услуга                   |Точка учета                  |Способ начисления      |Прибор учета |Значение тарифа |Период расчета |Период начисления |Сумма |Объем услуги |Объем потребленный |Конец периода |Начало периода |
        |'31.12.2020 23:59:59' |'Ярбусова Людмила Александровна' |'Водоотведение'          |'*+ввод_ХВС + водоотведение' |'По формулам расчета'  |''           |'17,250'        |'01.12.2020'   |'01.12.2020'      |''    |''           |''                 |'01.01.2021'  |'01.12.2020'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                          |Услуга                   |Точка учета                  |Способ начисления      |Прибор учета |Значение тарифа |Период расчета |Период начисления |Сумма |Объем услуги |Объем потребленный |Конец периода |Начало периода |
        |'31.12.2020 23:59:59' |'Ярбусова Людмила Александровна' |'Холодное водоснабжение' |'*+ввод_ХВС + водоотведение' |'По формулам расчета'  |''           |'23,620'        |'01.12.2020'   |'01.12.2020'      |''    |''           |''                 |'01.01.2021'  |'01.12.2020'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                          |Услуга                   |Точка учета                  |Способ начисления      |Прибор учета |Значение тарифа |Период расчета |Период начисления |Сумма |Объем услуги |Объем потребленный |Конец периода |Начало периода |
        |'31.12.2020 23:59:59' |'Ярбусова Людмила Александровна' |'Водоотведение'          |'*+ввод_ХВС + водоотведение' |'По формулам расчета'  |''           |'17,250'        |'01.12.2020'   |'01.12.2020'      |''    |''           |''                 |'01.01.2021'  |'01.12.2020'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                          |Услуга                   |Точка учета                  |Способ начисления      |Прибор учета |Значение тарифа |Период расчета |Период начисления |Сумма |Объем услуги |Объем потребленный |Конец периода |Начало периода |
        |'31.12.2020 23:59:59' |'Ярбусова Людмила Александровна' |'Холодное водоснабжение' |'*+ввод_ХВС + водоотведение' |'По формулам расчета'  |''           |'23,620'        |'01.12.2020'   |'01.12.2020'      |''    |''           |''                 |'01.01.2021'  |'01.12.2020'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                          |Услуга                   |Точка учета                  |Способ начисления      |Прибор учета |Значение тарифа |Период расчета |Период начисления |Сумма |Объем услуги |Объем потребленный |Конец периода |Начало периода |
        |'31.12.2020 23:59:59' |'Ярбусова Людмила Александровна' |'Водоотведение'          |'+ввод_ХВС + водоотведение'  |'Среднее по нормативу' |'1112583'    |'17,250'        |'01.12.2020'   |'01.12.2020'      |''    |''           |'7,280000'         |'01.01.2021'  |'01.12.2020'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                          |Услуга                   |Точка учета                  |Способ начисления      |Прибор учета |Значение тарифа |Период расчета |Период начисления |Сумма |Объем услуги |Объем потребленный |Конец периода |Начало периода |
        |'31.12.2020 23:59:59' |'Ярбусова Людмила Александровна' |'Холодное водоснабжение' |'+ввод_ХВС + водоотведение'  |'Среднее по нормативу' |'1112583'    |'23,620'        |'01.12.2020'   |'01.12.2020'      |''    |''           |'7,280000'         |'01.01.2021'  |'01.12.2020'   |