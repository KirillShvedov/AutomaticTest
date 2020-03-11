#language: ru
@tree
Функционал: <описание фичи>
"https://trello.com/c/Jw31I3CI"
Как <Роль>
Я хочу <проверить расчет по формулам, когда в формуле участвует несколько услуг>
Чтобы <бизнес-эффект>

Контекст:
    Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: <РасчетПотребленияМеждуРазделеннымиЛС>
    И я подготавливаю тестовые данные
        И я загружаю макет "РасчетПотребленияМеждуРазделеннымиЛС"
    И я перепровжу загруженные данные
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
    И Я запускаю выполнение начислений по организации 'ОАО "СКЭК"' и району 'Кемеровский городской округ' и МКД 'Кемерово г, Рукавишникова ул, Дом № 36' с 'Январь' '2020' по 'Январь 2020'     
    И я проверяю полученные результаты
        И Я открываю навигационную ссылку "e1cib/list/РегистрНакопления.энргОбъемНачислений"
        Тогда открылось окно 'Объем начислений'
        И я нажимаю на кнопку с именем 'ФормаУстановитьИнтервал'
        Тогда открылось окно 'Выберите период'
        И в поле 'DateBegin' я ввожу текст '01.01.2020'
        И в поле 'DateEnd' я ввожу текст '31.01.2020'
        И я перехожу к следующему реквизиту
        И я нажимаю на кнопку 'Выбрать'
        Тогда в таблице "Список" количество строк "равно" 6
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                   |Услуга                   |Точка учета |Способ начисления |Направление использования ТУ |Прибор учета |Сверх норматива |Объем услуги соц норма |
        |'31.01.2020 23:59:59' |'Блинов Павел Петрович'   |'Холодное водоснабжение' |'ввод'      |'По приборам'     |'Основное направление'       |'111'        |'Да'            |''                     |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'1,990000'   |''                 |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                   |Услуга                   |Точка учета |Способ начисления |Направление использования ТУ |Прибор учета |Сверх норматива |Объем услуги соц норма |
        |'31.01.2020 23:59:59' |'Блинов Павел Петрович'   |'Водоотведение'          |'ввод'      |'По приборам'     |'Основное направление'       |'222'        |'Нет'           |''                     |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'10,500000'  |'10,500000'        |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                   |Услуга                   |Точка учета |Способ начисления |Направление использования ТУ |Прибор учета |Сверх норматива |Объем услуги соц норма |
        |'31.01.2020 23:59:59' |'Блинов Павел Петрович'   |'Холодное водоснабжение' |'ввод'      |'По приборам'     |'Основное направление'       |'111'        |'Нет'           |'5,010000'             |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'5,010000'   |'7,000000'         |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                   |Услуга                   |Точка учета |Способ начисления |Направление использования ТУ |Прибор учета |Сверх норматива |Объем услуги соц норма |
        |'31.01.2020 23:59:59' |'Блинкова Ирина Петровна' |'Холодное водоснабжение' |'ввод'      |'По приборам'     |'Основное направление'       |'111'        |'Да'            |''                     |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'1,990000'   |''                 |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                   |Услуга                   |Точка учета |Способ начисления |Направление использования ТУ |Прибор учета |Сверх норматива |Объем услуги соц норма |
        |'31.01.2020 23:59:59' |'Блинкова Ирина Петровна' |'Водоотведение'          |'ввод'      |'По приборам'     |'Основное направление'       |'222'        |'Нет'           |''                     |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'10,500000'  |'10,500000'        |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                   |Услуга                   |Точка учета |Способ начисления |Направление использования ТУ |Прибор учета |Сверх норматива |Объем услуги соц норма |
        |'31.01.2020 23:59:59' |'Блинкова Ирина Петровна' |'Холодное водоснабжение' |'ввод'      |'По приборам'     |'Основное направление'       |'111'        |'Нет'           |'5,010000'             |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'5,010000'   |'7,000000'         |

