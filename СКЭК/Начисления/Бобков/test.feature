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
		И я загружаю макет "СКЭК\Начисления\Бобков\ИсходныеДанные.mxl"
		И я перепровожу загруженные данные
			И В командном интерфейсе я выбираю 'Работа с абонентами' 'Открытие/закрытие лс физического лица'
			Тогда открылось окно 'Открытие/закрытие лс физического лица'
			И в таблице 'Список' я выделяю все строки
			И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюПровести' на элементе формы с именем "Список"
			И В командном интерфейсе я выбираю 'Работа с абонентами' 'Регистрация показаний абонента'
			Тогда открылось окно 'Регистрация показаний абонента'
			И в таблице 'Список' я выделяю все строки
			И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюПровести' на элементе формы с именем "Список"
	И я выполняю начисления с Июль 2019 по Сентябрь 2019
		И В командном интерфейсе я выбираю 'Расчет начислений' 'Выполнение начислений'
		Тогда открылось окно 'Выполнение начислений: Выполнение начислений'
		И я нажимаю кнопку выбора у поля "Месяц с"
		Тогда открылось окно 'Выбор периода'
		И в поле 'ВыбираемыйПериод' я ввожу текст '2019'
		И я перехожу к следующему реквизиту
		И я нажимаю на кнопку 'Июль'
		И я нажимаю на кнопку 'Выбрать'
		Тогда открылось окно 'Выполнение начислений: Выполнение начислений'
		И из выпадающего списка "Организация" я выбираю по строке 'ОАО "СКЭК"'
		И из выпадающего списка "Территориальный орган" я выбираю по строке 'Березовский городской округ'
		И я изменяю флаг 'ОтборПоДому'
		И Я запускаю выполнение начислений и проверяю что все выполнилось без ошибок
		И в поле "Месяц с" я увеличиваю значение
		И Я запускаю выполнение начислений и проверяю что все выполнилось без ошибок
		И в поле "Месяц с" я увеличиваю значение
		И Я запускаю выполнение начислений и проверяю что все выполнилось без ошибок		
	И я проверяю полученные результаты
		И Я открываю навигационную ссылку "e1cib/list/РегистрНакопления.энргОбъемНачислений"
		Тогда открылось окно 'Объем начислений'
		И я нажимаю на кнопку с именем 'ФормаУстановитьИнтервал'
		Тогда открылось окно 'Выберите период'
		И в поле 'DateBegin' я ввожу текст '01.01.2019'
		И в поле 'DateEnd' я ввожу текст '31.12.2019'
		И я перехожу к следующему реквизиту
		И я нажимаю на кнопку 'Выбрать'
		И в таблице "Список" я перехожу к строке:
		| Период       			| Организация | Филиал                      | Строение                               | Абонент                          | Услуга    | Способ начисления |
		| 30.09.2019 23:59:59 	| ОАО "СКЭК"  | Березовский городской округ | Березовский г., Барзасская ул, Дом 25  | Бобков  Владимир  Александрович 	| Отопление | По приборам       |
		И в таблице "Список" текущая строка равна:
		| Значение тарифа | Поставщик 	| Объем потребленный |
		| '1 729,660'      | ОАО СКЭК    | '1,434000'    |
		И в таблице "Список" я перехожу к строке:
		| Период       			| Организация 	| Филиал                      | Строение                              | Абонент                         | Услуга    | Способ начисления 	| Начало периода | Конец периода 	|
		| 30.09.2019 23:59:59 	| ОАО "СКЭК"    | Березовский городской округ | Березовский г., Барзасская ул, Дом 25 | Бобков  Владимир  Александрович | Отопление | Среднее по нормативу  | '01.09.2019'	 | '15.09.2019' 	|
		И в таблице "Список" текущая строка равна:
		| Значение тарифа | Поставщик 	| Объем услуги |
		| '1 729,660'      | ОАО СКЭК    | '1,763402'  |
		И в таблице "Список" я перехожу к строке:
		| Период       			| Организация 	| Филиал                      | Строение                              | Абонент                         | Услуга    | Способ начисления 	| Начало периода | Конец периода 	|
		| 30.09.2019 23:59:59 	| ОАО "СКЭК"    | Березовский городской округ | Березовский г., Барзасская ул, Дом 25 | Бобков  Владимир  Александрович | Отопление | Среднее по нормативу  | '15.09.2019'	 | '01.10.2019' 	|
		И в таблице "Список" текущая строка равна:
		| Значение тарифа | Поставщик 	| Объем услуги |
		| '1 729,660'      | ОАО СКЭК    | '2,015316'  |
	И я выполняю очистку после теста 
		И я закрываю сеанс TESTCLIENT
		И я выполняю код встроенного языка на сервере "УстановитьМонопольныйРежим(Истина)"
		И я выполняю код встроенного языка на сервере "УдалитьДанныеИнформационнойБазы()"
		И я выполняю код встроенного языка на сервере "УстановитьМонопольныйРежим(Ложь)"