    #language: ru
    @tree
    Функционал: <описание фичи>

    Как <Роль>
    Я хочу <описание функционала>
    Чтобы <бизнес-эффект>

    Контекст:
    Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий


    Сценарий: Создание документа "СоглашениеОПотребленииМеждуРазделеннымиЛС"
    И я подготавливаю тестовые данные
        И я загружаю макет "СКЭК\РегистрацияДокументов\РаботаСАбонентами\СоглашениеОПотребленииМеждуРазделеннымиЛС\СоглашениеОПотребленииМеждуРазделеннымиЛС.mxl"
    И я создаю новый документ
        И В командном интерфейсе я выбираю 'Работа с абонентами' 'Соглашение о потреблении между разделенными ЛС'
        Тогда открылось окно 'Соглашение о потреблении между разделенными ЛС'
        И в таблице "Список" я нажимаю на кнопку с именем 'СписокСоздать'
        Тогда открылось окно 'Соглашение о потреблении между разделенными ЛС (создание)'
    И я заполняю форму открывшегося документа   
        И в поле 'от' я ввожу текст '01.02.2020  0:00:05' 
        И из выпадающего списка с именем "Строение" я выбираю точное значение 'Березовский г., Киевская ул, Дом № 30'
        И я нажимаю кнопку выбора у поля с именем "Помещение"
        Тогда открылось окно 'Помещения (энрг)'
        И в таблице "Список" я выбираю текущую строку
        Тогда открылось окно 'Соглашение о потреблении между разделенными ЛС (создание)'
        И из выпадающего списка с именем "Услуга" я выбираю точное значение 'Отопление'
        И в таблице "Абоненты" я перехожу к строке:
		| N | Абонент                    | Помещение | Строение                                | Точка учета        | Услуга      |
		| 1 | 'Ложкин Владимир Иванович' | ' 2'      | 'Березовский г., Киевская ул, Дом № 30' | 'подвал_Отопление' | 'Отопление' |
        И в таблице "Абоненты" я активизирую поле "Способ распределения"
        И в таблице "Абоненты" я выбираю текущую строку
        И в таблице "Абоненты" из выпадающего списка "Способ распределения" я выбираю точное значение 'Фиксированный объем'
        И в таблице "Абоненты" я завершаю редактирование строки
        И в таблице "ФиксированныеОбъемы" я активизирую поле "Фиксированный объем потребления"
        И в таблице "ФиксированныеОбъемы" я выбираю текущую строку
        И в таблице "ФиксированныеОбъемы" в поле 'Фиксированный объем потребления' я ввожу текст '0,050000'
        И в таблице "ФиксированныеОбъемы" я завершаю редактирование строки
        И в таблице "Абоненты" я перехожу к строке:
        | N | Абонент                         | Помещение    | Строение                                | Точка учета        | Услуга      |
        | 2 | 'Кузнецова Зинаида Григорьевна' | ' 1'         | 'Березовский г., Киевская ул, Дом № 30' | 'подвал_Отопление' | 'Отопление' |
        И в таблице "Абоненты" я активизирую поле с именем "АбонентыНомерСтроки"
        И в таблице "Абоненты" я активизирую поле "Способ распределения"
        И в таблице "Абоненты" я выбираю текущую строку
        И в таблице "Абоненты" из выпадающего списка "Способ распределения" я выбираю точное значение 'Остаток'
        И в таблице "Абоненты" я активизирую поле "Коэффициент распределения остатка"
        И в таблице "Абоненты" в поле 'Коэффициент распределения остатка' я ввожу текст '1,0000'
        И в таблице "Абоненты" я завершаю редактирование строки
    И я провожу документ
        И я нажимаю на кнопку 'Провести и закрыть'
        И я жду закрытия окна 'Соглашение о потреблении между разделенными ЛС (создание) *' в течение 20 секунд


