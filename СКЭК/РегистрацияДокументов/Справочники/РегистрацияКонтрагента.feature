#language: ru
@tree
@card "https://trello.com/c/som52XXa"
Функционал: <описание фичи>

Как <Роль>
Я хочу <описание функционала>
Чтобы <бизнес-эффект>

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий


Сценарий: <регистрация контрагента>

	И В командном интерфейсе я выбираю 'Администрирование' 'Контрагенты'
	Тогда открылось окно 'Контрагенты'
	И я нажимаю на кнопку с именем 'ФормаСоздать'
	Тогда открылось окно 'Контрагенты: Контрагенты (создание)'
	И в поле 'Фамилия' я ввожу текст 'Маслова'
	И я перехожу к следующему реквизиту
	Тогда открылось окно 'Контрагенты: Контрагенты (создание) *'
	И в поле 'Имя' я ввожу текст 'Наталья'
	И я перехожу к следующему реквизиту
	И в поле 'Отчество' я ввожу текст 'Петровна'
	И я нажимаю на кнопку 'Записать и закрыть'
	И я жду закрытия окна 'Контрагенты: Контрагенты (создание) *' в течение 20 секунд
