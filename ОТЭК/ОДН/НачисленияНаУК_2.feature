    #language: ru
    @tree
    Функционал: <описание фичи>

    Как <Роль>
    Я хочу <проверить расчет ОДН по УК>
    Чтобы <бизнес-эффект>

    Контекст:
    Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

    Сценарий: <расчет ОДН по УК>
    И я подготавливаю тестовые данные
        И я загружаю макет "НачисленияНаУК_2.mxl"
    И я перепровожу загруженные данные

        И В командном интерфейсе я выбираю 'Работа с МКД' 'Операции с МКД'
        Тогда открылось окно 'Операции с МКД'
        И в таблице 'Список' я выделяю все строки
        И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюПровести' на элементе формы с именем "Список"

        И В командном интерфейсе я выбираю 'Работа с МКД' 'Регистрация показаний многоквартирного дома'
        Тогда открылось окно 'Регистрация показаний многоквартирного дома'
        И в таблице 'Список' я выделяю все строки
        И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюПровести' на элементе формы с именем "Список"

        И В командном интерфейсе я выбираю 'Физические лица' 'Открытие/закрытие лс физического лица'
        Тогда открылось окно 'Открытие/закрытие лс физического лица'
        И в таблице 'Список' я выделяю все строки
        И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюПровести' на элементе формы с именем "Список"

        И В командном интерфейсе я выбираю 'Физические лица' 'Регистрация показаний физ.лиц (массовый ввод)'
        Тогда открылось окно 'Регистрация показаний физ.лиц (массовый ввод)'
        И в таблице 'Список' я выделяю все строки
        И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюПровести' на элементе формы с именем "Список"

        И В командном интерфейсе я выбираю 'Юридические лица' 'Заключение договоров с контрагентами'
        Тогда открылось окно 'Заключение договоров с контрагентами'
        И в таблице 'Список' я выделяю все строки
        И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюПровести' на элементе формы с именем "Список"  

    И Я запускаю выполнение начислений в ОТЭК по организации 'Филиал АО "ОТЭК" в г. Глазове' и району 'Глазов' и '427627, Удмуртская респ, Глазов г., Вокзальная ул, дом № 6а' с 'Февраль' '2020' по 'Февраль 2020'

    И я проверяю полученные результаты
        И Я открываю навигационную ссылку "e1cib/list/РегистрНакопления.энргОбъемНачисленийНП"
        Тогда открылось окно 'Объем начислений юр. лиц'
        И в таблице "Список" я перехожу к строке:
        |Период                |Услуга                               | 
        |'29.02.2020 23:59:59' |'Горячее водоснабжение (ГВС)'        |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный   |
        |'17,900000'  |'17,9000000'         |