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
            И я загружаю макет "ОТЭК\РегистрацияДокументов\РаботаСМКД\ИзменениеФормыУправленияМКД\ИзменениеФормыУправленияМКД"
    И я создаю новый документ         
        И В командном интерфейсе я выбираю 'Работа с МКД' 'Изменение формы управления МКД'
        Тогда открылось окно 'Изменение формы управления МКД'
        И я нажимаю на кнопку с именем 'ФормаСоздать'
        Тогда открылось окно 'Изменение формы управления МКД (создание)'
    И я заполняю форму открывшегося документа    
        И в поле 'Дата' я ввожу текст '30.01.2020  0:00:00'
        И из выпадающего списка "МКД" я выбираю точное значение 'Глазов г., Кирова ул, Дом № 99А'
        Тогда открылось окно 'Изменение формы управления МКД (создание) *'
        И из выпадающего списка "Форма управления" я выбираю точное значение 'Товарищество собственников жилья'
        И из выпадающего списка "УК" я выбираю точное значение 'ИП Макшанцев'
    И я провожу документ      
        И я нажимаю на кнопку 'Провести и закрыть'
        И я жду закрытия окна 'Изменение формы управления МКД (создание) *' в течение 20 секунд
