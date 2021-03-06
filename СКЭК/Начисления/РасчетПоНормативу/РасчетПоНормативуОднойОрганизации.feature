#language: ru
@tree
@card 'https://trello.com/c/NMICLfXI'
Функционал: <описание фичи>
Как <Роль>
Я хочу <описание функционала>
Чтобы <бизнес-эффект>

Контекст:
    Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: <РасчетПоНормативуОднойОрганизации>
    И я подготавливаю тестовые данные
        И я загружаю макет "РасчетПоНормативуОднойОрганизации"
    И я перепровожу ввод начальных остатков за август
        И В командном интерфейсе я выбираю 'Администрирование' 'Ввод начальных остатков'
        Тогда открылось окно 'Ввод начальных остатков'
        И в таблице 'Список' я выделяю все строки
        И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюПровести' на элементе формы с именем "Список"
    И Я запускаю выполнение начислений по организации 'ОАО "СКЭК"' и району 'Кемеровский городской округ' и МКД '' с 'Август' '2020' по 'Сентябрь 2020'    
    И я проверяю начисления
        И Я открываю навигационную ссылку "e1cib/list/РегистрНакопления.энргОбъемНачислений"
        Тогда открылось окно 'Объем начислений'
        #Качесов. ХВС
        #Август
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                         |Услуга                   |Точка учета                     |Вид начисления |Способ начисления |Направление использования ТУ |Значение тарифа |Период расчета |Период начисления |Сумма    |Объем услуги |Объем потребленный |Сумма по повышенному коэффициенту |Конец периода |Начало периода |
        |'31.08.2020 23:59:59' |'Качесов Василий Александрович' |'Холодное водоснабжение' |'ввод_ХВС + водоотведение'      |'Начисление'   |'По нормативу'    |'Основное направление'       |'36,090'        |'01.08.2020'   |'01.08.2020'      |'542,43' |'15,030000'  |''                 |''                                |'01.09.2020'  |'01.08.2020'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                         |Услуга                   |Точка учета                     |Вид начисления |Способ начисления |Направление использования ТУ |Значение тарифа |Период расчета |Период начисления |Сумма    |Объем услуги |Объем потребленный |Сумма по повышенному коэффициенту |Конец периода |Начало периода |
        |'31.08.2020 23:59:59' |'Качесов Василий Александрович' |'Водоотведение'          |'ввод_ХВС + водоотведение'      |'Начисление'   |'По нормативу'    |'Основное направление'       |'16,580'        |'01.08.2020'   |'01.08.2020'      |'416,82' |'25,140000'  |''                 |''                                |'01.09.2020'  |'01.08.2020'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                         |Услуга                   |Точка учета                     |Вид начисления |Способ начисления |Направление использования ТУ |Значение тарифа |Период расчета |Период начисления |Сумма    |Объем услуги |Объем потребленный |Сумма по повышенному коэффициенту |Конец периода |Начало периода |
        |'31.08.2020 23:59:59' |'Качесов Василий Александрович' |'Холодное водоснабжение' |'ввод_ХВС + водоотведение'      |'Начисление'   |'По нормативу'    |'Основное направление'       |'36,090'        |'01.08.2020'   |'01.08.2020'      |''       |''           |'15,030000'        |''                                |'01.09.2020'  |'01.08.2020'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                         |Услуга                   |Точка учета                     |Вид начисления |Способ начисления |Направление использования ТУ |Значение тарифа |Период расчета |Период начисления |Сумма    |Объем услуги |Объем потребленный |Сумма по повышенному коэффициенту |Конец периода |Начало периода |
        |'31.08.2020 23:59:59' |'Качесов Василий Александрович' |'Водоотведение'          |'ввод_ХВС + водоотведение'      |'Начисление'   |'По нормативу'    |'Основное направление'       |'16,580'        |'01.08.2020'   |'01.08.2020'      |''       |''           |'25,140000'        |''                                |'01.09.2020'  |'01.08.2020'   |
        #Сентябрь
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                         |Услуга                   |Точка учета                     |Вид начисления |Способ начисления |Направление использования ТУ |Значение тарифа |Период расчета |Период начисления |Сумма    |Объем услуги |Объем потребленный |Сумма по повышенному коэффициенту |Конец периода |Начало периода |
        |'30.09.2020 23:59:59' |'Качесов Василий Александрович' |'Холодное водоснабжение' |'ввод_ХВС + водоотведение'      |'Начисление'   |'По нормативу'    |'Основное направление'       |'43,320'        |'01.09.2020'   |'01.09.2020'      |'651,10' |'15,030000'  |''                 |''                                |'01.10.2020'  |'01.09.2020'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                         |Услуга                   |Точка учета                     |Вид начисления |Способ начисления |Направление использования ТУ |Значение тарифа |Период расчета |Период начисления |Сумма    |Объем услуги |Объем потребленный |Сумма по повышенному коэффициенту |Конец периода |Начало периода |
        |'30.09.2020 23:59:59' |'Качесов Василий Александрович' |'Водоотведение'          |'ввод_ХВС + водоотведение'      |'Начисление'   |'По нормативу'    |'Основное направление'       |'23,210'        |'01.09.2020'   |'01.09.2020'      |'583,50' |'25,140000'  |''                 |''                                |'01.10.2020'  |'01.09.2020'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                         |Услуга                   |Точка учета                     |Вид начисления |Способ начисления |Направление использования ТУ |Значение тарифа |Период расчета |Период начисления |Сумма    |Объем услуги |Объем потребленный |Сумма по повышенному коэффициенту |Конец периода |Начало периода |
        |'30.09.2020 23:59:59' |'Качесов Василий Александрович' |'Холодное водоснабжение' |'ввод_ХВС + водоотведение'      |'Начисление'   |'По нормативу'    |'Основное направление'       |'43,320'        |'01.09.2020'   |'01.09.2020'      |''       |''           |'15,030000'        |''                                |'01.10.2020'  |'01.09.2020'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                         |Услуга                   |Точка учета                     |Вид начисления |Способ начисления |Направление использования ТУ |Значение тарифа |Период расчета |Период начисления |Сумма    |Объем услуги |Объем потребленный |Сумма по повышенному коэффициенту |Конец периода |Начало периода |
        |'30.09.2020 23:59:59' |'Качесов Василий Александрович' |'Водоотведение'          |'ввод_ХВС + водоотведение'      |'Начисление'   |'По нормативу'    |'Основное направление'       |'23,210'        |'01.09.2020'   |'01.09.2020'      |''       |''           |'25,140000'        |''                                |'01.10.2020'  |'01.09.2020'   |
        #Качесов. Отопление
        #Сентябрь
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                         |Услуга                  |Точка учета                  |Вид начисления |Способ начисления      |Направление использования ТУ |Прибор учета |Значение тарифа |Период расчета |Период начисления |Сверх норматива |Сумма      |Объем услуги |Объем потребленный |Сумма по повышенному коэффициенту |Объем услуги соц норма |Объем услуги потребленный соц норма |Конец периода |Начало периода |
        |'30.09.2020 23:59:59' |'Качесов Василий Александрович' |'Горячее водоснабжение' |'ввод_ГВС + водоотведение'   |'Начисление'   |'Среднее по нормативу' |'Основное направление'       |'0077126'    |'37,380'        |'01.09.2020'   |'01.09.2020'      |'Нет'           |'309,51'   |'8,280000'   |''                 |''                                |''                     |''                                  |'01.10.2020'  |'01.09.2020'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                         |Услуга                  |Точка учета                  |Вид начисления |Способ начисления      |Направление использования ТУ |Прибор учета |Значение тарифа |Период расчета |Период начисления |Сверх норматива |Сумма      |Объем услуги |Объем потребленный |Сумма по повышенному коэффициенту |Объем услуги соц норма |Объем услуги потребленный соц норма |Конец периода |Начало периода |
        |'30.09.2020 23:59:59' |'Качесов Василий Александрович' |'Горячее водоснабжение' |'ввод_ГВС + водоотведение'   |'Начисление'   |'Среднее по нормативу' |'Основное направление'       |'0077126'    |'37,380'        |'01.09.2020'   |'01.09.2020'      |'Нет'           |''         |''           |'8,280000'         |''                                |''                     |''                                  |'01.10.2020'  |'01.09.2020'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                         |Услуга                  |Точка учета                  |Вид начисления |Способ начисления      |Направление использования ТУ |Прибор учета |Значение тарифа |Период расчета |Период начисления |Сверх норматива |Сумма      |Объем услуги |Объем потребленный |Сумма по повышенному коэффициенту |Объем услуги соц норма |Объем услуги потребленный соц норма |Конец периода |Начало периода |
        |'30.09.2020 23:59:59' |'Качесов Василий Александрович' |'Отопление'             |'узел_Отопление'             |'Начисление'   |'По нормативу'         |'Основное направление'       |''           |'844,170'       |'01.09.2020'   |'01.09.2020'      |'Нет'           |'1 138,49' |'1,348650'   |''                 |''                                |'1,348650'             |''                                  |'01.10.2020'  |'01.09.2020'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                         |Услуга                  |Точка учета                  |Вид начисления |Способ начисления      |Направление использования ТУ |Прибор учета |Значение тарифа |Период расчета |Период начисления |Сверх норматива |Сумма      |Объем услуги |Объем потребленный |Сумма по повышенному коэффициенту |Объем услуги соц норма |Объем услуги потребленный соц норма |Конец периода |Начало периода |
        |'30.09.2020 23:59:59' |'Качесов Василий Александрович' |'Отопление'             |'узел_Отопление'             |'Начисление'   |'По нормативу'         |'Основное направление'       |''           |'844,170'       |'01.09.2020'   |'01.09.2020'      |'Нет'           |''         |''           |'1,798200'         |''                                |''                     |'1,798200'                          |'01.10.2020'  |'01.09.2020'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                         |Услуга                  |Точка учета                  |Вид начисления |Способ начисления      |Направление использования ТУ |Прибор учета |Значение тарифа |Период расчета |Период начисления |Сверх норматива |Сумма      |Объем услуги |Объем потребленный |Сумма по повышенному коэффициенту |Объем услуги соц норма |Объем услуги потребленный соц норма |Конец периода |Начало периода |
        |'30.09.2020 23:59:59' |'Качесов Василий Александрович' |'Отопление'             |'узел_Отопление'             |'Начисление'   |'По нормативу'         |'Основное направление'       |''           |'1 727,910'     |'01.09.2020'   |'01.09.2020'      |'Да'            |'627,04'   |'0,362887'   |''                 |''                                |''                     |''                                  |'01.10.2020'  |'01.09.2020'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                         |Услуга                  |Точка учета                  |Вид начисления |Способ начисления      |Направление использования ТУ |Прибор учета |Значение тарифа |Период расчета |Период начисления |Сверх норматива |Сумма      |Объем услуги |Объем потребленный |Сумма по повышенному коэффициенту |Объем услуги соц норма |Объем услуги потребленный соц норма |Конец периода |Начало периода |
        |'30.09.2020 23:59:59' |'Качесов Василий Александрович' |'Отопление'             |'узел_Отопление'             |'Начисление'   |'По нормативу'         |'Основное направление'       |''           |'1 727,910'     |'01.09.2020'   |'01.09.2020'      |'Да'            |''         |''           |'0,483849'         |''                                |''                     |''                                  |'01.10.2020'  |'01.09.2020'   |