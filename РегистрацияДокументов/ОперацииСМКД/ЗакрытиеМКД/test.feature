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
        И я загружаю макет "РегистрацияДокументов\ОперацииСМКД\ЗакрытиеМКД\ИсходныеДанные.mxl"
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
        И из выпадающего списка "Территориальный орган" я выбираю по строке 'Кемеровский городской округ'
        И я перехожу к следующему реквизиту
        Тогда открылось окно 'Закрытие МКД: Операции с МКД (создание) *'
        И из выпадающего списка "МКД" я выбираю по строке 'Кемерово г, Ленина пр-кт, Дом 98А'
        И в таблице "ТочкиУчетаЕстьШкалыНетТарифныхЗон" я перехожу к строке:
        |N   |Точка учета                                |Услуга                   |Ед.изм. |Прибор учета |Вид канальности    |
        |'1' |'служебная комната_Холодное водоснабжение' |'Холодное водоснабжение' |'м3'    |'123456'     |'Одноканальный ХВ' |
        И в таблице "ШкалыПриборовУчетаЕстьШкалыНетТарифныхЗон" я перехожу к строке:
        |Шкала      |Ед. изм. |Дата предыдущих показаний |
        |'Основная' |'м3'     |'29.08.2019'              |
        И в таблице "ШкалыПриборовУчетаЕстьШкалыНетТарифныхЗон" текущая строка равна:
        |Предыдущие показания|
        |'40,0000'           |
        И в таблице "ШкалыПриборовУчетаЕстьШкалыНетТарифныхЗон" в поле 'Текущие показания' я ввожу текст '42,0000'
    И я провожу документ 
        И я нажимаю на кнопку 'Провести и закрыть'
        И я жду закрытия окна 'Закрытие МКД: Операции с МКД (создание) *' в течение 20 секунд
    И я выполняю очистку после теста    