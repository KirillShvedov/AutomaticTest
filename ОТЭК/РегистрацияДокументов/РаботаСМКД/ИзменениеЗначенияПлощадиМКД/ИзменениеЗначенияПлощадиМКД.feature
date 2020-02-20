#language: ru
@tree
Функционал: <описание фичи>

Как <Роль>
Я хочу <описание функционала>
Чтобы <бизнес-эффект>

Контекст:
    Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: <ИзменениеЗначенияПлощадиМКД>
    И я подготавливаю тестовые данные
            И я загружаю макет "ОТЭК\РегистрацияДокументов\РаботаСМКД\ИзменениеЗначенияПлощадиМКД\ИзменениеЗначенияПлощадиМКД"
    И я создаю новый документ         
        И В командном интерфейсе я выбираю 'Работа с МКД' 'Изменить значение площади МКД'
        Тогда открылось окно 'Изменить значение площади МКД'
        И в таблице "Список" я нажимаю на кнопку с именем 'СписокСоздать'
        Тогда открылось окно 'Изменить значение площади МКД (создание)'
    И я заполняю форму открывшегося документа    
        И в поле 'Дата' я ввожу текст '30.01.2020  0:00:00'
        И из выпадающего списка "Строение" я выбираю точное значение 'Глазов г., Кирова ул, Дом № 99А'
        И в таблице "ЗначениеПлощадей" я перехожу к строке:
        | Услуга      |
        | 'Отопление' |
        И в таблице "ЗначениеПлощадей" из выпадающего списка "Вид площади" я выбираю точное значение 'Площадь мест общего пользования'
        И в таблице "ЗначениеПлощадей" в поле 'Площадь' я ввожу текст '300,00000'
        И в таблице "ЗначениеПлощадей" я завершаю редактирование строки
    И я провожу документ     
        И я нажимаю на кнопку 'Провести и закрыть'
        И я жду закрытия окна 'Изменить значение площади МКД (создание) *' в течение 20 секунд
