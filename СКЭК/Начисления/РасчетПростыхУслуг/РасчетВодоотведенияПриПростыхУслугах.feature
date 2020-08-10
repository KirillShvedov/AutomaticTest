﻿#language: ru
@tree
Функционал: <описание фичи>
"https://trello.com/c/XPVIg22n"
Как <Роль>
Я хочу <проверить расчет подчиненных услуг по среднему>
Чтобы <бизнес-эффект>

Контекст:
    Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: <РасчетВодоотведенияПриПростыхУслугах>
    И я подготавливаю тестовые данные
        И я загружаю макет "РасчетВодоотведенияПриПростыхУслугах.mxl"
    И я перепровожу загруженные данные
        И В командном интерфейсе я выбираю 'Администрирование' 'Ввод начальных остатков'
        Тогда открылось окно 'Ввод начальных остатков'
        И в таблице 'Список' я выделяю все строки
        И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюПровести' на элементе формы с именем "Список"
        И В командном интерфейсе я выбираю 'Работа с абонентами' 'Регистрация показаний абонента'
        Тогда открылось окно 'Регистрация показаний абонента'
        И в таблице 'Список' я выделяю все строки
        И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюПровести' на элементе формы с именем "Список"
    И Я запускаю выполнение начислений по организации 'ООО "ПКС"' и району 'Плотниковское СП Промышленновского р-на' и МКД '' с 'Июль' '2019' по 'Декабрь 2019'
    И я проверяю полученные результаты
        И Я открываю навигационную ссылку "e1cib/list/РегистрНакопления.энргОбъемНачислений"
        Тогда открылось окно 'Объем начислений'
        #Июль
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                      |Услуга                   |Точка учета                            |Способ начисления        |Прибор учета    |Значение тарифа |Период расчета |Период начисления |Сумма    |Объем услуги |Объем потребленный |Сумма по повышенному коэффициенту |Конец периода |Начало периода |
        |'31.07.2019 23:59:59' |'Усольцева Ольга Алексеевна' |'Холодное водоснабжение' |'ввод_ХВС + водоотведение'             |'Начисление по среднему' |'1013049239900' |'20,900'        |'01.07.2019'   |'01.07.2019'      |'358,78' |'17,166667'  |''                 |''                                |'01.08.2019'  |'01.07.2019'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                      |Услуга                   |Точка учета                            |Способ начисления        |Прибор учета    |Значение тарифа |Период расчета |Период начисления |Сумма    |Объем услуги |Объем потребленный |Сумма по повышенному коэффициенту |Конец периода |Начало периода |
        |'31.07.2019 23:59:59' |'Усольцева Ольга Алексеевна' |'Холодное водоснабжение' |'ввод_ХВС + водоотведение'             |'Начисление по среднему' |'1013049239900' |'20,900'        |'01.07.2019'   |'01.07.2019'      |''       |''           |'17,166667'        |''                                |'01.08.2019'  |'01.07.2019'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                      |Услуга                   |Точка учета                            |Способ начисления        |Прибор учета    |Значение тарифа |Период расчета |Период начисления |Сумма    |Объем услуги |Объем потребленный |Сумма по повышенному коэффициенту |Конец периода |Начало периода |
        |'31.07.2019 23:59:59' |'Усольцева Ольга Алексеевна' |'Водоотведение'          |'стоки_ГВС + водоотведение'            |'Начисление по среднему' |'052170'        |'12,930'        |'01.07.2019'   |'01.07.2019'      |''       |''           |'0,920000'         |''                                |'01.08.2019'  |'01.07.2019'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                      |Услуга                   |Точка учета                            |Способ начисления        |Прибор учета    |Значение тарифа |Период расчета |Период начисления |Сумма    |Объем услуги |Объем потребленный |Сумма по повышенному коэффициенту |Конец периода |Начало периода |
        |'31.07.2019 23:59:59' |'Усольцева Ольга Алексеевна' |'Водоотведение'          |'стоки_ГВС + водоотведение'            |'Начисление по среднему' |'052170'        |'12,930'        |'01.07.2019'   |'01.07.2019'      |'11,90'  |'0,920000'   |''                 |''                                |'01.08.2019'  |'01.07.2019'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                      |Услуга                   |Точка учета                            |Способ начисления        |Прибор учета    |Значение тарифа |Период расчета |Период начисления |Сумма    |Объем услуги |Объем потребленный |Сумма по повышенному коэффициенту |Конец периода |Начало периода |
        |'31.07.2019 23:59:59' |'Усольцева Ольга Алексеевна' |'Водоотведение'          |'стоки от 2-ой ГВ_ГВС + водоотведение' |'Начисление по среднему' |'099849-17'     |'12,930'        |'01.07.2019'   |'01.07.2019'      |'122,84' |'9,500000'   |''                 |''                                |'01.08.2019'  |'01.07.2019'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                      |Услуга                   |Точка учета                            |Способ начисления        |Прибор учета    |Значение тарифа |Период расчета |Период начисления |Сумма    |Объем услуги |Объем потребленный |Сумма по повышенному коэффициенту |Конец периода |Начало периода |
        |'31.07.2019 23:59:59' |'Усольцева Ольга Алексеевна' |'Водоотведение'          |'стоки от 2-ой ГВ_ГВС + водоотведение' |'Начисление по среднему' |'099849-17'     |'12,930'        |'01.07.2019'   |'01.07.2019'      |''       |''           |'9,500000'         |''                                |'01.08.2019'  |'01.07.2019'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                      |Услуга                   |Точка учета                            |Способ начисления        |Прибор учета    |Значение тарифа |Период расчета |Период начисления |Сумма    |Объем услуги |Объем потребленный |Сумма по повышенному коэффициенту |Конец периода |Начало периода |
        |'31.07.2019 23:59:59' |'Усольцева Ольга Алексеевна' |'Водоотведение'          |'ввод_ХВС + водоотведение'             |'Начисление по среднему' |'1013049239900' |'12,930'        |'01.07.2019'   |'01.07.2019'      |''       |''           |'17,166667'        |''                                |'01.08.2019'  |'01.07.2019'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                      |Услуга                   |Точка учета                            |Способ начисления        |Прибор учета    |Значение тарифа |Период расчета |Период начисления |Сумма    |Объем услуги |Объем потребленный |Сумма по повышенному коэффициенту |Конец периода |Начало периода |
        |'31.07.2019 23:59:59' |'Усольцева Ольга Алексеевна' |'Водоотведение'          |'ввод_ХВС + водоотведение'             |'Начисление по среднему' |'1013049239900' |'12,930'        |'01.07.2019'   |'01.07.2019'      |'221,97' |'17,166667'  |''                 |''                                |'01.08.2019'  |'01.07.2019'   |
        #Август
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                      |Услуга                   |Точка учета                            |Способ начисления        |Прибор учета    |Значение тарифа |Период расчета |Период начисления |Сумма    |Объем услуги |Объем потребленный |Сумма по повышенному коэффициенту |Конец периода |Начало периода |
        |'31.08.2019 23:59:59' |'Усольцева Ольга Алексеевна' |'Холодное водоснабжение' |'ввод_ХВС + водоотведение'             |'Начисление по среднему' |'1013049239900' |'20,900'        |'01.08.2019'   |'01.08.2019'      |'358,78' |'17,166667'  |''                 |''                                |'01.09.2019'  |'01.08.2019'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                      |Услуга                   |Точка учета                            |Способ начисления        |Прибор учета    |Значение тарифа |Период расчета |Период начисления |Сумма    |Объем услуги |Объем потребленный |Сумма по повышенному коэффициенту |Конец периода |Начало периода |
        |'31.08.2019 23:59:59' |'Усольцева Ольга Алексеевна' |'Холодное водоснабжение' |'ввод_ХВС + водоотведение'             |'Начисление по среднему' |'1013049239900' |'20,900'        |'01.08.2019'   |'01.08.2019'      |''       |''           |'17,166667'        |''                                |'01.09.2019'  |'01.08.2019'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                      |Услуга                   |Точка учета                            |Способ начисления        |Прибор учета    |Значение тарифа |Период расчета |Период начисления |Сумма    |Объем услуги |Объем потребленный |Сумма по повышенному коэффициенту |Конец периода |Начало периода |
        |'31.08.2019 23:59:59' |'Усольцева Ольга Алексеевна' |'Водоотведение'          |'стоки_ГВС + водоотведение'            |'Начисление по среднему' |'052170'        |'12,930'        |'01.08.2019'   |'01.08.2019'      |'11,90'  |'0,920000'   |''                 |''                                |'01.09.2019'  |'01.08.2019'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                      |Услуга                   |Точка учета                            |Способ начисления        |Прибор учета    |Значение тарифа |Период расчета |Период начисления |Сумма    |Объем услуги |Объем потребленный |Сумма по повышенному коэффициенту |Конец периода |Начало периода |
        |'31.08.2019 23:59:59' |'Усольцева Ольга Алексеевна' |'Водоотведение'          |'стоки_ГВС + водоотведение'            |'Начисление по среднему' |'052170'        |'12,930'        |'01.08.2019'   |'01.08.2019'      |''       |''           |'0,920000'         |''                                |'01.09.2019'  |'01.08.2019'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                      |Услуга                   |Точка учета                            |Способ начисления        |Прибор учета    |Значение тарифа |Период расчета |Период начисления |Сумма    |Объем услуги |Объем потребленный |Сумма по повышенному коэффициенту |Конец периода |Начало периода |
        |'31.08.2019 23:59:59' |'Усольцева Ольга Алексеевна' |'Водоотведение'          |'стоки от 2-ой ГВ_ГВС + водоотведение' |'Начисление по среднему' |'099849-17'     |'12,930'        |'01.08.2019'   |'01.08.2019'      |''       |''           |'9,500000'         |''                                |'01.09.2019'  |'01.08.2019'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                      |Услуга                   |Точка учета                            |Способ начисления        |Прибор учета    |Значение тарифа |Период расчета |Период начисления |Сумма    |Объем услуги |Объем потребленный |Сумма по повышенному коэффициенту |Конец периода |Начало периода |
        |'31.08.2019 23:59:59' |'Усольцева Ольга Алексеевна' |'Водоотведение'          |'стоки от 2-ой ГВ_ГВС + водоотведение' |'Начисление по среднему' |'099849-17'     |'12,930'        |'01.08.2019'   |'01.08.2019'      |'122,84' |'9,500000'   |''                 |''                                |'01.09.2019'  |'01.08.2019'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                      |Услуга                   |Точка учета                            |Способ начисления        |Прибор учета    |Значение тарифа |Период расчета |Период начисления |Сумма    |Объем услуги |Объем потребленный |Сумма по повышенному коэффициенту |Конец периода |Начало периода |
        |'31.08.2019 23:59:59' |'Усольцева Ольга Алексеевна' |'Водоотведение'          |'ввод_ХВС + водоотведение'             |'Начисление по среднему' |'1013049239900' |'12,930'        |'01.08.2019'   |'01.08.2019'      |''       |''           |'17,166667'        |''                                |'01.09.2019'  |'01.08.2019'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                      |Услуга                   |Точка учета                            |Способ начисления        |Прибор учета    |Значение тарифа |Период расчета |Период начисления |Сумма    |Объем услуги |Объем потребленный |Сумма по повышенному коэффициенту |Конец периода |Начало периода |
        |'31.08.2019 23:59:59' |'Усольцева Ольга Алексеевна' |'Водоотведение'          |'ввод_ХВС + водоотведение'             |'Начисление по среднему' |'1013049239900' |'12,930'        |'01.08.2019'   |'01.08.2019'      |'221,97' |'17,166667'  |''                 |''                                |'01.09.2019'  |'01.08.2019'   |
        #Сентябрь
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                      |Услуга                   |Точка учета                            |Способ начисления        |Прибор учета    |Значение тарифа |Период расчета |Период начисления |Сумма    |Объем услуги |Объем потребленный |Сумма по повышенному коэффициенту |Конец периода |Начало периода |
        |'30.09.2019 23:59:59' |'Усольцева Ольга Алексеевна' |'Водоотведение'          |'ввод_ХВС + водоотведение'             |'Начисление по среднему' |'1013049239900' |'12,930'        |'01.09.2019'   |'01.09.2019'      |''       |''           |'17,166667'        |''                                |'01.10.2019'  |'01.09.2019'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                      |Услуга                   |Точка учета                            |Способ начисления        |Прибор учета    |Значение тарифа |Период расчета |Период начисления |Сумма    |Объем услуги |Объем потребленный |Сумма по повышенному коэффициенту |Конец периода |Начало периода |
        |'30.09.2019 23:59:59' |'Усольцева Ольга Алексеевна' |'Холодное водоснабжение' |'ввод_ХВС + водоотведение'             |'Начисление по среднему' |'1013049239900' |'20,900'        |'01.09.2019'   |'01.09.2019'      |'358,78' |'17,166667'  |''                 |''                                |'01.10.2019'  |'01.09.2019'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                      |Услуга                   |Точка учета                            |Способ начисления        |Прибор учета    |Значение тарифа |Период расчета |Период начисления |Сумма    |Объем услуги |Объем потребленный |Сумма по повышенному коэффициенту |Конец периода |Начало периода |
        |'30.09.2019 23:59:59' |'Усольцева Ольга Алексеевна' |'Водоотведение'          |'ввод_ХВС + водоотведение'             |'Начисление по среднему' |'1013049239900' |'12,930'        |'01.09.2019'   |'01.09.2019'      |'221,97' |'17,166667'  |''                 |''                                |'01.10.2019'  |'01.09.2019'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                      |Услуга                   |Точка учета                            |Способ начисления        |Прибор учета    |Значение тарифа |Период расчета |Период начисления |Сумма    |Объем услуги |Объем потребленный |Сумма по повышенному коэффициенту |Конец периода |Начало периода |
        |'30.09.2019 23:59:59' |'Усольцева Ольга Алексеевна' |'Холодное водоснабжение' |'ввод_ХВС + водоотведение'             |'Начисление по среднему' |'1013049239900' |'20,900'        |'01.09.2019'   |'01.09.2019'      |''       |''           |'17,166667'        |''                                |'01.10.2019'  |'01.09.2019'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                      |Услуга                   |Точка учета                            |Способ начисления        |Прибор учета    |Значение тарифа |Период расчета |Период начисления |Сумма    |Объем услуги |Объем потребленный |Сумма по повышенному коэффициенту |Конец периода |Начало периода |
        |'30.09.2019 23:59:59' |'Усольцева Ольга Алексеевна' |'Водоотведение'          |'стоки_ГВС + водоотведение'            |'Начисление по среднему' |'052170'        |'12,930'        |'01.09.2019'   |'01.09.2019'      |'11,90'  |'0,920000'   |''                 |''                                |'01.10.2019'  |'01.09.2019'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                      |Услуга                   |Точка учета                            |Способ начисления        |Прибор учета    |Значение тарифа |Период расчета |Период начисления |Сумма    |Объем услуги |Объем потребленный |Сумма по повышенному коэффициенту |Конец периода |Начало периода |
        |'30.09.2019 23:59:59' |'Усольцева Ольга Алексеевна' |'Водоотведение'          |'стоки_ГВС + водоотведение'            |'Начисление по среднему' |'052170'        |'12,930'        |'01.09.2019'   |'01.09.2019'      |''       |''           |'0,920000'         |''                                |'01.10.2019'  |'01.09.2019'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                      |Услуга                   |Точка учета                            |Способ начисления        |Прибор учета    |Значение тарифа |Период расчета |Период начисления |Сумма    |Объем услуги |Объем потребленный |Сумма по повышенному коэффициенту |Конец периода |Начало периода |
        |'30.09.2019 23:59:59' |'Усольцева Ольга Алексеевна' |'Водоотведение'          |'стоки от 2-ой ГВ_ГВС + водоотведение' |'Начисление по среднему' |'099849-17'     |'12,930'        |'01.09.2019'   |'01.09.2019'      |''       |''           |'9,500000'         |''                                |'01.10.2019'  |'01.09.2019'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                      |Услуга                   |Точка учета                            |Способ начисления        |Прибор учета    |Значение тарифа |Период расчета |Период начисления |Сумма    |Объем услуги |Объем потребленный |Сумма по повышенному коэффициенту |Конец периода |Начало периода |
        |'30.09.2019 23:59:59' |'Усольцева Ольга Алексеевна' |'Водоотведение'          |'стоки от 2-ой ГВ_ГВС + водоотведение' |'Начисление по среднему' |'099849-17'     |'12,930'        |'01.09.2019'   |'01.09.2019'      |'122,84' |'9,500000'   |''                 |''                                |'01.10.2019'  |'01.09.2019'   |
        #Октябрь
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                      |Услуга                   |Точка учета                            |Способ начисления        |Прибор учета    |Значение тарифа |Период расчета |Период начисления |Сумма    |Объем услуги |Объем потребленный |Сумма по повышенному коэффициенту |Конец периода |Начало периода |
        |'31.10.2019 23:59:59' |'Усольцева Ольга Алексеевна' |'Холодное водоснабжение' |'ввод_ХВС + водоотведение'             |'Среднее по нормативу'   |'1013049239900' |'20,900'        |'01.10.2019'   |'01.10.2019'      |'314,13' |'15,030000'  |''                 |''                                |'01.11.2019'  |'01.10.2019'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                      |Услуга                   |Точка учета                            |Способ начисления        |Прибор учета    |Значение тарифа |Период расчета |Период начисления |Сумма    |Объем услуги |Объем потребленный |Сумма по повышенному коэффициенту |Конец периода |Начало периода |
        |'31.10.2019 23:59:59' |'Усольцева Ольга Алексеевна' |'Холодное водоснабжение' |'ввод_ХВС + водоотведение'             |'Среднее по нормативу'   |'1013049239900' |'20,900'        |'01.10.2019'   |'01.10.2019'      |''       |''           |'15,030000'        |''                                |'01.11.2019'  |'01.10.2019'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                      |Услуга                   |Точка учета                            |Способ начисления        |Прибор учета    |Значение тарифа |Период расчета |Период начисления |Сумма    |Объем услуги |Объем потребленный |Сумма по повышенному коэффициенту |Конец периода |Начало периода |
        |'31.10.2019 23:59:59' |'Усольцева Ольга Алексеевна' |'Водоотведение'          |'стоки от 2-ой ГВ_ГВС + водоотведение' |'Среднее по нормативу'   |'099849-17'     |'12,930'        |'01.10.2019'   |'01.10.2019'      |''       |''           |'25,140000'        |''                                |'01.11.2019'  |'01.10.2019'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                      |Услуга                   |Точка учета                            |Способ начисления        |Прибор учета    |Значение тарифа |Период расчета |Период начисления |Сумма    |Объем услуги |Объем потребленный |Сумма по повышенному коэффициенту |Конец периода |Начало периода |
        |'31.10.2019 23:59:59' |'Усольцева Ольга Алексеевна' |'Водоотведение'          |'стоки от 2-ой ГВ_ГВС + водоотведение' |'Среднее по нормативу'   |'099849-17'     |'12,930'        |'01.10.2019'   |'01.10.2019'      |'325,06' |'25,140000'  |''                 |''                                |'01.11.2019'  |'01.10.2019'   |
        #Ноябрь
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                      |Услуга                   |Точка учета                            |Способ начисления        |Прибор учета    |Значение тарифа |Период расчета |Период начисления |Сумма    |Объем услуги |Объем потребленный |Сумма по повышенному коэффициенту |Конец периода |Начало периода |
        |'30.11.2019 23:59:59' |'Усольцева Ольга Алексеевна' |'Холодное водоснабжение' |'ввод_ХВС + водоотведение'             |'Среднее по нормативу'   |'1013049239900' |'20,900'        |'01.11.2019'   |'01.11.2019'      |'314,13' |'15,030000'  |''                 |''                                |'01.12.2019'  |'01.11.2019'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                      |Услуга                   |Точка учета                            |Способ начисления        |Прибор учета    |Значение тарифа |Период расчета |Период начисления |Сумма    |Объем услуги |Объем потребленный |Сумма по повышенному коэффициенту |Конец периода |Начало периода |
        |'30.11.2019 23:59:59' |'Усольцева Ольга Алексеевна' |'Холодное водоснабжение' |'ввод_ХВС + водоотведение'             |'Среднее по нормативу'   |'1013049239900' |'20,900'        |'01.11.2019'   |'01.11.2019'      |''       |''           |'15,030000'        |''                                |'01.12.2019'  |'01.11.2019'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                      |Услуга                   |Точка учета                            |Способ начисления        |Прибор учета    |Значение тарифа |Период расчета |Период начисления |Сумма    |Объем услуги |Объем потребленный |Сумма по повышенному коэффициенту |Конец периода |Начало периода |
        |'30.11.2019 23:59:59' |'Усольцева Ольга Алексеевна' |'Водоотведение'          |'стоки от 2-ой ГВ_ГВС + водоотведение' |'Среднее по нормативу'   |'099849-17'     |'12,930'        |'01.11.2019'   |'01.11.2019'      |''       |''           |'25,140000'        |''                                |'01.12.2019'  |'01.11.2019'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                      |Услуга                   |Точка учета                            |Способ начисления        |Прибор учета    |Значение тарифа |Период расчета |Период начисления |Сумма    |Объем услуги |Объем потребленный |Сумма по повышенному коэффициенту |Конец периода |Начало периода |
        |'30.11.2019 23:59:59' |'Усольцева Ольга Алексеевна' |'Водоотведение'          |'стоки от 2-ой ГВ_ГВС + водоотведение' |'Среднее по нормативу'   |'099849-17'     |'12,930'        |'01.11.2019'   |'01.11.2019'      |'325,06' |'25,140000'  |''                 |''                                |'01.12.2019'  |'01.11.2019'   |
        #Декабрь
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                      |Услуга                   |Точка учета                            |Способ начисления        |Прибор учета    |Значение тарифа |Период расчета |Период начисления |Сумма    |Объем услуги |Объем потребленный |Сумма по повышенному коэффициенту |Конец периода |Начало периода |
        |'31.12.2019 23:59:59' |'Усольцева Ольга Алексеевна' |'Холодное водоснабжение' |'ввод_ХВС + водоотведение'             |'Среднее по нормативу'   |'1013049239900' |'20,900'        |'01.12.2019'   |'01.12.2019'      |'314,13' |'15,030000'  |''                 |''                                |'01.01.2020'  |'01.12.2019'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                      |Услуга                   |Точка учета                            |Способ начисления        |Прибор учета    |Значение тарифа |Период расчета |Период начисления |Сумма    |Объем услуги |Объем потребленный |Сумма по повышенному коэффициенту |Конец периода |Начало периода |
        |'31.12.2019 23:59:59' |'Усольцева Ольга Алексеевна' |'Холодное водоснабжение' |'ввод_ХВС + водоотведение'             |'Среднее по нормативу'   |'1013049239900' |'20,900'        |'01.12.2019'   |'01.12.2019'      |''       |''           |'15,030000'        |''                                |'01.01.2020'  |'01.12.2019'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                      |Услуга                   |Точка учета                            |Способ начисления        |Прибор учета    |Значение тарифа |Период расчета |Период начисления |Сумма    |Объем услуги |Объем потребленный |Сумма по повышенному коэффициенту |Конец периода |Начало периода |
        |'31.12.2019 23:59:59' |'Усольцева Ольга Алексеевна' |'Водоотведение'          |'стоки от 2-ой ГВ_ГВС + водоотведение' |'Среднее по нормативу'   |'099849-17'     |'12,930'        |'01.12.2019'   |'01.12.2019'      |''       |''           |'25,140000'        |''                                |'01.01.2020'  |'01.12.2019'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                      |Услуга                   |Точка учета                            |Способ начисления        |Прибор учета    |Значение тарифа |Период расчета |Период начисления |Сумма    |Объем услуги |Объем потребленный |Сумма по повышенному коэффициенту |Конец периода |Начало периода |
        |'31.12.2019 23:59:59' |'Усольцева Ольга Алексеевна' |'Водоотведение'          |'стоки от 2-ой ГВ_ГВС + водоотведение' |'Среднее по нормативу'   |'099849-17'     |'12,930'        |'01.12.2019'   |'01.12.2019'      |'325,06' |'25,140000'  |''                 |''                                |'01.01.2020'  |'01.12.2019'   |