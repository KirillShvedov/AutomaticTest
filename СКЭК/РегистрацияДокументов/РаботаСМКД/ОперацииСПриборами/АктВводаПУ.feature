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
        И я загружаю макет "АктВводаПУ.mxl"
    И я создаю новый документ
        И В командном интерфейсе я выбираю 'Работа с МКД' 'Акт ввода/вывода/замены общедомового прибора учета'
        Тогда открылось окно 'Акт ввода/вывода/замены общедомового прибора учета'
        И в таблице "Список" я нажимаю на кнопку с именем 'СписокСоздать'
        Тогда открылось окно 'Выбор вида операции'
        И в таблице "СписокОпераций" я выбираю текущую строку
        Тогда открылось окно 'Акт ввода/вывода/замены общедомового прибора учета (создание)'
    И я заполняю форму открывшегося документа
        И из выпадающего списка "МКД" я выбираю точное значение 'Кемерово г, Ленина пр-кт, Дом 98А'
        Тогда открылось окно 'Акт ввода/вывода/замены общедомового прибора учета (создание) *'
        И в таблице "ТочкиУчета" я нажимаю на кнопку с именем 'ТочкиУчетаДобавить'
        И в таблице "ТочкиУчета" из выпадающего списка "Точка учета" я выбираю по строке 'служебная комната_Холодное водоснабжение'
        И я перехожу к следующему реквизиту
        И в таблице "ТочкиУчета" я завершаю редактирование строки
        И в таблице "ТочкиУчета" я нажимаю на кнопку 'Добавить приборы учета'
        Тогда открылось окно 'Операции с приборами учета'
        И в таблице "ТочкиУчетаЕстьШкалыНетТарифныхЗон" я нажимаю на кнопку с именем 'ТочкиУчетаЕстьШкалыНетТарифныхЗонДобавить'
        И в таблице "ТочкиУчетаЕстьШкалыНетТарифныхЗон" из выпадающего списка с именем "ТочкиУчетаЕстьШкалыНетТарифныхЗонВидКанальности" я выбираю точное значение 'Одноканальный ХВ'
        И я перехожу к следующему реквизиту
        И в таблице "ТочкиУчетаЕстьШкалыНетТарифныхЗон" из выпадающего списка с именем "ТочкиУчетаЕстьШкалыНетТарифныхЗонРасположениеИзмерителя" я выбираю точное значение 'ввод'
        И я перехожу к следующему реквизиту
        И в таблице "ТочкиУчетаЕстьШкалыНетТарифныхЗон" я завершаю редактирование строки
        И в таблице "ТочкиУчетаЕстьШкалыНетТарифныхЗон" я активизирую поле с именем "ТочкиУчетаЕстьШкалыНетТарифныхЗонЗаводскойНомер"
        И в таблице "ТочкиУчетаЕстьШкалыНетТарифныхЗон" я выбираю текущую строку
        И в таблице "ТочкиУчетаЕстьШкалыНетТарифныхЗон" в поле 'Заводской номер' я ввожу текст '123123'
        И в таблице "ТочкиУчетаЕстьШкалыНетТарифныхЗон" я активизирую поле с именем "ТочкиУчетаЕстьШкалыНетТарифныхЗонТипПрибораУчета"
        И в таблице "ТочкиУчетаЕстьШкалыНетТарифныхЗон" из выпадающего списка с именем "ТочкиУчетаЕстьШкалыНетТарифныхЗонТипПрибораУчета" я выбираю точное значение 'схв'
        И в таблице "ТочкиУчетаЕстьШкалыНетТарифныхЗон" я завершаю редактирование строки
        И в таблице "ТочкиУчетаЕстьШкалыНетТарифныхЗон" я активизирую поле с именем "ТочкиУчетаЕстьШкалыНетТарифныхЗонДатаВыпуска"
        И в таблице "ТочкиУчетаЕстьШкалыНетТарифныхЗон" в поле 'Дата выпуска' я ввожу текст '01.01.2019'
        И в таблице "ТочкиУчетаЕстьШкалыНетТарифныхЗон" я активизирую поле с именем "ТочкиУчетаЕстьШкалыНетТарифныхЗонДатаПоверкиСчетчика"
        И в таблице "ТочкиУчетаЕстьШкалыНетТарифныхЗон" в поле 'Дата поверки счетчика' я ввожу текст '01.01.2022'
        И в таблице "ТочкиУчетаЕстьШкалыНетТарифныхЗон" я активизирую поле с именем "ТочкиУчетаЕстьШкалыНетТарифныхЗонНомерПломбы"
        И в таблице "ТочкиУчетаЕстьШкалыНетТарифныхЗон" в поле 'Номер пломбы' я ввожу текст '1245'
        И в таблице "ТочкиУчетаЕстьШкалыНетТарифныхЗон" я активизирую поле с именем "ТочкиУчетаЕстьШкалыНетТарифныхЗонДатаУстановкиПломбы"
        И в таблице "ТочкиУчетаЕстьШкалыНетТарифныхЗон" в поле 'Дата установки пломбы' я ввожу текст '01.01.2019'
        И в таблице "ТочкиУчетаЕстьШкалыНетТарифныхЗон" я завершаю редактирование строки
        И в таблице "ТочкиУчетаЕстьШкалыНетТарифныхЗон" я активизирую поле с именем "ТочкиУчетаЕстьШкалыНетТарифныхЗонНачалоДействияКоммерскогоУчета"
        И в таблице "ТочкиУчетаЕстьШкалыНетТарифныхЗон" я выбираю текущую строку
        И в таблице "ТочкиУчетаЕстьШкалыНетТарифныхЗон" в поле 'Начало действия коммерского учета' я ввожу текст '01.01.2019'
        И в таблице "ТочкиУчетаЕстьШкалыНетТарифныхЗон" я активизирую поле с именем "ТочкиУчетаЕстьШкалыНетТарифныхЗонКонецДействияКоммерскогоУчета"
        И в таблице "ТочкиУчетаЕстьШкалыНетТарифныхЗон" в поле 'Конец действия коммерского учета' я ввожу текст '01.01.2025'
        И в таблице "ТочкиУчетаЕстьШкалыНетТарифныхЗон" я завершаю редактирование строки
        И я нажимаю на кнопку 'ОК'
        Тогда открылось окно 'Акт ввода/вывода/замены общедомового прибора учета (создание) *'
    И я провожу документ 
        И я нажимаю на кнопку 'Провести и закрыть'
        И я жду закрытия окна 'Акт ввода/вывода/замены общедомового прибора учета (создание) *' в течение 20 секунд