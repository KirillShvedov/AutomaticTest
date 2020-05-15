 #language: ru
    @tree
    Функционал: <описание фичи>

    Как <Роль>
    Я хочу <описание функционала>
    Чтобы <бизнес-эффект>

    Контекст:
    Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

    Сценарий: <Закрытие МКД>
    И я подготавливаю тестовые данные
        И я загружаю макет "ЗакрытиеМКД.mxl"
    И я перепровожу загруженные данные
        И В командном интерфейсе я выбираю 'Работа с МКД' 'Операции с МКД'
        Тогда открылось окно 'Операции с МКД'
        И в таблице 'Список' я выделяю все строки
        И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюПровести' на элементе формы с именем "Список"
    И я создаю новый документ
        И В командном интерфейсе я выбираю 'Работа с МКД' 'Операции с МКД'
        Тогда открылось окно 'Операции с МКД'
        И в таблице "Список" я нажимаю на кнопку с именем 'СписокСоздать'
        Тогда открылось окно 'Выбор вида операции'
        И в таблице "СписокОпераций" я перехожу к строке:
        | Значение                       |
        | Закрытие многоквартирного дома |
        И в таблице "СписокОпераций" я выбираю текущую строку    
    И я заполняю форму открывшегося документа    
        Тогда открылось окно 'Закрытие МКД: Операции с МКД (создание)'
        И из выпадающего списка "МКД" я выбираю по строке 'Малая Садовая улица, Дом № 1/25'
        #И я провожу документ 
        И я нажимаю на кнопку 'Провести и закрыть'
        И я жду закрытия окна 'Закрытие МКД: Операции с МКД (создание) *' в течение 20 секунд