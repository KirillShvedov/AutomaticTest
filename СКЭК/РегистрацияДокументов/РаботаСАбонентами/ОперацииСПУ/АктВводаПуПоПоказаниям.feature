    #language: ru
    @tree
    @card 'https://trello.com/c/bmgB9xyB'
    Функционал: <описание фичи>
    Как <Роль>
    Я хочу <описание функционала>
    Чтобы <бизнес-эффект>

    Контекст:
    Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

    Сценарий: <АктВводаПуПоПоказаниям>
    И я подготавливаю тестовые данные
        И я загружаю макет "АктВводаПуПоПоказаниям.mxl"
    И я перепровожу загруженные документы
        И В командном интерфейсе я выбираю 'Администрирование' 'Ввод начальных остатков'
        Тогда открылось окно 'Ввод начальных остатков'
        И в таблице 'Список' я выделяю все строки
        И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюПровести' на элементе формы с именем "Список"
        И В командном интерфейсе я выбираю 'Работа с абонентами' 'Акт ввода/вывода/замены прибора учёта'
        Тогда открылось окно 'Акт ввода/вывода/замены прибора учёта'
        И в таблице 'Список' я выделяю все строки
        И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюПровести' на элементе формы с именем "Список"
    И Я запускаю выполнение начислений по организации 'ОАО "СКЭК"' и району 'Кемеровский городской округ' и МКД '' с 'Октябрь' '2020' по 'Октябрь 2020'
    И я создаю документ
        И В командном интерфейсе я выбираю 'Работа с абонентами' 'Акт ввода/вывода/замены прибора учёта'
        Тогда открылось окно 'Акт ввода/вывода/замены прибора учёта'
        И в таблице "Список" я нажимаю на кнопку с именем 'СписокСоздать'
        Тогда открылось окно 'Выбор вида операции'
        И в таблице "СписокОпераций" я выбираю текущую строку
        Тогда открылось окно 'Акт ввода/вывода/замены прибора учёта (создание)'
        И из выпадающего списка "Абонент" я выбираю по строке 'Кутинов'
        И в таблице "ТочкиУчетаЕстьШкалыНетТарифныхЗон" я нажимаю на кнопку с именем 'ТочкиУчетаЕстьШкалыНетТарифныхЗонДобавить'
        И в таблице "ТочкиУчетаЕстьШкалыНетТарифныхЗон" из выпадающего списка с именем "ТочкиУчетаЕстьШкалыНетТарифныхЗонТочкаУчета" я выбираю по строке '+ввод_Холодное водоснабжение'
        И в таблице "ТочкиУчетаЕстьШкалыНетТарифныхЗон" я активизирую поле с именем "ТочкиУчетаЕстьШкалыНетТарифныхЗонВидКанальности"
        И в таблице "ТочкиУчетаЕстьШкалыНетТарифныхЗон" из выпадающего списка с именем "ТочкиУчетаЕстьШкалыНетТарифныхЗонВидКанальности" я выбираю по строке 'Одноканальный ХВ'
        И в таблице "ТочкиУчетаЕстьШкалыНетТарифныхЗон" я завершаю редактирование строки
        И в таблице "ТочкиУчетаЕстьШкалыНетТарифныхЗон" я активизирую поле с именем "ТочкиУчетаЕстьШкалыНетТарифныхЗонЗаводскойНомер"
        И в таблице "ТочкиУчетаЕстьШкалыНетТарифныхЗон" я выбираю текущую строку
        И в таблице "ТочкиУчетаЕстьШкалыНетТарифныхЗон" в поле 'Заводской номер' я ввожу текст '357357'
        И в таблице "ТочкиУчетаЕстьШкалыНетТарифныхЗон" я активизирую поле с именем "ТочкиУчетаЕстьШкалыНетТарифныхЗонТипПрибораУчета"
        И в таблице "ТочкиУчетаЕстьШкалыНетТарифныхЗон" из выпадающего списка с именем "ТочкиУчетаЕстьШкалыНетТарифныхЗонТипПрибораУчета" я выбираю по строке 'Lorenz (значн.4)'
        И в таблице "ТочкиУчетаЕстьШкалыНетТарифныхЗон" я активизирую поле с именем "ТочкиУчетаЕстьШкалыНетТарифныхЗонНомерПломбы"
        И в таблице "ТочкиУчетаЕстьШкалыНетТарифныхЗон" в поле 'Номер пломбы' я ввожу текст '15478'
        И в таблице "ТочкиУчетаЕстьШкалыНетТарифныхЗон" я активизирую поле с именем "ТочкиУчетаЕстьШкалыНетТарифныхЗонДатаПриемки"
        И в таблице "ТочкиУчетаЕстьШкалыНетТарифныхЗон" в поле 'Дата выпуска' я ввожу текст '01.01.2019'
        И в таблице "ТочкиУчетаЕстьШкалыНетТарифныхЗон" я активизирую поле с именем "ТочкиУчетаЕстьШкалыНетТарифныхЗонДатаПоверкиСчетчика"
        И в таблице "ТочкиУчетаЕстьШкалыНетТарифныхЗон" в поле 'Дата следующей поверки счетчика' я ввожу текст '01.01.2025'
        И в таблице "ТочкиУчетаЕстьШкалыНетТарифныхЗон" я завершаю редактирование строки
        И в таблице "ТочкиУчетаЕстьШкалыНетТарифныхЗон" я активизирую поле "По показаниям"
        И в таблице "ШкалыПриборовУчетаЕстьШкалыНетТарифныхЗон" я активизирую поле с именем "ШкалыПриборовУчетаЕстьШкалыНетТарифныхЗонТекущиеПоказания"
        И в таблице "ШкалыПриборовУчетаЕстьШкалыНетТарифныхЗон" я выбираю текущую строку
        И в таблице "ШкалыПриборовУчетаЕстьШкалыНетТарифныхЗон" в поле 'Текущие показания' я ввожу текст '3,0000'
        И в таблице "ШкалыПриборовУчетаЕстьШкалыНетТарифныхЗон" я завершаю редактирование строки
    И я провожу документ    
        И я нажимаю на кнопку 'Провести и закрыть'
        И я жду закрытия окна 'Акт ввода/вывода/замены прибора учёта (создание) *' в течение 20 секунд