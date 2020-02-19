#language: ru
@tree
Функционал: <описание фичи>

Как <Роль>
Я хочу <описание функционала>
Чтобы <бизнес-эффект>

Контекст:
    Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: <описание сценария>
    И я подготавливаю тестовые данные
        И я загружаю макет "АктЗаменыПУ"
    И я создаю новый документ
        И В командном интерфейсе я выбираю 'Физические лица' 'Акт ввода/вывода/замены прибора учёта'
        Тогда открылось окно 'Акт ввода/вывода/замены прибора учёта'
        И в таблице "Список" я нажимаю на кнопку с именем 'СписокСоздать'
        Тогда открылось окно 'Выбор вида операции'
        И в таблице "СписокОпераций" я перехожу к строке:
        | Значение                 |
        | Акт замены прибора учета |
        И в таблице "СписокОпераций" я выбираю текущую строку
        Тогда открылось окно 'Акт ввода/вывода/замены прибора учёта (создание)'
    И я заполняю форму открывшегося документа    
        И из выпадающего списка "Абонент" я выбираю точное значение 'Астраханцев Вячеслав Владимирович'
        Тогда открылось окно 'Акт ввода/вывода/замены прибора учёта (создание) *'
        И из выпадающего списка "Контроллер" я выбираю точное значение 'Иванов'
        И я перехожу к закладке "Услуги"
        И в таблице "ПриборыУчетаШкалыЕстьТарифныеЗоны" я активизирую поле с именем "ПриборыУчетаШкалыЕстьТарифныеЗоныВводВидКанальности"
        И в таблице "ПриборыУчетаШкалыЕстьТарифныеЗоны" я выбираю текущую строку
        И в таблице "ПриборыУчетаШкалыЕстьТарифныеЗоны" из выпадающего списка с именем "ПриборыУчетаШкалыЕстьТарифныеЗоныВводВидКанальности" я выбираю точное значение 'Теплоноситель (м3)'
        И в таблице "ПриборыУчетаШкалыЕстьТарифныеЗоны" я активизирую поле с именем "ПриборыУчетаШкалыЕстьТарифныеЗоныВводЗаводскойНомер"
        И в таблице "ПриборыУчетаШкалыЕстьТарифныеЗоны" в поле 'Заводской номер' я ввожу текст '357357'
        И в таблице "ПриборыУчетаШкалыЕстьТарифныеЗоны" я выбираю текущую строку
        И в таблице "ПриборыУчетаШкалыЕстьТарифныеЗоны" из выпадающего списка с именем "ПриборыУчетаШкалыЕстьТарифныеЗоныВводТипПрибораУчета" я выбираю точное значение 'ETHI-15'
        И в таблице "ПриборыУчетаШкалыЕстьТарифныеЗоны" я активизирую поле с именем "ПриборыУчетаШкалыЕстьТарифныеЗоныВводДатаПоверкиСчетчика"
        И в таблице "ПриборыУчетаШкалыЕстьТарифныеЗоны" в поле 'Дата следующей поверки счетчика' я ввожу текст '01.01.2041'
        И в таблице "ПриборыУчетаШкалыЕстьТарифныеЗоны" я активизирую поле с именем "ПриборыУчетаШкалыЕстьТарифныеЗоныВводДатаПриемки"
        И в таблице "ПриборыУчетаШкалыЕстьТарифныеЗоны" в поле 'Дата приемки' я ввожу текст '01.01.2041'
        И в таблице "ПриборыУчетаШкалыЕстьТарифныеЗоны" я завершаю редактирование строки
        И в таблице "ПриборыУчетаШкалыЕстьТарифныеЗоны" я активизирую поле с именем "ПриборыУчетаШкалыЕстьТарифныеЗоныВводНомерПломбы"
        И в таблице "ПриборыУчетаШкалыЕстьТарифныеЗоны" я выбираю текущую строку
        И в таблице "ПриборыУчетаШкалыЕстьТарифныеЗоны" в поле 'Номер пломбы' я ввожу текст '357357357'
        И в таблице "ПриборыУчетаШкалыЕстьТарифныеЗоны" я активизирую поле с именем "ПриборыУчетаШкалыЕстьТарифныеЗоныВводДатаУстановкиПломбы"
        И в таблице "ПриборыУчетаШкалыЕстьТарифныеЗоны" в поле 'Дата установки пломбы' я ввожу текст '01.01.2019'
        И в таблице "ПриборыУчетаШкалыЕстьТарифныеЗоны" я завершаю редактирование строки
        И в таблице "ТочкиУчетаЕстьШкалыЕстьТарифныеЗоны" я перехожу к строке:
        | N | Ед.изм. | Точка учета                      | Услуга                       |
        | 2 | м3      | ТУ2_Холодное водоснабжение (ХВС) | Холодное водоснабжение (ХВС) |
        И в таблице "ТочкиУчетаЕстьШкалыЕстьТарифныеЗоны" я активизирую поле с именем "ТочкиУчетаЕстьШкалыЕстьТарифныеЗоныНомерСтроки"
        И в таблице 'ТочкиУчетаЕстьШкалыЕстьТарифныеЗоны' я удаляю строку
        И в таблице 'ТочкиУчетаЕстьШкалыЕстьТарифныеЗоны' я удаляю строку
        И в таблице 'ТочкиУчетаЕстьШкалыЕстьТарифныеЗоны' я удаляю строку
        И в таблице 'ТочкиУчетаЕстьШкалыЕстьТарифныеЗоны' я удаляю строку
        И в таблице 'ТочкиУчетаЕстьШкалыЕстьТарифныеЗоны' я удаляю строку
        И в таблице 'ТочкиУчетаЕстьШкалыЕстьТарифныеЗоны' я удаляю строку
        И в таблице 'ТочкиУчетаЕстьШкалыЕстьТарифныеЗоны' я удаляю строку
        И в таблице 'ТочкиУчетаЕстьШкалыЕстьТарифныеЗоны' я удаляю строку
        И в таблице 'ТочкиУчетаЕстьШкалыЕстьТарифныеЗоны' я удаляю строку
        И в таблице 'ТочкиУчетаЕстьШкалыЕстьТарифныеЗоны' я удаляю строку
        И в таблице 'ТочкиУчетаЕстьШкалыЕстьТарифныеЗоны' я удаляю строку
        И в таблице 'ТочкиУчетаЕстьШкалыЕстьТарифныеЗоны' я удаляю строку
        И в таблице "ПоказанияПриборовУчетаЕстьШкалыЕстьТарифныеЗоныВывод" я активизирую поле с именем "ПоказанияПриборовУчетаЕстьШкалыЕстьТарифныеЗоныВыводТекущиеПоказания"
        И в таблице "ПоказанияПриборовУчетаЕстьШкалыЕстьТарифныеЗоныВывод" я выбираю текущую строку
        И в таблице "ПоказанияПриборовУчетаЕстьШкалыЕстьТарифныеЗоныВывод" в поле 'Текущие показания' я ввожу текст '66,0000'
        И в таблице "ПоказанияПриборовУчетаЕстьШкалыЕстьТарифныеЗоныВывод" я завершаю редактирование строки
    И я провожу документ    
        И я нажимаю на кнопку 'Провести и закрыть'
        И я жду закрытия окна 'Акт ввода/вывода/замены прибора учёта (создание) *' в течение 20 секунд