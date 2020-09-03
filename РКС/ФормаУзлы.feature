#language: ru
    @tree
    Функционал: <описание фичи>
    Как <Роль>
    Я хочу <проверить форму узлов>
    Чтобы <бизнес-эффект>
    Карточка "https://trello.com/c/4L1se00P/1627"

    Контекст:
    Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий1

    Сценарий: <Форма узлы>
	    И Я открываю навигационную ссылку "e1cib/app/Обработка.энргОперацияУзламиУчета"
	    Тогда открылось окно 'Операция с точками учета'
	    И в таблице "УслугиДерево" я завершаю редактирование строки  	
	    И в таблице "УслугиДерево" я нажимаю на кнопку с именем 'УслугиДеревоДобавить'
	И я заполняю строку табличной части	
	    И из вып№адающего списка "Услуга" я выбираю по строке 'Электроэнергия'
	    И из выпадающего списка "Расположение" я выбираю по строке 'ввод'
	    И из выпадающего списка "Структура сети" я выбираю по строке 'Трансформаторная подстанция 1'
	    И я перехожу к следующему реквизиту
	    И в таблице "УслугиДерево" я перехожу к строке:
        | Поставщик         |
		| ООО "РКС-энерго"  |
	    И я перехожу к следующему реквизиту
	    И в таблице "УслугиДерево" я перехожу к строке:
        | Ед.изм. |
		| кВт.ч   |
	    И я перехожу к следующему реквизиту
	    И я перехожу к следующему реквизиту
	    И в таблице "УслугиДерево" я перехожу к строке:
        | Наименование точки |
	    | ввод_Электроэнергия|
	    И в таблице "УслугиДерево" я завершаю редактирование строки
	    И в таблице "УслугиДерево" я активизирую поле "Направление использования ТУ"
	    И в таблице "УслугиДерево" я завершаю редактирование строки
	    И в таблице "УслугиДерево" я выбираю текущую строку
	    Тогда открылось окно 'Направление использования ТУ'
    И я заполняю форму открывшегося документа  
	    И из выпадающего списка "Направление использования" я выбираю по строке 'Приготовление пищи и подогрев воды для сельскохозяйственных животных'
	    Тогда в таблице "ИзмерителиНаправлений" количество строк "равно" 3
	    И в таблице "ИзмерителиНаправлений" я перехожу к строке:
		| Измеритель |
		| Коровы     |
	    И в таблице "ИзмерителиНаправлений" я выбираю текущую строку
	    И в таблице "ИзмерителиНаправлений" в поле 'Количество' я ввожу текст '8'
	    И в таблице "ИзмерителиНаправлений" я завершаю редактирование строки
	    И я нажимаю на кнопку 'Завершить'
# Направление использования : "Выбрано"
    И я заполняю форму открывшегося документа 
	    И в таблице "УслугиДерево" я активизирую поле "Технические свойства"
	    И в таблице "УслугиДерево" я выбираю текущую строку
	    #Тогда открылось окно 'Форма технические свойства ТУ' 
	    Тогда открылось окно 'Технические свойства ТУ'
	    И я изменяю флаг 'Рассчитывать по диаметру'
	    И я изменяю флаг 'Нет возможности установки ПУ'
	    И я изменяю флаг 'Расчет только по показаниям'
	    И я изменяю флаг 'Техническая'
	    И в поле 'Диаметр сечения' я ввожу текст '1' 
	    И в таблице "Потери" я нажимаю на кнопку с именем 'ПотериДобавить'
		И из выпадающего списка "Вид потерь" я выбираю по строке 'Нагрузочные ВЛ'
	    И в таблице "Потери" я активизирую поле "Фиксированный объем потерь"
	    И в таблице "Потери" в поле 'Фиксированный объем потерь' я ввожу текст '10'
	    И в таблице "Потери" я активизирую поле "Процент потерь"
	    И в таблице "Потери" в поле 'Процент потерь' я ввожу текст '2'
	    И я нажимаю на кнопку 'Завершить'
