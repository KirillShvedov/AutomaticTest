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
        И я загружаю макет "РегистрацияДокументов\ОперацииСМКД\АктВыводаПУ\ИсходныеДанные.mxl"
	И я создаю новый документ
        И В командном интерфейсе я выбираю 'Работа с МКД' 'Акт ввода/вывода/замены общедомового прибора учета'
        Тогда открылось окно 'Акт ввода/вывода/замены общедомового прибора учета'
        И в таблице "Список" я нажимаю на кнопку с именем 'СписокСоздать'
        Тогда открылось окно 'Выбор вида операции'
        И в таблице "СписокОпераций" я перехожу к строке:
            | Значение                         |
            | Вывод общедомового прибора учета |
        И в таблице "СписокОпераций" я выбираю текущую строку
        Тогда открылось окно 'Акт ввода/вывода/замены общедомового прибора учета (создание)'
    И я заполняю форму открывшегося документа    
        И из выпадающего списка "МКД" я выбираю по строке 'пгт. Промышленная, Матросова , Дом 4'
        И в таблице "ТочкиУчетаЕстьШкалыНетТарифныхЗон" я перехожу к строке:
        |N   |Точка учета        |Услуга      |Ед.изм. |Прибор учета |Вид канальности           |
        |'1' |'подвал_Отопление' |'Отопление' |'Гкал'  |'2222'       |'Отопление одноканальный' |
        И в таблице "ШкалыПриборовУчетаЕстьШкалыНетТарифныхЗон" я перехожу к строке:
        |Шкала       |Ед. изм. |Предыдущие показания |Дата предыдущих показаний |
        |'отопление' |'Гкал'   |'25,0000'            |'30.09.2019'              |
        И в таблице "ШкалыПриборовУчетаЕстьШкалыНетТарифныхЗон" в поле 'Текущие показания' я ввожу текст '45,0000'
    И я провожу документ 
        И я нажимаю на кнопку 'Провести и закрыть'
        И я жду закрытия окна 'Акт ввода/вывода/замены общедомового прибора учета (создание) *' в течение 20 секунд
    И я выполняю очистку после теста   