    #language: ru
    @tree
    @card 'https://trello.com/c/kPVmK3ni'
    Функционал: <описание фичи>
    Как <Роль>
    Я хочу <описание функционала>
    Чтобы <бизнес-эффект>

    Контекст:
    Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

    Сценарий: <РасчетЭЭПокКоммуналкаСекции_Сутки>
    И я подготавливаю тестовые данные
        И я загружаю макет "РасчетЭЭПокКоммуналкаСекцииТЗ_Сутки.mxl"
    И я перепровожу загруженные данные
        И В командном интерфейсе я выбираю 'Работа с МКД' 'Операции с МКД'
        Тогда открылось окно 'Операции с МКД'
        И в таблице 'Список' я выделяю все строки
        И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюПровести' на элементе формы с именем "Список"
        И В командном интерфейсе я выбираю 'Работа с абонентами' 'Подключение/отключение услуг'
        Тогда открылось окно 'Подключение/отключение услуг'
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
    И Я запускаю выполнение начислений по организации 'ООО РКС-Энерго' и району 'Волховский район' и МКД 'Волхов г, Маяковского ул, Дом № 13' с 'Июнь' '2020' по 'Июнь 2020'
    И Я проверяю полученные результаты
        И Я открываю навигационную ссылку "e1cib/list/РегистрНакопления.энргОбъемНачислений"
        Тогда открылось окно 'Объем начислений'
        И в таблице "Список" я активизирую поле "Строение"
        И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюНайти' на элементе формы с именем "Список"
        Тогда открылось окно 'Найти'
        И из выпадающего списка "&Что искать" я выбираю по строке 'Волхов г, Маяковского ул, Дом № 13'
        И я нажимаю на кнопку '&Найти'
        Тогда открылось окно 'Объем начислений'
        И в таблице "Список" я активизирую поле "Услуга"
        И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюНайти' на элементе формы с именем "Список"
        Тогда открылось окно 'Найти'
        И из выпадающего списка "&Что искать" я выбираю по строке 'Электроэнергия'
        И я перехожу к следующему реквизиту
        И я нажимаю на кнопку '&Найти'
        Тогда открылось окно 'Объем начислений'
        И я нажимаю на кнопку с именем 'ФормаУстановитьИнтервал'
        Тогда открылось окно 'Выберите период'
        И в поле 'DateBegin' я ввожу текст '26.05.2020'
        И в поле 'DateEnd' я ввожу текст '25.06.2020'
        И я перехожу к следующему реквизиту
        И я нажимаю на кнопку 'Выбрать'
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                         |Услуга             |Точка учета                       |Способ начисления |Направление использования ТУ |Тарифная зона  |Значение тарифа |Период расчета |Период начисления |Объем услуги |Объем потребленный |Сумма    |Начало периода |Конец периода |
        |'25.06.2020 23:59:59' |'Крамарова Наталья Викторовна'  |'Электроэнергия'   |'ввод_Электроэнергия'             |'По приборам'     |'Основное направление'       |'Сутки'        |'3,110'         |'01.06.2020'   |'01.06.2020'      |'12,300000'  |''                 |'38,25'  |'26.05.2020'   |'26.06.2020'  |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                         |Услуга             |Точка учета                       |Способ начисления |Направление использования ТУ |Тарифная зона  |Значение тарифа |Период расчета |Период начисления |Объем услуги |Объем потребленный |Сумма    |Начало периода  |Конец периода |
        |'25.06.2020 23:59:59' |'Щеглова Ольга Игоревна'        |'Электроэнергия'   |'ввод_Электроэнергия'             |'По приборам'     |'Основное направление'       |'Сутки'        |'3,110'         |'01.06.2020'   |'01.06.2020'      |'12,300000'  |''                 |'38,25'  |'26.05.2020'   |'26.06.2020'  |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                         |Услуга             |Точка учета                       |Способ начисления |Направление использования ТУ |Тарифная зона  |Значение тарифа |Период расчета |Период начисления |Объем услуги |Объем потребленный |Сумма    |Начало периода  |Конец периода |
        |'25.06.2020 23:59:59' |'Сычев Дмитрий Алексеевич'      |'Электроэнергия'   |'ввод_Электроэнергия'             |'По приборам'     |'Основное направление'       |'Сутки'        |'3,110'         |'01.06.2020'   |'01.06.2020'      |'13,466667'  |''                 |'41,88'  |'26.05.2020'   |'26.06.2020'  |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                         |Услуга             |Точка учета                       |Способ начисления |Направление использования ТУ |Тарифная зона  |Значение тарифа |Период расчета |Период начисления |Объем услуги |Объем потребленный |Сумма    |Начало периода  |Конец периода |
        |'25.06.2020 23:59:59' |'Живолуп Оксана Сергеевна'      |'Электроэнергия'   |'ввод_Электроэнергия'             |'По приборам'     |'Основное направление'       |'Сутки'        |'3,110'         |'01.06.2020'   |'01.06.2020'      |'26,933333'  |''                 |'83,76'  |'26.05.2020'   |'26.06.2020'  |

