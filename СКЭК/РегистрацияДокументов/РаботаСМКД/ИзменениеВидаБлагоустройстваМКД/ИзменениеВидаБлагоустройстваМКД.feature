    #language: ru
    @card "https://trello.com/c/eutvD9Di"
    @tree
    Функционал: <описание фичи>

    Как <Роль>
    Я хочу <описание функционала>
    Чтобы <бизнес-эффект>

    Контекст:
    Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

    Сценарий: <описание сценария>
    И я подготавливаю тестовые данные
        И я загружаю макет "ИзменениеВидаБлагоустройстваМКД.mxl"
    И я перепровожу загруженные данные
        И В командном интерфейсе я выбираю 'Работа с МКД' 'Операции с МКД'
        Тогда открылось окно 'Операции с МКД'
        И в таблице 'Список' я выделяю все строки
        И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюПровести' на элементе формы с именем "Список"   
    И я создаю новый документ    
        И В командном интерфейсе я выбираю 'Работа с МКД' 'Изменить вид благоустройства МКД'
        Тогда открылось окно 'Изменить вид благоустройства МКД'
        И в таблице "Список" я нажимаю на кнопку с именем 'СписокСоздать'
        Тогда открылось окно 'Изменить вид благоустройства МКД (создание)'
    И я заполняю форму открывшегося документа      
        И из выпадающего списка "МКД" я выбираю по строке 'Кемерово г, Ленина пр-кт, Дом 98А'
        Тогда открылось окно 'Изменить вид благоустройства МКД (создание) *'
        И в таблице "ВидыБлагоустройстваТарифныеКатегории" я перехожу к строке:
        | Вид благоустройства общедомовой                        | Услуга                 |
        | 'ХВ,ГВ,КАН, ванна1500, душ, раковина, мойка, унитаз +' | Холодное водоснабжение |
        И в таблице "ВидыБлагоустройстваТарифныеКатегории" я активизирую поле "Вид благоустройства общедомовой"
        И в таблице "ВидыБлагоустройстваТарифныеКатегории" я выбираю текущую строку
        И в таблице "ВидыБлагоустройстваТарифныеКатегории" из выпадающего списка "Вид благоустройства общедомовой" я выбираю по строке 'отопление, дома строительным объемом от 10000 м3 +'
        И в таблице "ВидыБлагоустройстваТарифныеКатегории" я завершаю редактирование строки
    И я провожу документ    
        И я нажимаю на кнопку 'Провести и закрыть'
        И я жду закрытия окна 'Изменить вид благоустройства МКД (создание) *' в течение 20 секунд