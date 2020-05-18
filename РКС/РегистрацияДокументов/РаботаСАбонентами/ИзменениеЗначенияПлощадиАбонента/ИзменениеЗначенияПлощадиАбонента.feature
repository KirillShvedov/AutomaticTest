#language: ru
    @tree
    Функционал: <описание фичи>

    Как <Роль>
    Я хочу <описание функционала>
    Чтобы <бизнес-эффект>

    Контекст:
    Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

    Сценарий: <ИзменениеЗначенияПлощадиАбонента>
    И я подготавливаю тестовые данные
        И я загружаю макет "ИзменениеЗначенияПлощадиАбонента.mxl"
    И я перепровожу загруженные данные
        И В командном интерфейсе я выбираю 'Работа с МКД' 'Операции с МКД'
        Тогда открылось окно 'Операции с МКД'
        И в таблице 'Список' я выделяю все строки
        И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюПровести' на элементе формы с именем "Список"
        И В командном интерфейсе я выбираю 'Работа с абонентами' 'Открытие/закрытие лс физического лица'
        Тогда открылось окно 'Открытие/закрытие лс физического лица'
        И в таблице 'Список' я выделяю все строки
        И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюПровести' на элементе формы с именем "Список"
    И я создаю новый документ
        И В командном интерфейсе я выбираю 'Работа с абонентами' 'Изменить значение площади'
        Тогда открылось окно 'Документы Установить значение площади: Изменить значение площади'
        И в таблице "Список" я нажимаю на кнопку с именем 'СписокСоздать1'
    И я заполняю форму открывшегося документа 
        Тогда открылось окно 'Установить значение площади: Изменить значение площади (создание)'
        И из выпадающего списка "Филиал" я выбираю по строке 'Волховский район'
        И из выпадающего списка "Абонент" я выбираю по строке 'Аксёнов  Александр Павлович'
        И в таблице "Площади" я перехожу к строке:
        | N | Вид площади             | 'Значение, м2' |
        | 1 | Общая площадь помещения | '90,00'        |
        И в таблице "Площади" я выбираю текущую строку
        И в таблице "Площади" в поле 'Значение, м2' я ввожу текст '88,0000'
        И в таблице "Площади" я перехожу к строке:
        | N | Вид площади             | 'Значение, м2' |
        | 2 | Жилая площадь помещения | '50,00'        |
        И в таблице "Площади" я выбираю текущую строку
        И в таблице "Площади" в поле 'Значение, м2' я ввожу текст '53,0000'
        И я нажимаю на кнопку 'Провести и закрыть'
        И я жду закрытия окна 'Установить значение площади: Изменить значение площади (создание) *' в течение 20 секунд
