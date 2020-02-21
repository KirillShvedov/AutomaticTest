#language: ru
@tree
Функционал: <описание фичи>

Как <Роль>
Я хочу <описание функционала>
Чтобы <бизнес-эффект>

Контекст:
    Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: <РегистрацияПоказанийМКД>
    И я подготавливаю тестовые данные
        И я загружаю макет "РегистрацияПоказанийМКД"
    И я перепровожу загруженные документы
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
        И я нажимаю кнопку выбора у поля 'Месяц с'
        Тогда открылось окно 'Выбор периода'
        И в поле 'ВыбираемыйПериод' я ввожу текст "2019"
        И я перехожу к следующему реквизиту    
        И я нажимаю на кнопку 'Декабрь'
        И я нажимаю на кнопку 'Выбрать'
        И я перехожу к следующему реквизиту    
        И из выпадающего списка "Организация" я выбираю по строке 'ОАО "СКЭК"'
        И из выпадающего списка "Территориальный орган" я выбираю по строке 'Березовский городской округ'
        И я нажимаю на кнопку 'Выполнить все операции'
     И я создаю новый документ
        И В командном интерфейсе я выбираю 'Работа с МКД' 'Регистрация показаний многоквартирного дома'
        Тогда открылось окно 'Регистрация показаний многоквартирного дома'
        И в таблице "Список" я нажимаю на кнопку с именем 'СписокСоздать'
        Тогда открылось окно 'Квитанция: Регистрация показаний многоквартирного дома (создание)'
    И я заполняю форму открывшегося документа  
        И из выпадающего списка "МКД" я выбираю по строке 'Березовский г., 8 Марта ул, Дом № 10'
        И в таблице "ТочкиУчетаЕстьШкалыНетТарифныхЗон" я перехожу к строке:
        |N   |Точка учета                                 |Услуга                  |
        |'1' |'подсобное помещение_Горячее водоснабжение' |'Горячее водоснабжение' |
        И в таблице "ШкалыПриборовУчетаЕстьШкалыНетТарифныхЗон" я перехожу к строке:
        |Шкала      |Состояние показаний   |Коэффициент ПУ | Дата предыдущих показаний |
        |'Основная' |'Отклонены'           |'1,00000'      | '16.12.2019'              | 
        И в таблице "ШкалыПриборовУчетаЕстьШкалыНетТарифныхЗон" я активизирую поле с именем "ШкалыПриборовУчетаЕстьШкалыНетТарифныхЗонРазница"
        И в таблице "ШкалыПриборовУчетаЕстьШкалыНетТарифныхЗон" я выбираю текущую строку
        И в таблице "ШкалыПриборовУчетаЕстьШкалыНетТарифныхЗон" в поле 'Разница' я ввожу текст '56,000000'
        И в таблице "ШкалыПриборовУчетаЕстьШкалыНетТарифныхЗон" я завершаю редактирование строки
    И я провожу документ    
        И я нажимаю на кнопку 'Провести и закрыть'
        И я жду закрытия окна 'Квитанция: Регистрация показаний многоквартирного дома (создание) *' в течение 20 секунд
