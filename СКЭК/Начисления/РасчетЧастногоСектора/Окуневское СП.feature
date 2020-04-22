 #language: ru
    @tree
    Функционал: <описание фичи>

    Как <Роль>
    Я хочу <проверить расчет зависимых услуг в случае если одна из услуг принадлежит другому поставщику>
    Чтобы <бизнес-эффект>

    Контекст:
    Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

    Сценарий: <Падунское СП>
    И Я запускаю выполнение начислений по организации 'ООО "ПКС"' и району 'Окуневское СП Промышленновского р-на' и МКД '' с 'Июль' '2019' по 'Декабрь 2019'
    И я проверяю полученные результаты
        И Я открываю навигационную ссылку "e1cib/list/РегистрНакопления.энргОбъемНачислений"
        Тогда открылось окно 'Объем начислений'
        И в таблице "Список" я активизирую поле "Организация"
        И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюНайти' на элементе формы с именем "Список"
        Тогда открылось окно 'Найти'
        И из выпадающего списка "&Что искать" я выбираю по строке 'ООО "ПКС"'
        И я перехожу к следующему реквизиту
        И я нажимаю на кнопку '&Найти'
        И в таблице "Список" я активизирую поле "Филиал"
        И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюНайти' на элементе формы с именем "Список"
        Тогда открылось окно 'Найти'
        И из выпадающего списка "&Что искать" я выбираю по строке 'Окуневское СП Промышленновского р-на'
        И я перехожу к следующему реквизиту
        И я нажимаю на кнопку '&Найти'
     И я проверяю начисления за июль   
        И я нажимаю на кнопку с именем 'ФормаУстановитьИнтервал'
        Тогда открылось окно 'Выберите период'
        И в поле 'DateBegin' я ввожу текст '01.07.2019'
        И в поле 'DateEnd' я ввожу текст '31.07.2019'
        И я перехожу к следующему реквизиту
        И я нажимаю на кнопку 'Выбрать'
        И итог таблицы "Список" по полям "Абонент" стал равен шаблону:
        |Абонент                             |Объем услуги |Сумма       |
        |'Эйман Екатерина Юрьевна'           |'7,200000'   |'210,33‬'    |
    И я проверяю начисления за август   
        И я нажимаю на кнопку с именем 'ФормаУстановитьИнтервал'
        Тогда открылось окно 'Выберите период'
        И в поле 'DateBegin' я ввожу текст '01.08.2019'
        И в поле 'DateEnd' я ввожу текст '31.08.2019'
        И я перехожу к следующему реквизиту
        И я нажимаю на кнопку 'Выбрать'
        И итог таблицы "Список" по полям "Абонент" стал равен шаблону:
        |Абонент                             |Объем услуги  |Сумма       |
        |'Эйман Екатерина Юрьевна'           |'22,486100'   |'522,47'    |
    И я проверяю начисления за сентябрь   
        И я нажимаю на кнопку с именем 'ФормаУстановитьИнтервал'
        Тогда открылось окно 'Выберите период'
        И в поле 'DateBegin' я ввожу текст '01.09.2019'
        И в поле 'DateEnd' я ввожу текст '30.09.2019'
        И я перехожу к следующему реквизиту
        И я нажимаю на кнопку 'Выбрать'
        И итог таблицы "Список" по полям "Абонент" стал равен шаблону:
        |Абонент                             |Объем услуги  |Сумма       |
        |'Эйман Екатерина Юрьевна'           |'21,499900'   |'502,33'    |
    И я проверяю начисления за октябрь
        И я нажимаю на кнопку с именем 'ФормаУстановитьИнтервал'
        Тогда открылось окно 'Выберите период'
        И в поле 'DateBegin' я ввожу текст '01.10.2019'
        И в поле 'DateEnd' я ввожу текст '31.10.2019'
        И я перехожу к следующему реквизиту
        И я нажимаю на кнопку 'Выбрать'
        И итог таблицы "Список" по полям "Абонент" стал равен шаблону:
        |Абонент                             |Объем услуги |Сумма       |
        |'Эйман Екатерина Юрьевна'           |'7,200000'   |'210,33'    |
    И я проверяю начисления за ноябрь
        И я нажимаю на кнопку с именем 'ФормаУстановитьИнтервал'
        Тогда открылось окно 'Выберите период'
        И в поле 'DateBegin' я ввожу текст '01.11.2019'
        И в поле 'DateEnd' я ввожу текст '30.11.2019'
        И я перехожу к следующему реквизиту
        И я нажимаю на кнопку 'Выбрать'
        И итог таблицы "Список" по полям "Абонент" стал равен шаблону:
        |Абонент                             |Объем услуги |Сумма       |
        |'Эйман Екатерина Юрьевна'           |'7,200000'   |'210,33'    |
    И я проверяю начисления за декабрь  
        И я нажимаю на кнопку с именем 'ФормаУстановитьИнтервал'
        Тогда открылось окно 'Выберите период'
        И в поле 'DateBegin' я ввожу текст '01.12.2019'
        И в поле 'DateEnd' я ввожу текст '31.12.2019'
        И я перехожу к следующему реквизиту
        И я нажимаю на кнопку 'Выбрать'
        И итог таблицы "Список" по полям "Абонент" стал равен шаблону:
        |Абонент                             |Объем услуги |Сумма       |
        |'Эйман Екатерина Юрьевна'           |'7,200000'   |'210,33'    |