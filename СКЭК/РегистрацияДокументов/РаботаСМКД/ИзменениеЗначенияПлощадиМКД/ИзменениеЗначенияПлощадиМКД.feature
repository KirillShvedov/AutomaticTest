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
        И я загружаю макет "ИзменениеЗначенияПлощадиМКД.mxl"
    И я создаю новый документ
        И В командном интерфейсе я выбираю 'Работа с МКД' 'Изменить значение площади МКД'
        Тогда открылось окно 'Изменить значение площади МКД'
        И в таблице "Список" я нажимаю на кнопку с именем 'СписокСоздать'
        Тогда открылось окно 'Изменить значение площади МКД (создание)'
    И я заполняю форму открывшегося документа     
        И из выпадающего списка "МКД" я выбираю точное значение 'Кемерово г, Ленина пр-кт, Дом 98А'
        И в таблице "ЗначениеПлощадей" я перехожу к строке:
        |Услуга                   |Вид площади                       |
        |'Холодное водоснабжение' |'Площадь мест общего пользования' |
        И в таблице "ЗначениеПлощадей" в поле 'Площадь' я ввожу текст '400,00000'
    И я провожу документ 
        И я нажимаю на кнопку 'Провести и закрыть'
        И я жду закрытия окна 'Изменить значение площади МКД (создание) *' в течение 20 секунд