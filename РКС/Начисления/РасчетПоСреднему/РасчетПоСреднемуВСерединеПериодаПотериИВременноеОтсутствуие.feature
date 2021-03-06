#language: ru
    @tree
    Функционал: <описание фичи>
    Как <Роль>
    Я хочу <проверить расчет расчет по показаниям>
    Чтобы <бизнес-эффект>
    Карточка "https://trello.com/c/A8SV1uup/2012"

    Контекст:
    Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

    Сценарий: <РасчетПоСреднему>
    И я подготавливаю тестовые данные
        И я загружаю макет "РасчетПоСреднемуВСерединеПериодаПотериИВременноеОтсутствуие.mxl"
    И я перепровожу загруженные данные
        И Я перепровожу все документы абонента "Краснова Марина Петровна"
    И Я запускаю выполнение начислений по организации 'ООО "РКС-энерго"' и району 'Волховский район' и МКД '' с 'Июнь' '2020' по 'Ноябрь 2020'
    И Я проверяю полученные результаты
        И Я открываю навигационную ссылку "e1cib/list/РегистрНакопления.энргОбъемНачислений"
        Тогда открылось окно 'Объем начислений'
        Тогда в таблице "Список" количество строк "равно" 12
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                    |Услуга           |Точка учета           |Вид начисления |Способ начисления        |Тарифная зона |Значение тарифа |Начало периода |Конец периода |
        |'25.06.2020 23:59:59' |'Краснова Марина Петровна' |'Электроэнергия' |'ввод_Электроэнергия' |'Начисление'   |'По приборам'            |'Без ПУ'      |'4,270'         |'26.05.2020'   |'26.06.2020'  |
        И в таблице "Список" текущая строка равна:
        |Сумма    |Объем услуги |Объем потребленный |
        |'457,32' |'107,100000' |''                 |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                    |Услуга           |Точка учета           |Вид начисления |Способ начисления        |Тарифная зона |Значение тарифа |Начало периода |Конец периода |
        |'25.06.2020 23:59:59' |'Краснова Марина Петровна' |'Электроэнергия' |'ввод_Электроэнергия' |'Начисление'   |'По приборам'            |'Без ПУ'      |'4,270'         |'26.05.2020'   |'26.06.2020'  |
        И в таблице "Список" текущая строка равна:
        |Сумма    |Объем услуги |Объем потребленный |
        |''       |''           |'105,000000'       |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                    |Услуга           |Точка учета           |Вид начисления |Способ начисления        |Тарифная зона |Значение тарифа |Начало периода |Конец периода |
        |'25.07.2020 23:59:59' |'Краснова Марина Петровна' |'Электроэнергия' |'ввод_Электроэнергия' |'Начисление'   |'По приборам'            |'Без ПУ'      |'4,270'         |'26.06.2020'   |'26.07.2020'  |
        И в таблице "Список" текущая строка равна:
        |Сумма    |Объем услуги |Объем потребленный |
        |''       |''           |'121,000000'       |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                    |Услуга           |Точка учета           |Вид начисления |Способ начисления        |Тарифная зона |Значение тарифа |Начало периода |Конец периода |
        |'25.07.2020 23:59:59' |'Краснова Марина Петровна' |'Электроэнергия' |'ввод_Электроэнергия' |'Начисление'   |'По приборам'            |'Без ПУ'      |'4,270'         |'26.06.2020'   |'26.07.2020'  |
        И в таблице "Список" текущая строка равна:
        |Сумма    |Объем услуги |Объем потребленный |
        |'527,00' |'123,420000' |''                 |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                    |Услуга           |Точка учета           |Вид начисления |Способ начисления        |Тарифная зона |Значение тарифа |Начало периода |Конец периода |
        |'25.08.2020 23:59:59' |'Краснова Марина Петровна' |'Электроэнергия' |'ввод_Электроэнергия' |'Начисление'   |'По приборам'            |'Без ПУ'      |'4,270'         |'26.07.2020'   |'26.08.2020'  |
        И в таблице "Список" текущая строка равна:
        |Сумма    |Объем услуги |Объем потребленный |
        |'513,94' |'120,360000' |''                 |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                    |Услуга           |Точка учета           |Вид начисления |Способ начисления        |Тарифная зона |Значение тарифа |Начало периода |Конец периода |
        |'25.08.2020 23:59:59' |'Краснова Марина Петровна' |'Электроэнергия' |'ввод_Электроэнергия' |'Начисление'   |'По приборам'            |'Без ПУ'      |'4,270'         |'26.07.2020'   |'26.08.2020'  |
        И в таблице "Список" текущая строка равна:
        |Сумма    |Объем услуги |Объем потребленный |
        |''       |''           |'118,000000'       |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                    |Услуга           |Точка учета           |Вид начисления |Способ начисления        |Тарифная зона |Значение тарифа |Начало периода |Конец периода |
        |'25.09.2020 23:59:59' |'Краснова Марина Петровна' |'Электроэнергия' |'ввод_Электроэнергия' |'Начисление'   |'По приборам'            |'Без ПУ'      |'4,270'         |'26.08.2020'   |'15.09.2020'  |
        И в таблице "Список" текущая строка равна:
        |Сумма    |Объем услуги |Объем потребленный |
        |'209,06' |'48,960000'  |''                 |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                    |Услуга           |Точка учета           |Вид начисления |Способ начисления        |Тарифная зона |Значение тарифа |Начало периода |Конец периода |
        |'25.09.2020 23:59:59' |'Краснова Марина Петровна' |'Электроэнергия' |'ввод_Электроэнергия' |'Начисление'   |'Начисление по среднему' |'Без ПУ'      |'4,270'         |'15.09.2020'   |'26.09.2020'  |
        И в таблице "Список" текущая строка равна:
        |Сумма    |Объем услуги |Объем потребленный |
        |'161,10' |'37,729032'  |''                 |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                    |Услуга           |Точка учета           |Вид начисления |Способ начисления        |Тарифная зона |Значение тарифа |Начало периода |Конец периода |
        |'25.09.2020 23:59:59' |'Краснова Марина Петровна' |'Электроэнергия' |'ввод_Электроэнергия' |'Начисление'   |'По приборам'            |'Без ПУ'      |'4,270'         |'26.08.2020'   |'15.09.2020'  |
        И в таблице "Список" текущая строка равна:
        |Сумма    |Объем услуги |Объем потребленный |
        |''       |''           |'48,000000'        |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                    |Услуга           |Точка учета           |Вид начисления |Способ начисления        |Тарифная зона |Значение тарифа |Начало периода |Конец периода |
        |'25.09.2020 23:59:59' |'Краснова Марина Петровна' |'Электроэнергия' |'ввод_Электроэнергия' |'Начисление'   |'Начисление по среднему' |'Без ПУ'      |'4,270'         |'15.09.2020'   |'26.09.2020'  |
        И в таблице "Список" текущая строка равна:
        |Сумма    |Объем услуги |Объем потребленный |
        |''       |''           |'36,989247'        |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                    |Услуга           |Точка учета           |Вид начисления |Способ начисления        |Тарифная зона |Значение тарифа |Начало периода |Конец периода |
        |'25.10.2020 23:59:59' |'Краснова Марина Петровна' |'Электроэнергия' |'ввод_Электроэнергия' |'Начисление'   |'По приборам'            |'Без ПУ'      |'4,270'         |'26.09.2020'   |'26.10.2020'  |
        И в таблице "Список" текущая строка равна:
        |Сумма    |Объем услуги |Объем потребленный |
        |'175,07' |'41,000000'  |''                 |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                    |Услуга           |Точка учета           |Вид начисления |Способ начисления        |Тарифная зона |Значение тарифа |Начало периода |Конец периода |
        |'25.10.2020 23:59:59' |'Краснова Марина Петровна' |'Электроэнергия' |'ввод_Электроэнергия' |'Начисление'   |'По приборам'            |'Без ПУ'      |'4,270'         |'26.09.2020'   |'26.10.2020'  |
        И в таблице "Список" текущая строка равна:
        |Сумма    |Объем услуги |Объем потребленный |
        |''       |''           |'41,000000'        |
