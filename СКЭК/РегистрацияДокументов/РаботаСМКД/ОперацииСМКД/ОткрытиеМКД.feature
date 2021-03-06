#language: ru
@tree
Функционал: <описание фичи>

Как <Роль>
Я хочу <описание функционала>
Чтобы <бизнес-эффект>

Контекст:
Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: <ОткрытиеМКД>
    И я подготавливаю тестовые данные
        И я загружаю макет "ОткрытиеМКД"
    И я создаю новый документ
        И В командном интерфейсе я выбираю 'Работа с МКД' 'Операции с МКД'
        Тогда открылось окно 'Операции с МКД'
        И в таблице "Список" я нажимаю на кнопку с именем 'СписокСоздать'
        Тогда открылось окно 'Выбор вида операции'
        И в таблице "СписокОпераций" я выбираю текущую строку
        Тогда открылось окно 'Открытие МКД: Операции с МКД (создание)'
    И я заполняю форму открывшегося документа
        И из выпадающего списка "Территориальный орган" я выбираю по строке 'Кемеровский городской округ'
        Тогда открылось окно 'Открытие МКД: Операции с МКД (создание) *'
        И из выпадающего списка "Филиал" я выбираю по строке 'Кемеровский ОЭ'
        И я нажимаю на кнопку создать поля "Улица недобавленная в ФИАС"
        Тогда открылось окно 'Улицы недобавленные в ФИАС (создание)'
        И я нажимаю кнопку выбора у поля "Адрес недобавленного объекта"
        Тогда открылось окно 'Адрес недобавленного объекта'
        И из выпадающего списка "Город, населенный пункт" я выбираю по строке 'Кемерово'
        Тогда открылось окно 'Адрес недобавленного объекта *'
        И я перехожу к закладке "Страница административно территориальный адрес"
        И в поле 'Адрес' я ввожу текст 'ул. Ягодная, д.13'
        И я перехожу к следующему реквизиту
        И я нажимаю на кнопку 'ОК'
        Тогда открылось окно 'Улицы недобавленные в ФИАС (создание) *'
        И в поле 'Наименование' я ввожу текст 'Ягодная, д.13'
        И я нажимаю на кнопку 'Записать и закрыть'
        И я жду закрытия окна 'Улицы недобавленные в ФИАС (создание) *' в течение 20 секунд
        И в поле 'Общая площадь' я ввожу текст '300,00000'
        И из выпадающего списка "Вид объекта абонентов" я выбираю по строке 'Дом'
        И я перехожу к закладке "Услуги"
        И в таблице "ТочкиУчета" я нажимаю на кнопку с именем 'ТочкиУчетаДобавить'
        И в таблице "ТочкиУчета" из выпадающего списка с именем "ТочкиУчетаУслуга" я выбираю по строке 'Отопление'
        И я перехожу к следующему реквизиту
        И в таблице "ТочкиУчета" из выпадающего списка "Поставщик" я выбираю по строке 'ОАО СКЭК'
        И я перехожу к следующему реквизиту
        И в таблице "ТочкиУчета" из выпадающего списка "Распределять" я выбираю по строке 'Да'
        И я перехожу к следующему реквизиту
        И в таблице "ТочкиУчета" я завершаю редактирование строки
        И в таблице "ТочкиУчета" я активизирую поле "Ед.изм."
        И в таблице "ТочкиУчета" я выбираю текущую строку
        И в таблице "ТочкиУчета" я выбираю текущую строку
        И в таблице "ТочкиУчета" я выбираю текущую строку
        И в таблице "ТочкиУчета" я активизирую поле "Структура сети"
        И в таблице "ТочкиУчета" я выбираю текущую строку
        И в таблице "ТочкиУчета" из выпадающего списка "Структура сети" я выбираю по строке 'Зона "А"'
        И в таблице "ТочкиУчета" я активизирую поле "Расположение"
        И в таблице "ТочкиУчета" из выпадающего списка "Расположение" я выбираю по строке 'ввод'
        И в таблице "ТочкиУчета" я активизирую поле "Тип узла учета"
        И в таблице "ТочкиУчета" из выпадающего списка "Тип узла учета" я выбираю по строке 'УУ1'
        И я перехожу к закладке "Площади"
        И в таблице "ТочкиУчета" я завершаю редактирование строки
        И в таблице "ЗначениеПлощадей" я активизирую поле "Вид площади"
        И в таблице "ЗначениеПлощадей" я выбираю текущую строку
        И в таблице "ЗначениеПлощадей" из выпадающего списка "Вид площади" я выбираю по строке 'Площадь мест общего пользования'
        И в таблице "ЗначениеПлощадей" я активизирую поле "Значение"
        И в таблице "ЗначениеПлощадей" в поле 'Значение' я ввожу текст '300,00000'
        И в таблице "ЗначениеПлощадей" я завершаю редактирование строки
        И я перехожу к закладке "Виды благоустройства, тарифные категории"
        И в таблице "ВидыБлагоустройстваТарифныеКатегории" я активизирую поле "Тарифная категория"
        И в таблице "ВидыБлагоустройстваТарифныеКатегории" я выбираю текущую строку
        И в таблице "ВидыБлагоустройстваТарифныеКатегории" из выпадающего списка "Тарифная категория" я выбираю по строке 'мкд благоустроенное'
        И в таблице "ВидыБлагоустройстваТарифныеКатегории" я завершаю редактирование строки
    И я провожу документ
        И я нажимаю на кнопку 'Провести и закрыть'
        И я жду закрытия окна 'Открытие МКД: Операции с МКД (создание) *' в течение 20 секунд