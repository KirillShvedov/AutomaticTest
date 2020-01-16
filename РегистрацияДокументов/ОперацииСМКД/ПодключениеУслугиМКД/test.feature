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
        И я загружаю макет "РегистрацияДокументов\ОперацииСМКД\ПодключениеУслугиМКД\ИсходныеДанные.mxl"
        И я перепровожу загруженные данные
	И В командном интерфейсе я выбираю 'Работа с МКД' 'Операции с услугами МКД'
	Тогда открылось окно 'Операции с услугами МКД'
	И в таблице "Список" я нажимаю на кнопку с именем 'СписокСоздать'
	Тогда открылось окно 'Выбор вида операции'
	И в таблице "СписокОпераций" я выбираю текущую строку
	Тогда открылось окно 'Подключение услуг: Операции с услугами МКД (создание)'
	И из выпадающего списка "МКД" я выбираю точное значение 'Кемерово г, Авроры ул, Дом 14'
	Тогда открылось окно 'Подключение услуг: Операции с услугами МКД (создание) *'
	И в таблице "ТочкиУчета" я нажимаю на кнопку с именем 'ТочкиУчетаДобавить'
	И в таблице "ТочкиУчета" из выпадающего списка с именем "ТочкиУчетаУслуга" я выбираю точное значение 'Отопление'
	И я перехожу к следующему реквизиту
	И в таблице "ТочкиУчета" из выпадающего списка "Поставщик" я выбираю точное значение 'ОАО СКЭК'
	И я перехожу к следующему реквизиту
	И в таблице "ТочкиУчета" из выпадающего списка "Распределять" я выбираю точное значение 'Да'
	И я перехожу к следующему реквизиту
	И в таблице "ТочкиУчета" я активизирую поле "Расположение"
	И в таблице "ТочкиУчета" я нажимаю кнопку выбора у реквизита "Расположение"
	Тогда открылось окно 'Места расположения точек учета'
	И в таблице "Список" я перехожу к строке:
		| Код       | Наименование |
		| 000000001 | подвал       |
	И в таблице "Список" я выбираю текущую строку
	Тогда открылось окно 'Подключение услуг: Операции с услугами МКД (создание) *'
	И в таблице "ТочкиУчета" я завершаю редактирование строки
	И в таблице "ТочкиУчета" я активизирую поле "Тип узла учета"
	И в таблице "ТочкиУчета" я выбираю текущую строку
	И в таблице "ТочкиУчета" из выпадающего списка "Тип узла учета" я выбираю точное значение 'УУ1'
	И в таблице "ТочкиУчета" я завершаю редактирование строки
	И я перехожу к закладке "Виды благоустройства, тарифные категории"
	И в таблице "ВидыБлагоустройстваТарифныеКатегории5" я активизирую поле "Тарифная категория"
	И в таблице "ВидыБлагоустройстваТарифныеКатегории5" я выбираю текущую строку
	И в таблице "ВидыБлагоустройстваТарифныеКатегории5" из выпадающего списка "Тарифная категория" я выбираю точное значение 'мкд благоустроенное'
	И в таблице "ВидыБлагоустройстваТарифныеКатегории5" я завершаю редактирование строки
	И я нажимаю на кнопку 'Провести и закрыть'
	И я жду закрытия окна 'Подключение услуг: Операции с услугами МКД (создание) *' в течение 20 секунд
	