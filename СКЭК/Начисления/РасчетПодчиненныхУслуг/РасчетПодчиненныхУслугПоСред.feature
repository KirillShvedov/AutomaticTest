    #language: ru
    @tree
    @card 'https://trello.com/c/UNxJNlGM'
    Функционал: <описание фичи>
    Как <Роль>
    Я хочу <описание функционала>
    Чтобы <бизнес-эффект>

    Контекст:
    Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

    Сценарий: <РасчетПодчиненныхУслугПоСред>
    И я подготавливаю тестовые данные
        И я загружаю макет "РасчетПодчиненныхУслугПоСред.mxl"
    И я перепровожу загруженные документы
        И В командном интерфейсе я выбираю 'Администрирование' 'Ввод начальных остатков'
        Тогда открылось окно 'Ввод начальных остатков'
        И в таблице 'Список' я выделяю все строки
        И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюПровести' на элементе формы с именем "Список"
    И Я запускаю выполнение начислений по организации 'ОАО "СКЭК"' и району 'Кемеровский городской округ' и МКД '' с 'Октябрь' '2020' по 'Январь 2021'
    И я проверяю начисления
        И Я открываю навигационную ссылку "e1cib/list/РегистрНакопления.энргОбъемНачислений"
        Тогда открылось окно 'Объем начислений'
        И я нажимаю на кнопку с именем 'ФормаУстановитьИнтервал'
        Тогда открылось окно 'Выберите период'
        И в поле 'DateBegin' я ввожу текст '01.10.2020'
        И в поле 'DateEnd' я ввожу текст '31.01.2021'
        И я перехожу к следующему реквизиту
        И я нажимаю на кнопку 'Выбрать'
        Тогда открылось окно 'Объем начислений'
        Тогда в таблице "Список" количество строк "равно" 16
        #Октябрь 20
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                |Услуга                   |Точка учета                 |Способ начисления        |Прибор учета |Значение тарифа |Период расчета |Период начисления |Объем услуги |Объем потребленный |Сумма    |Сумма по повышенному коэффициенту |Конец периода |Начало периода |
        |'31.10.2020 23:59:59' |'Литвин Олег Иванович' |'Холодное водоснабжение' |'+ввод_ХВС + водоотведение' |'Начисление по среднему' |'28241231'   |'43,320'        |'01.10.2020'   |'01.10.2020'      |'5,000000'   |''                 |'216,60' |''                                |'01.11.2020'  |'01.10.2020'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                |Услуга                   |Точка учета                 |Способ начисления        |Прибор учета |Значение тарифа |Период расчета |Период начисления |Объем услуги |Объем потребленный |Сумма    |Сумма по повышенному коэффициенту |Конец периода |Начало периода |
        |'31.10.2020 23:59:59' |'Литвин Олег Иванович' |'Холодное водоснабжение' |'+ввод_ХВС + водоотведение' |'Начисление по среднему' |'28241231'   |'43,320'        |'01.10.2020'   |'01.10.2020'      |''           |'5,000000'         |''       |''                                |'01.11.2020'  |'01.10.2020'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                |Услуга                   |Точка учета                 |Способ начисления        |Прибор учета |Значение тарифа |Период расчета |Период начисления |Объем услуги |Объем потребленный |Сумма    |Сумма по повышенному коэффициенту |Конец периода |Начало периода |
        |'31.10.2020 23:59:59' |'Литвин Олег Иванович' |'Водоотведение'          |'+ввод_ХВС + водоотведение' |'Начисление по среднему' |'28241231'   |'23,210'        |'01.10.2020'   |'01.10.2020'      |'5,000000'   |''                 |'116,05' |''                                |'01.11.2020'  |'01.10.2020'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                |Услуга                   |Точка учета                 |Способ начисления        |Прибор учета |Значение тарифа |Период расчета |Период начисления |Объем услуги |Объем потребленный |Сумма    |Сумма по повышенному коэффициенту |Конец периода |Начало периода |
        |'31.10.2020 23:59:59' |'Литвин Олег Иванович' |'Водоотведение'          |'+ввод_ХВС + водоотведение' |'Начисление по среднему' |'28241231'   |'23,210'        |'01.10.2020'   |'01.10.2020'      |''           |'5,000000'         |''       |''                                |'01.11.2020'  |'01.10.2020'   |
        #Ноябрь 20
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                |Услуга                   |Точка учета                 |Способ начисления        |Прибор учета |Значение тарифа |Период расчета |Период начисления |Объем услуги |Объем потребленный |Сумма    |Сумма по повышенному коэффициенту |Конец периода |Начало периода |
        |'30.11.2020 23:59:59' |'Литвин Олег Иванович' |'Холодное водоснабжение' |'+ввод_ХВС + водоотведение' |'Начисление по среднему' |'28241231'   |'43,320'        |'01.11.2020'   |'01.11.2020'      |'5,000000'   |''                 |'216,60' |''                                |'01.12.2020'  |'01.11.2020'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                |Услуга                   |Точка учета                 |Способ начисления        |Прибор учета |Значение тарифа |Период расчета |Период начисления |Объем услуги |Объем потребленный |Сумма    |Сумма по повышенному коэффициенту |Конец периода |Начало периода |
        |'30.11.2020 23:59:59' |'Литвин Олег Иванович' |'Холодное водоснабжение' |'+ввод_ХВС + водоотведение' |'Начисление по среднему' |'28241231'   |'43,320'        |'01.11.2020'   |'01.11.2020'      |''           |'5,000000'         |''       |''                                |'01.12.2020'  |'01.11.2020'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                |Услуга                   |Точка учета                 |Способ начисления        |Прибор учета |Значение тарифа |Период расчета |Период начисления |Объем услуги |Объем потребленный |Сумма    |Сумма по повышенному коэффициенту |Конец периода |Начало периода |
        |'30.11.2020 23:59:59' |'Литвин Олег Иванович' |'Водоотведение'          |'+ввод_ХВС + водоотведение' |'Начисление по среднему' |'28241231'   |'23,210'        |'01.11.2020'   |'01.11.2020'      |'5,000000'   |''                 |'116,05' |''                                |'01.12.2020'  |'01.11.2020'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                |Услуга                   |Точка учета                 |Способ начисления        |Прибор учета |Значение тарифа |Период расчета |Период начисления |Объем услуги |Объем потребленный |Сумма    |Сумма по повышенному коэффициенту |Конец периода |Начало периода |
        |'30.11.2020 23:59:59' |'Литвин Олег Иванович' |'Водоотведение'          |'+ввод_ХВС + водоотведение' |'Начисление по среднему' |'28241231'   |'23,210'        |'01.11.2020'   |'01.11.2020'      |''           |'5,000000'         |''       |''                                |'01.12.2020'  |'01.11.2020'   |
        #Декабрь 20
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                |Услуга                   |Точка учета                 |Способ начисления        |Прибор учета |Значение тарифа |Период расчета |Период начисления |Объем услуги |Объем потребленный |Сумма    |Сумма по повышенному коэффициенту |Конец периода |Начало периода |
        |'31.12.2020 23:59:59' |'Литвин Олег Иванович' |'Холодное водоснабжение' |'+ввод_ХВС + водоотведение' |'Начисление по среднему' |'28241231'   |'43,320'        |'01.12.2020'   |'01.12.2020'      |'5,000000'   |''                 |'216,60' |''                                |'01.01.2021'  |'01.12.2020'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                |Услуга                   |Точка учета                 |Способ начисления        |Прибор учета |Значение тарифа |Период расчета |Период начисления |Объем услуги |Объем потребленный |Сумма    |Сумма по повышенному коэффициенту |Конец периода |Начало периода |
        |'31.12.2020 23:59:59' |'Литвин Олег Иванович' |'Холодное водоснабжение' |'+ввод_ХВС + водоотведение' |'Начисление по среднему' |'28241231'   |'43,320'        |'01.12.2020'   |'01.12.2020'      |''           |'5,000000'         |''       |''                                |'01.01.2021'  |'01.12.2020'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                |Услуга                   |Точка учета                 |Способ начисления        |Прибор учета |Значение тарифа |Период расчета |Период начисления |Объем услуги |Объем потребленный |Сумма    |Сумма по повышенному коэффициенту |Конец периода |Начало периода |
        |'31.12.2020 23:59:59' |'Литвин Олег Иванович' |'Водоотведение'          |'+ввод_ХВС + водоотведение' |'Начисление по среднему' |'28241231'   |'23,210'        |'01.12.2020'   |'01.12.2020'      |'5,000000'   |''                 |'116,05' |''                                |'01.01.2021'  |'01.12.2020'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                |Услуга                   |Точка учета                 |Способ начисления        |Прибор учета |Значение тарифа |Период расчета |Период начисления |Объем услуги |Объем потребленный |Сумма    |Сумма по повышенному коэффициенту |Конец периода |Начало периода |
        |'31.12.2020 23:59:59' |'Литвин Олег Иванович' |'Водоотведение'          |'+ввод_ХВС + водоотведение' |'Начисление по среднему' |'28241231'   |'23,210'        |'01.12.2020'   |'01.12.2020'      |''           |'5,000000'         |''       |''                                |'01.01.2021'  |'01.12.2020'   |
        #Январь 21
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                |Услуга                   |Точка учета                 |Способ начисления        |Прибор учета |Значение тарифа |Период расчета |Период начисления |Объем услуги |Объем потребленный |Сумма    |Сумма по повышенному коэффициенту |Конец периода |Начало периода |
        |'31.01.2021 23:59:59' |'Литвин Олег Иванович' |'Водоотведение'          |'ввод_ХВС + водоотведение'  |'По нормативу'           |''           |'23,210'        |'01.01.2021'   |'01.01.2021'      |'8,380000'   |''                 |'194,50' |''                                |'01.02.2021'  |'01.01.2021'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                |Услуга                   |Точка учета                 |Способ начисления        |Прибор учета |Значение тарифа |Период расчета |Период начисления |Объем услуги |Объем потребленный |Сумма    |Сумма по повышенному коэффициенту |Конец периода |Начало периода |
        |'31.01.2021 23:59:59' |'Литвин Олег Иванович' |'Водоотведение'          |'ввод_ХВС + водоотведение'  |'По нормативу'           |''           |'23,210'        |'01.01.2021'   |'01.01.2021'      |''           |'8,380000'         |''       |''                                |'01.02.2021'  |'01.01.2021'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                |Услуга                   |Точка учета                 |Способ начисления        |Прибор учета |Значение тарифа |Период расчета |Период начисления |Объем услуги |Объем потребленный |Сумма    |Сумма по повышенному коэффициенту |Конец периода |Начало периода |
        |'31.01.2021 23:59:59' |'Литвин Олег Иванович' |'Холодное водоснабжение' |'ввод_ХВС + водоотведение'  |'По нормативу'           |''           |'43,320'        |'01.01.2021'   |'01.01.2021'      |'5,010000'   |''                 |'217,03' |''                                |'01.02.2021'  |'01.01.2021'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                |Услуга                   |Точка учета                 |Способ начисления        |Прибор учета |Значение тарифа |Период расчета |Период начисления |Объем услуги |Объем потребленный |Сумма    |Сумма по повышенному коэффициенту |Конец периода |Начало периода |
        |'31.01.2021 23:59:59' |'Литвин Олег Иванович' |'Холодное водоснабжение' |'ввод_ХВС + водоотведение'  |'По нормативу'           |''           |'43,320'        |'01.01.2021'   |'01.01.2021'      |''           |'5,010000'         |''       |''                                |'01.02.2021'  |'01.01.2021'   |