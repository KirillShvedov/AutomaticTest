language: ru
@tree

Функционал: Проведение документа Подключение услуг
 Как <Роль>
    Я хочу <проверить корректность проведения документа Подключение услуг с учетом даты открытия МКД >
    Чтобы <при некорректно введенной дате, всплывала ошибка, дата Подключения услуг не может быть меньше даты открытия ЛС>

Контекст:
    Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: <ПодключениеУслугПроверкаПоДатеОткрытияЛС>
    И я подготавливаю тестовые данные
        И я загружаю макет "ПодключениеУслугПроверкаПоДатеОткрытияЛС.mxl"
    И я перепровожу загруженные данные
        И В командном интерфейсе я выбираю 'Работа с МКД' 'Операции с МКД'
        И в таблице 'Список' я выделяю все строки
        И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюПровести' на элементе формы с именем "Список"
        И В командном интерфейсе я выбираю 'Работа с абонентами' 'Открытие/закрытие лс физического лица'
        И в таблице 'Список' я выделяю все строки
        И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюПровести' на элементе формы с именем "Список"
        И В командном интерфейсе я выбираю 'Работа с абонентами' 'Подключение/отключение услуг'
	    Тогда открылось окно 'Подключение/отключение услуг'
	    И в таблице "Список" я перехожу к строке:
		| Абонент                      |
		| Корольков Николай Викторович |
	    И в таблице "Список" я выбираю текущую строку
	    И я нажимаю на кнопку 'Провести и закрыть'
	    Тогда открылось окно '1С:Предприятие'
	    И я нажимаю на кнопку 'OK'
