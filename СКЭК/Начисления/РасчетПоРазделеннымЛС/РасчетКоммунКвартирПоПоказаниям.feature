    #language: ru
    @tree
    @card "https://trello.com/c/DFvq8N4s"
    Функционал: <описание фичи>
    Как <Роль>
    Я хочу <проверить расчет расчет по показаниям>
    Чтобы <бизнес-эффект>

    Контекст:
    Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

    Сценарий: <РасчетКоммунКвартирПоПоказаниям>
    И я подготавливаю тестовые данные
        И я загружаю макет "РасчетКоммунКвартирПоПоказаниям.mxl"
    И я перепровожу загруженные данные
        И В командном интерфейсе я выбираю 'Работа с МКД' 'Операции с МКД'
        Тогда открылось окно 'Операции с МКД'
        И в таблице 'Список' я выделяю все строки
        И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюПровести' на элементе формы с именем "Список"
        И В командном интерфейсе я выбираю 'Работа с абонентами' 'Открытие/закрытие лс физического лица'
        Тогда открылось окно 'Открытие/закрытие лс физического лица'
        И в таблице 'Список' я выделяю все строки
        И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюПровести' на элементе формы с именем "Список"
        И В командном интерфейсе я выбираю 'Работа с абонентами' 'Подключение/отключение услуг'
        Тогда открылось окно 'Подключение/отключение услуг'
        И в таблице 'Список' я выделяю все строки
        И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюПровести' на элементе формы с именем "Список"
        И В командном интерфейсе я выбираю 'Работа с абонентами' 'Регистрация показаний абонента'
        Тогда открылось окно 'Регистрация показаний абонента'
        И в таблице 'Список' я выделяю все строки
        И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюПровести' на элементе формы с именем "Список"
    И Я запускаю выполнение начислений по организации 'ОАО "СКЭК"' и району 'Кемеровский городской округ' и МКД '' с 'Январь' '2020' по 'Февраль 2020'
    И я проверяю полученные результаты    
        И Я открываю навигационную ссылку "e1cib/list/РегистрНакопления.энргОбъемНачислений"
        Тогда открылось окно 'Объем начислений'
        И в таблице "Список" я активизирую поле "Период"
        И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюНайти' на элементе формы с именем "Список"
        Тогда открылось окно 'Найти'
        И в поле '&Что искать' я ввожу текст '29.02.2020'
        И я перехожу к следующему реквизиту
        И я нажимаю на кнопку '&Найти'
        Тогда в таблице "Список" количество строк "равно" 4
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                   |Услуга                   |Точка учета                |Способ начисления |Сумма    |Сумма по повышенному коэффициенту |
        |'29.02.2020 23:59:59' |'Блинкова Ирина Петровна' |'Водоотведение'          |'ввод      ХВС'            |'По приборам'     |'107,77' |''                                |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'6,500000'   |'6,500000'         |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                   |Услуга                   |Точка учета                |Способ начисления |Сумма    |Сумма по повышенному коэффициенту |
        |'29.02.2020 23:59:59' |'Блинкова Ирина Петровна' |'Холодное водоснабжение' |'ввод      ХВС'            |'По приборам'     |'205,32' |''                                |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'4,000000'   |'4,000000'         |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                   |Услуга                   |Точка учета                |Способ начисления |Сумма    |Сумма по повышенному коэффициенту |
        |'29.02.2020 23:59:59' |'Блинов Павел Петрович'   |'Холодное водоснабжение' |'ввод'                     |'По приборам'     |'205,32' |''                                |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'4,000000'   |'4,000000'         |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                   |Услуга                   |Точка учета                |Способ начисления |Сумма    |Сумма по повышенному коэффициенту |
        |'29.02.2020 23:59:59' |'Блинов Павел Петрович'   |'Водоотведение'          |'ввод_ГВС + водоотведение' |'По приборам'     |'107,77' |''                                |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'6,500000'   |'6,500000'         |


