#language: ru
@tree
Функционал: <описание фичи>

Как <Роль>
Я хочу <описание функционала>
Чтобы <бизнес-эффект>

Контекст:
    Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: <АктВыводаПУ>
    И я подготавливаю тестовые данные
        И я загружаю макет "АктВыводаПУ"
    И я перепровожу загруженные данные
        И В командном интерфейсе я выбираю 'Работа с МКД' 'Операции с МКД'
        Тогда открылось окно 'Операции с МКД'
        И в таблице 'Список' я выделяю все строки
        И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюПровести' на элементе формы с именем "Список"
        И В командном интерфейсе я выбираю 'Работа с МКД' 'Регистрация показаний многоквартирного дома'
        Тогда открылось окно 'Регистрация показаний многоквартирного дома'
        И в таблице 'Список' я выделяю все строки
        И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюПровести' на элементе формы с именем "Список"    
    И я восстанавливаю последовательность
        И В командном интерфейсе я выбираю 'Расчет начислений' 'Выполнение начислений'
        Тогда открылось окно 'Выполнение начислений: Выполнение начислений'
        И из выпадающего списка "Организация" я выбираю по строке 'ОАО "СКЭК"'
        И из выпадающего списка "Территориальный орган" я выбираю по строке 'Березовский городской округ'
        И я нажимаю на кнопку 'Выполнить все операции'
        И поле с именем "ОшибкиВосстановлениеПоследовательностиДокументовМКД" имеет заголовок "Нет Ошибок"
        И поле с именем "ОшибкиВосстановлениеПоследовательностиПоказанийМКД" имеет заголовок "Нет Ошибок"
    И я создаю новый документ
        И В командном интерфейсе я выбираю 'Работа с МКД' 'Акт ввода/вывода/замены общедомового прибора учета'
        Тогда открылось окно 'Акт ввода/вывода/замены общедомового прибора учета'
        И в таблице "Список" я нажимаю на кнопку с именем 'СписокСоздать'
        Тогда открылось окно 'Выбор вида операции'
        И в таблице "СписокОпераций" я перехожу к строке:
        | Значение                         |
        | Вывод общедомового прибора учета |
        И в таблице "СписокОпераций" я выбираю текущую строку
        Тогда открылось окно 'Акт ввода/вывода/замены общедомового прибора учета (создание)'
    И я заполняю форму открывшегося документа    
        И из выпадающего списка "МКД" я выбираю по строке '652420, Кемеровская область - Кузбасс, Березовский г., Ленина пр-кт, дом № 8'
        И я нажимаю на кнопку 'Заполнить'
        И в таблице "ТочкиУчетаЕстьШкалыНетТарифныхЗон" я перехожу к строке:
        |Точка учета      |Услуга      |Прибор учета    |
        |'ввод_Отопление' |'Отопление' |'846564рр'      |
        И в таблице "ШкалыПриборовУчетаЕстьШкалыНетТарифныхЗон" я перехожу к строке:
        | Дата последних показаний   | Предыдущие показания |
        | '10.02.2020'               | '20,0000'            |
        И в таблице "ШкалыПриборовУчетаЕстьШкалыНетТарифныхЗон" я активизирую поле с именем "ШкалыПриборовУчетаЕстьШкалыНетТарифныхЗонТекущиеПоказания"
        И в таблице "ШкалыПриборовУчетаЕстьШкалыНетТарифныхЗон" я выбираю текущую строку
        И в таблице "ШкалыПриборовУчетаЕстьШкалыНетТарифныхЗон" в поле 'Текущие показания' я ввожу текст '32,0000'
        И в таблице "ШкалыПриборовУчетаЕстьШкалыНетТарифныхЗон" я завершаю редактирование строки
    И я провожу документ 
        И я нажимаю на кнопку 'Провести и закрыть'
        И я жду закрытия окна 'Акт ввода/вывода/замены общедомового прибора учета (создание) *' в течение 20 секунд