# Технические свойства : "Выбраны"
    И я заполняю форму открывшегося документа  
 	    И в таблице "УслугиДерево" я активизирую поле "Средства измерения"
	    И в таблице "УслугиДерево" я выбираю текущую строку
	    Тогда открылось окно 'Операция с узлом учета'
	    И поле "Наименование точки" заполнено
	    И я нажимаю на гиперссылку с именем "Услуга"
	    Тогда открылось окно 'Электроэнергия (Виды услуг)'
	    И Я закрываю окно 'Электроэнергия (Виды услуг)'
	    Тогда открылось окно 'Операция с узлом учета'
	    #И поле "Услуга" заполнено 
	    И я перехожу к следующему реквизиту  
	    И из выпадающего списка "Тип узла учета" я выбираю по строке 'Косвенное подключение+VСч'
	    И я перехожу к следующему реквизиту
	    Тогда в таблице "Измерители" количество строк "равно" 3 
	    И я перехожу к следующему реквизиту 
	    И в поле 'Коэффициент ПУ' я ввожу текст '2'
	    И в таблице "Измерители" я перехожу к строке:
		| Вспомогательное | Расположение измерителя | Регистрирует объем | Вид измерителя|
		| Нет             | ввод                    | Да                 | Счетчик       |
	    И в таблице "Измерители" я выбираю текущую строку
	    И в таблице "Измерители" я активизирую поле "Заводской номер"
	    И в таблице "Измерители" в поле 'Заводской номер' я ввожу текст '542'
	    И в таблице "Измерители" я активизирую поле "Тип прибора учета"
	    И в таблице "Измерители" из выпадающего списка "Тип прибора учета" я выбираю по строке 'Вектор-3  ART-03 PND/5(10)/3*230/400'
	    И в таблице "Измерители" я активизирую поле "Дата выпуска"
	    И в таблице "Измерители" в поле 'Дата выпуска' я ввожу текст '01.01.2020'
	    И в таблице "Измерители" я активизирую поле "Дата поверки"
	    И в таблице "Измерители" в поле 'Дата поверки' я ввожу текст '01.01.2025'
	    И в таблице "Измерители" я активизирую поле "Система учета электроэнергии"
	    И в таблице "Измерители" из выпадающего списка 'Система учета электроэнергии' я выбираю по строке 'АСКУЭ'
	    И в таблице "Измерители" я активизирую поле "Дата интеграции с системой"
	    И в таблице "Измерители" в поле 'Дата интеграции с системой' я ввожу текст '01.01.2020'
	    И в таблице "Измерители" я активизирую поле "Код системы"
	    И в таблице "Измерители" в поле 'Код системы' я ввожу текст '05'
	    И в таблице "Измерители" я активизирую поле "Собственник системы"
	    И в таблице "Измерители" из выпадающего списка 'Собственник системы' я выбираю по строке 'ООО "РКС-энерго"'
	    И в таблице "Измерители" я активизирую поле "Тип прибора учета"
	    И в таблице "НомераПломб" я нажимаю на кнопку с именем 'НомераПломбДобавить'
	    И в таблице "НомераПломб" в поле 'Номер пломбы' я ввожу текст '6565'
	    И в таблице "НомераПломб" я активизирую поле "Дата установки пломбы"
	    И в таблице "НомераПломб" в поле 'Дата установки пломбы' я ввожу текст '02.01.2020'
	    И в таблице "НомераПломб" я завершаю редактирование строки
	    И в таблице "Измерители" я перехожу к строке:
		| Вспомогательное | Расположение измерителя | Регистрирует объем | Вид измерителя|
		| Да              | ввод                    | Нет                | ТТ            |
	    И в таблице "Измерители" я выбираю текущую строку
	    И в таблице "Измерители" я активизирую поле "Заводской номер"
	    И в таблице "Измерители" в поле 'Заводской номер' я ввожу текст '741'
	    И в таблице "Измерители" я активизирую поле "Тип прибора учета"
	    И в таблице "Измерители" из выпадающего списка "Тип прибора учета" я выбираю по строке 'ЛЕ 111.1.К/5(60)/220'
	    И в таблице "Измерители" я активизирую поле "Дата выпуска"
	    И в таблице "Измерители" в поле 'Дата выпуска' я ввожу текст '01.01.2020'
	    И в таблице "Измерители" я активизирую поле "Дата поверки"
	    И в таблице "Измерители" в поле 'Дата поверки' я ввожу текст '01.01.2025'
	    И в таблице "Измерители" я активизирую поле "Тип прибора учета"
	    Тогда в таблице "НомераПломб" количество строк "равно" 0
	    И в таблице "НомераПломб" я нажимаю на кнопку с именем 'НомераПломбДобавить'
	    И в таблице "НомераПломб" в поле 'Номер пломбы' я ввожу текст '41414'
	    И в таблице "НомераПломб" я активизирую поле "Дата установки пломбы"
	    И в таблице "НомераПломб" в поле 'Дата установки пломбы' я ввожу текст '04.01.2020'
	    И в таблице "НомераПломб" я завершаю редактирование строки  
	    И в таблице "Измерители" я перехожу к строке:
		| Вспомогательное | Расположение измерителя | Регистрирует объем | Вид измерителя|
		| Да              | ввод                    | Нет                | ТН            |
	    И в таблице "Измерители" я выбираю текущую строку
	    И в таблице "Измерители" я активизирую поле "Заводской номер"
	    И в таблице "Измерители" в поле 'Заводской номер' я ввожу текст '521'
	    И в таблице "Измерители" я активизирую поле "Тип прибора учета"
	    И в таблице "Измерители" из выпадающего списка "Тип прибора учета" я выбираю по строке 'Меркурий 201/5(60)/220'
	    И в таблице "Измерители" я активизирую поле "Дата выпуска"
	    И в таблице "Измерители" в поле 'Дата выпуска' я ввожу текст '01.01.2020'
	    И в таблице "Измерители" я активизирую поле "Дата поверки"
	    И в таблице "Измерители" в поле 'Дата поверки' я ввожу текст '01.01.2025'
	    И в таблице "Измерители" я активизирую поле "Тип прибора учета"
	    Тогда в таблице "НомераПломб" количество строк "равно" 0
	    И в таблице "НомераПломб" я нажимаю на кнопку с именем 'НомераПломбДобавить'
	    И в таблице "НомераПломб" в поле 'Номер пломбы' я ввожу текст '51515'
	    И в таблице "НомераПломб" я активизирую поле "Дата установки пломбы"
	    И в таблице "НомераПломб" в поле 'Дата установки пломбы' я ввожу текст '03.01.2020'
	    И в таблице "НомераПломб" я завершаю редактирование строки
	    #И в таблице "Измерители" я перехожу к строке:
		#| Вспомогательное | Расположение измерителя | Регистрирует объем | Вид измерителя|
		#| Нет             | ввод                    | Да                 | Счетчик       |
	    #И элемент формы "Текущие показания" отсутствует на форме
	    И в таблице "Шкалы" из выпадающего списка "Вид дифференцированности" я выбираю по строке 'Двухтарифный'
	    Тогда в таблице "ПоказанияПриборовУчета" количество строк "равно" 2
	    И я нажимаю на кнопку 'Завершить'
	    И в таблице "Измерители" поле "Средства измерения" имеет значение "Заполнено"


