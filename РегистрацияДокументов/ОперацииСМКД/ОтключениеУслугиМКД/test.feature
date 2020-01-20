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
        И я загружаю макет "РегистрацияДокументов\ОперацииСМКД\ОтключениеУслугиМКД\ИсходныеДанные.mxl"
    И я создаю новый документ
        И В командном интерфейсе я выбираю 'Работа с МКД' 'Операции с услугами МКД'
        Тогда открылось окно 'Операции с услугами МКД'
        И в таблице "Список" я нажимаю на кнопку с именем 'СписокСоздать'
        Тогда открылось окно 'Выбор вида операции'
        И в таблице "СписокОпераций" я перехожу к строке:
            | Значение                                |
            | Отключение услуги многоквартирному дому |
        И в таблице "СписокОпераций" я выбираю текущую строку
        Тогда открылось окно 'Отключение услуг: Операции с услугами МКД (создание)'
    И я заполняю форму открывшегося документа     
        И из выпадающего списка "МКД" я выбираю точное значение 'Кемерово г, Авроры ул, Дом 14'
        И в таблице "ТочкиУчетаЕстьШкалыНетТарифныхЗон" я перехожу к строке:
        |Точка учета                     |Услуга                   |Ед.изм. |Прибор учета |Вид канальности    |
        |'подвал_Холодное водоснабжение' |'Холодное водоснабжение' |'м3'    |'33333'      |'Одноканальный ХВ' |
        И в таблице "ШкалыПриборовУчетаЕстьШкалыНетТарифныхЗон" я перехожу к строке:
        |Шкала      |Ед. изм. |Дата последних показаний |
        |'Основная' |'м3'     |'31.08.2019'             |
        И в таблице "ШкалыПриборовУчетаЕстьШкалыНетТарифныхЗон" текущая строка равна:
        |Предыдущие показания|
        |'135,0000'          |
        И в таблице "ШкалыПриборовУчетаЕстьШкалыНетТарифныхЗон" в поле 'Текущие показания' я ввожу текст '150,0000'
    И я провожу документ 
        И я нажимаю на кнопку 'Провести и закрыть'
        И я жду закрытия окна 'Подключение/отключение услуг (создание)' в течение 20 секунд
    И я выполняю очистку после теста 
