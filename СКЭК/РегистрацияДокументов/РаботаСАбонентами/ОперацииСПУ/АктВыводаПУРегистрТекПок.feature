    #language: ru
    @tree
    @card 'https://trello.com/c/X1jAbQuU'
    Функционал: <описание фичи>
    Как <Роль>
    Я хочу <описание функционала>
    Чтобы <бизнес-эффект>

    Контекст:
    Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

    Сценарий: <АктВыводаПУРегистрТекПок>
    И я подготавливаю тестовые данные
        И я загружаю макет "АктВыводаПУРегистрТекПок.mxl"
    И я перепровожу загруженные документы
        И В командном интерфейсе я выбираю 'Работа с абонентами' 'Открытие/закрытие лс физического лица'
        Тогда открылось окно 'Открытие/закрытие лс физического лица'
        И в таблице 'Список' я выделяю все строки
        И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюПровести' на элементе формы с именем "Список"
        И В командном интерфейсе я выбираю 'Работа с абонентами' 'Регистрация показаний абонента'
        Тогда открылось окно 'Регистрация показаний абонента'
        И в таблице 'Список' я выделяю все строки
        И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюПровести' на элементе формы с именем "Список"
    И Я запускаю выполнение начислений по организации 'ОАО "СКЭК"' и району 'Кемеровский городской округ' и МКД '' с 'Июль' '2020' по 'Август 2020'
    И я провожу акт вывода пу
        И В командном интерфейсе я выбираю 'Работа с абонентами' 'Акт ввода/вывода/замены прибора учёта'
        Тогда открылось окно 'Акт ввода/вывода/замены прибора учёта'    
        И в таблице "Список" я перехожу к строке:
        |Дата                  |Вид операции               |Строение                                 |Абонент                     |Лицевой счет |
        |'01.09.2020 12:00:00' |'Акт вывода прибора учета' |'Кемерово г, Луначарского ул, Дом № 13А' |'Гинжул Ольга Валентиновна' |'0200000064' |
        И в таблице "Список" я выбираю текущую строку
        Тогда открылось окно 'Акт вывода прибора учета №00000000040 от *'
        И в таблице "ТочкиУчетаЕстьШкалыНетТарифныхЗон" я перехожу к строке:
        |Точка учета                    |Услуга                   |Ед.изм. |Прибор учета |Вид канальности    |
        |'+ввод_Холодное водоснабжение' |'Холодное водоснабжение' |'м3'    |'070202'     |'Одноканальный ХВ' |
        И в таблице "ШкалыПриборовУчетаЕстьШкалыНетТарифныхЗон" я перехожу к строке:
        |Шкала      |Предыдущие показания |Дата последних показаний |Состояние показаний |
        |'Основная' |'1 069,0000'         |'01.08.2020'             |'Отклонены'         |
        И в таблице "ШкалыПриборовУчетаЕстьШкалыНетТарифныхЗон" я активизирую поле с именем "ШкалыПриборовУчетаЕстьШкалыНетТарифныхЗонТекущиеПоказания"
        И в таблице "ШкалыПриборовУчетаЕстьШкалыНетТарифныхЗон" я выбираю текущую строку
        И в таблице "ШкалыПриборовУчетаЕстьШкалыНетТарифныхЗон" в поле 'Текущие показания' я ввожу текст '1 070,0000'
        И в таблице "ШкалыПриборовУчетаЕстьШкалыНетТарифныхЗон" я завершаю редактирование строки
        И в таблице "ШкалыПриборовУчетаЕстьШкалыНетТарифныхЗон" я перехожу к строке:
        |Шкала      |Ед. изм. |Предыдущие показания |Дата последних показаний |Текущие показания |Состояние показаний |Разница  |
        |'Основная' |'м3'     |'1 069,0000'         |'01.08.2020'             |'1 070,0000'      |'Приняты'           |'1,0000' |
    И я провожу документ    
        И я нажимаю на кнопку 'Провести и закрыть'
        И я жду закрытия окна 'Акт вывода прибора учета №00000000015 от *' в течение 20 секунд