#language: ru
    @tree
    Функционал: <описание фичи>
    Как <Роль>
    Я хочу <проверить расчет расчет по показаниям>
    Чтобы <бизнес-эффект>
    Карточка "https://trello.com/c/4KDKEEUy/2072"

    Контекст:
    Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: <РасчетПоНормативуИзменениеКолПрописанных>
    И я подготавливаю тестовые данные
        И я загружаю макет "РасчетПоНормативуИзменениеКолПрописанных.mxl"
    И я перепровожу загруженные данные
        И В командном интерфейсе я выбираю 'Работа с МКД' 'Операции с МКД'
        Тогда открылось окно 'Операции с МКД'
        И в таблице 'Список' я выделяю все строки
        И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюПровести' на элементе формы с именем "Список"
        И В командном интерфейсе я выбираю 'Работа с МКД' 'Регистрация показаний многоквартирного дома'
        Тогда открылось окно 'Регистрация показаний многоквартирного дома'
        И в таблице 'Список' я выделяю все строки
        И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюПровести' на элементе формы с именем "Список"
        И В командном интерфейсе я выбираю 'Юридические лица' 'Заключение договоров с контрагентами'
        Тогда открылось окно 'Заключение договоров с контрагентами'
        И в таблице 'Список' я выделяю все строки
        И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюПровести' на элементе формы с именем "Список"
        И В командном интерфейсе я выбираю 'Юридические лица' 'Регистрация показаний юр. лиц'
        И в таблице 'Список' я выделяю все строки
        И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюПровести' на элементе формы с именем "Список"
        И Я перепровожу все документы абонента "Кудрявцева Ирина Сергеевна"
        И Я перепровожу все документы абонента "Смирнова Марина Павловна"
    И Я запускаю выполнение начислений по организации 'ООО "РКС-энерго"' и району 'Волховский район' и МКД 'Волхов г, Октябрьская ул, Дом № 4' с 'Июнь' '2020' по 'Июнь 2020'
    И Я проверяю полученные результаты
        И Я открываю навигационную ссылку "e1cib/list/РегистрНакопления.энргОбъемНачислений"
        Тогда открылось окно 'Объем начислений'
        Тогда в таблице "Список" количество строк "равно" 6
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                      |Услуга           |Точка учета           |Вид начисления   |Способ начисления |Тарифная зона |Значение тарифа |Начало периода |Конец периода |Сумма    |Объем услуги |Объем потребленный |Сумма по повышенному коэффициенту |
        |'25.06.2020 23:59:59' |'Кудрявцева Ирина Сергеевна' |'Электроэнергия' |'ввод_Электроэнергия' |'Начисление'     |'По нормативу'    |'Без ПУ'      |'4,270'         |'26.05.2020'   |'14.06.2020'  |''       |''           |'154,451614'       |''                                |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                      |Услуга           |Точка учета           |Вид начисления   |Способ начисления |Тарифная зона |Значение тарифа |Начало периода |Конец периода |Сумма    |Объем услуги |Объем потребленный |Сумма по повышенному коэффициенту |
        |'25.06.2020 23:59:59' |'Кудрявцева Ирина Сергеевна' |'Электроэнергия' |'ввод_Электроэнергия' |'Начисление'     |'По нормативу'    |'Без ПУ'      |'4,270'         |'26.05.2020'   |'14.06.2020'  |'989,26' |'154,451614' |''                 |'329,75'                          |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                      |Услуга           |Точка учета           |Вид начисления   |Способ начисления |Тарифная зона |Значение тарифа |Начало периода |Конец периода |Сумма    |Объем услуги |Объем потребленный |Сумма по повышенному коэффициенту |
        |'25.06.2020 23:59:59' |'Кудрявцева Ирина Сергеевна' |'Электроэнергия' |'ввод_Электроэнергия' |'Начисление'     |'По нормативу'    |'Без ПУ'      |'4,270'         |'14.06.2020'   |'26.06.2020'  |'728,93' |'113,806452' |''                 |'242,98'                          |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                      |Услуга           |Точка учета           |Вид начисления   |Способ начисления |Тарифная зона |Значение тарифа |Начало периода |Конец периода |Сумма    |Объем услуги |Объем потребленный |Сумма по повышенному коэффициенту |
        |'25.06.2020 23:59:59' |'Кудрявцева Ирина Сергеевна' |'Электроэнергия' |'ввод_Электроэнергия' |'Начисление'     |'По нормативу'    |'Без ПУ'      |'4,270'         |'14.06.2020'   |'26.06.2020'  |''       |''           |'113,806452'       |''                                |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                      |Услуга           |Точка учета           |Вид начисления   |Способ начисления |Тарифная зона |Значение тарифа |Начало периода |Конец периода |Сумма    |Объем услуги |Объем потребленный |Сумма по повышенному коэффициенту |
        |'25.06.2020 23:59:59' |'Кудрявцева Ирина Сергеевна' |'Электроэнергия' |''                    |'Начисление ОДН' |'По приборам'     |''            |'4,270'         |''             |''            |'31,31'  |'7,332533'   |''                 |''                                |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                      |Услуга           |Точка учета           |Вид начисления   |Способ начисления |Тарифная зона |Значение тарифа |Начало периода |Конец периода |Сумма    |Объем услуги |Объем потребленный |Сумма по повышенному коэффициенту |
        |'25.06.2020 23:59:59' |'Кудрявцева Ирина Сергеевна' |'Электроэнергия' |''                    |'Начисление ОДН' |'По приборам'     |''            |'4,270'         |''             |''            |''       |''           |'7,332533'         |''                                |