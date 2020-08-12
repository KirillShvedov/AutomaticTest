    #language: ru
    @tree
    @сard2 "https://trello.com/c/5FgWB7oI"
    Функционал: <описание фичи>
    Как <Роль>
    Я хочу <проверить расчет расчет по показаниям>
    Чтобы <бизнес-эффект>

    Контекст:
    Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

    Сценарий: <НастройкаГодКор>
    И я подготавливаю тестовые данные
        И я загружаю макет "НастройкаГодКор.mxl"
    И я заполняю регистр
        И Я открываю навигационную ссылку "e1cib/command/РегистрСведений.энргНастройкиВыполненияГодовойКорректировки.Команда.СписокМКД"
        Тогда открылось окно 'Настройки выполнения годовой корректировки'
        И в поле 'Год' я ввожу текст '2 021'
        И из выпадающего списка "Организация" я выбираю по строке 'ОАО "СКЭК"'
        И из выпадающего списка "Район" я выбираю по строке 'Березовский городской округ'
        И я нажимаю кнопку выбора у поля "Период корректировки"
        Тогда открылось окно 'Выберите период'
        И в поле 'DateBegin' я ввожу текст '01.01.2020'
        И я перехожу к следующему реквизиту
        И в поле 'DateEnd' я ввожу текст '31.12.2020'
        И я нажимаю на кнопку 'Выбрать'
        Тогда открылось окно 'Настройки выполнения годовой корректировки'
        И в поле 'Месяц' я ввожу текст '1'
        И в таблице "СписокМКД" я нажимаю на кнопку 'Подбор'
        Тогда открылось окно 'Строения'
        И в таблице "Список" я перехожу к строке:
        | Код         | Наименование                        | Тип строения                |
        | '000000296' | 'Кемерово г, Павленко ул, Дом № 12' | 'Многоквартирный жилой дом' |
        И я нажимаю на кнопку с именем 'ФормаВыбрать'
        Тогда открылось окно 'Настройки выполнения годовой корректировки'
        И в таблице "СписокМКД" я перехожу к строке:
        |МКД                                 |
        |'Кемерово г, Павленко ул, Дом № 12' |
        И в таблице "СписокМКД" я нажимаю на кнопку с именем 'СписокМКДДобавить'
        И в таблице "СписокМКД" я завершаю редактирование строки
        И в таблице "СписокМКД" я перехожу к строке:
        | МКД                                 |
        | 'Кемерово г, Павленко ул, Дом № 12' |
        И в таблице "СписокМКД" я перехожу к строке:
        | МКД              |
        | 'Частный сектор' |
        И я нажимаю на кнопку 'Записать и закрыть'
        И я жду закрытия окна 'Настройки выполнения годовой корректировки' в течение 20 секунд
    И я проверяю записи в настройке годовой корректирвоки
        И В командном интерфейсе я выбираю 'Администрирование' 'Настройки расчетов'
        Тогда открылось окно 'Настройка периодических величин: Панель администрирования биллинг'
        И я перехожу к закладке "Управление сезонностью"
        И я перехожу к закладке "Настройки выполнения годовой корректировки"
        И в таблице "НастройкиВыполненияГодовойКорректировки" я перехожу к строке:
        |Период       |Организация  |Район                         |МКД                                 |Месяц |Начало периода |Конец периода |
        |'01.01.2021' |'ОАО "СКЭК"' |'Березовский городской округ' |'Кемерово г, Павленко ул, Дом № 12' |'1'   |'01.01.2020'   |'31.12.2020'  |
        И в таблице "НастройкиВыполненияГодовойКорректировки" я перехожу к строке:
        |Период       |Организация  |Район                         |МКД                                 |Месяц |Начало периода |Конец периода |
        |'01.01.2021' |'ОАО "СКЭК"' |'Березовский городской округ' |''                                  |'1'   |'01.01.2020'   |'31.12.2020'  |    

