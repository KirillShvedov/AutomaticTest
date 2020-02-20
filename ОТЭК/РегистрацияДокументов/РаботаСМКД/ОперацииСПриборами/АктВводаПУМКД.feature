#language: ru
@tree
Функционал: <описание фичи>

Как <Роль>
Я хочу <описание функционала>
Чтобы <бизнес-эффект>

Контекст:
    Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: <АктВводаПУМКД>
    И я подготавливаю тестовые данные
        И я загружаю макет "ОТЭК\РегистрацияДокументов\РаботаСМКД\ОперацииСПриборами\АктВводаПУМКД"
    И я создаю новый документ
        И В командном интерфейсе я выбираю 'Работа с МКД' 'Акт ввода/вывода/замены общедомового прибора учета'
        Тогда открылось окно 'Акт ввода/вывода/замены общедомового прибора учета'
        И в таблице "Список" я нажимаю на кнопку с именем 'СписокСоздать'
        Тогда открылось окно 'Выбор вида операции'
        И в таблице "СписокОпераций" я выбираю текущую строку
        Тогда открылось окно 'Акт ввода/вывода/замены общедомового прибора учета (создание)'
    И я заполняю форму открывшегося документа      
        И в поле 'Дата' я ввожу текст '03.02.2020  0:00:00'
        И из выпадающего списка "МКД" я выбираю точное значение 'Глазов г., Ярская ул, Дом № 19'
        И в таблице "ТочкиУчета" я нажимаю на кнопку с именем 'ТочкиУчетаДобавить'
        И в таблице "ТочкиУчета" я нажимаю кнопку выбора у реквизита "Точка учета"
        Тогда открылось окно 'Точки учета'
        И в таблице "Список" я выбираю текущую строку
        Тогда открылось окно 'Акт ввода/вывода/замены общедомового прибора учета (создание) *'
        И в таблице "ТочкиУчета" я активизирую поле "Тип узла учета"
        И в таблице "ТочкиУчета" из выпадающего списка "Тип узла учета" я выбираю точное значение 'Тв-ль1+Р-р2+Т-р1'
        И в таблице "ТочкиУчета" я перехожу к строке:
        | N | Тип узла учета     | Точка учета     | Услуга      |
        | 1 | 'Тв-ль1+Р-р2+Т-р1' | 'ТУ6_Отопление' | 'Отопление' |
        И я добавляю новый прибор учета с учетом узла Тв-ль1+Р-р2+Т-р1
        И в таблице "ТочкиУчета" я завершаю редактирование строки
    И я провожу документ     
        И я нажимаю на кнопку 'Провести и закрыть'
        И я жду закрытия окна 'Акт ввода/вывода/замены общедомового прибора учета (создание) *' в течение 20 секунд
        