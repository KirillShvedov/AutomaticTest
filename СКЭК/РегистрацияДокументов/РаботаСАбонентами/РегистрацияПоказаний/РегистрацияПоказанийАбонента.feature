    #language: ru
    @tree
    Функционал: <РегистрацияПоказанийАбонента>
    "https://trello.com/c/DyxrGNzJ"
    Как <Роль>
    Я хочу <описание функционала>
    Чтобы <бизнес-эффект>

    Контекст:
    Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

    Сценарий: <РегистрацияПоказанийАбонента>
    И я подготавливаю тестовые данные
        И я загружаю макет "РегистрацияПоказанийАбонента.mxl"
    И я перепровожу загруженные данные
        И В командном интерфейсе я выбираю 'Администрирование' 'Ввод начальных остатков'
        Тогда открылось окно 'Ввод начальных остатков'
        И в таблице 'Список' я выделяю все строки
        И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюПровести' на элементе формы с именем "Список"
    И я создаю новый документ
        И В командном интерфейсе я выбираю 'Работа с абонентами' 'Регистрация показаний абонента'
        Тогда открылось окно 'Регистрация показаний абонента'
        И в таблице "Список" я нажимаю на кнопку с именем 'СписокСоздать'
        Тогда открылось окно 'Регистрация показаний абонента: Регистрация показаний абонента (создание)'
    И я заполняю форму открывшегося документа
        И из выпадающего списка "Абонент" я выбираю по строке 'Маркидонов Александр Александрович'
        И из выпадающего списка "Источник показаний" я выбираю по строке 'Касса'
        И в таблице "ТочкиУчетаЕстьШкалыНетТарифныхЗон" я перехожу к строке:
        |Точка учета      |Услуга      |Ед.изм. |Прибор учета                 |Вид канальности    |
        |'узел_Отопление' |'Отопление' |'Гкал'  |'18-068667                '  |'Одноканальный ХВ' |
        И в таблице "ШкалыПриборовУчетаЕстьШкалыНетТарифныхЗон" я перехожу к строке:
        |Дата последних показаний |
        |'26.12.2018'             |
        И в таблице "ШкалыПриборовУчетаЕстьШкалыНетТарифныхЗон" в поле 'Разница' я ввожу текст '30,000000'
        И в таблице "ШкалыПриборовУчетаЕстьШкалыНетТарифныхЗон" текущая строка равна:
        |Разница    |Состояние показаний|Предоставлены|
        |'30,000000'|'Приняты'          |'Да'         |
    И я провожу документ    
        И я нажимаю на кнопку 'Провести и закрыть'
        И я жду закрытия окна 'Регистрация показаний абонента: Регистрация показаний абонента (создание) *' в течение 20 секунд
