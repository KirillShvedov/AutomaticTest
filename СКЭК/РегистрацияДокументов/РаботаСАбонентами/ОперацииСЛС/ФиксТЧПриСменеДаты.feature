#language: ru
@tree
@card 'https://trello.com/c/DFJcAFkN'
Функционал: <описание фичи>
Как <Роль>
Я хочу <описание функционала>
Чтобы <бизнес-эффект>

Контекст:
    Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: <ФиксТЧПриСменеДаты>
    И я подготавливаю тестовые данные
        И я загружаю макет "ФиксТЧПриСменеДаты.mxl"
    И я перепровожу загруженные документы
        И В командном интерфейсе я выбираю 'Работа с абонентами' 'Открытие/закрытие лс физического лица'
        Тогда открылось окно 'Открытие/закрытие лс физического лица'
        И в таблице "Список" я перехожу к строке:
        |Дата                  |Дата факт события |Номер         |Вид операции              |Строение                                |Абонент                       |Лицевой счет |Организация  |Территориальный орган         |
        |'19.06.2020 13:28:24' |'01.06.2020'      |'00000000135' |'Открытие лицевого счета' |'Кемерово г, Барабинская ул, Дом № 17А' |'Кобзев Александр Алексеевич' |'0200000048' |'ОАО "СКЭК"' |'Кемеровский городской округ' |
        И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюПровести' на элементе формы с именем "Список"
    И Я запускаю выполнение начислений по организации 'ОАО "СКЭК"' и району 'Кемеровский городской округ' и МКД '' с 'Июнь' '2020' по 'Июнь 2020'
    И я создаю документ
        И В командном интерфейсе я выбираю 'Работа с абонентами' 'Открытие/закрытие лс физического лица'
        Тогда открылось окно 'Открытие/закрытие лс физического лица'
        И в таблице "Список" я активизирую поле "Номер"
        И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюНайти' на элементе формы с именем "Список"
        Тогда открылось окно 'Найти'
        И в поле '&Что искать' я ввожу текст '00000000178'
        И я нажимаю на кнопку '&Найти'
        Тогда открылось окно 'Открытие/закрытие лс физического лица'
        И в таблице "Список" я перехожу к строке:
        |Дата                  |Номер         |Вид операции              |Строение                                |Абонент                       |Лицевой счет |Организация  |Территориальный орган         |
        |'31.07.2020 15:38:35' |'00000000178' |'Закрытие лицевого счета' |'Кемерово г, Барабинская ул, Дом № 17А' |'Кобзев Александр Алексеевич' |'0200000048' |'ОАО "СКЭК"' |'Кемеровский городской округ' |
        И в таблице "Список" я выбираю текущую строку
        Тогда открылось окно 'Закрытие лицевого счета №00000000178 от *'
        И в поле 'Дата' я ввожу текст '30.07.2020  0:00:00'
        И в таблице "ТочкиУчетаЕстьШкалыНетТарифныхЗон" я перехожу к строке:
        |N   |Точка учета                     |Услуга                   |Ед.изм. |Прибор учета |Вид канальности |
        |'1' |'авто'                          |'Холодное водоснабжение' |'м3'    |''           |''              |
        И в таблице "ТочкиУчетаЕстьШкалыНетТарифныхЗон" я перехожу к строке:
        |N   |Точка учета                     |Услуга                   |Ед.изм. |Прибор учета |Вид канальности |
        |'2' |'огород_Холодное водоснабжение' |'Холодное водоснабжение' |'м3'    |''           |''              |
        И в таблице "ТочкиУчетаЕстьШкалыНетТарифныхЗон" я перехожу к строке:
        |N   |Точка учета                     |Услуга                   |Ед.изм. |Прибор учета |Вид канальности |
        |'3' |'ввод_Холодное водоснабжение'   |'Холодное водоснабжение' |'м3'    |''           |''              |
        И я нажимаю на кнопку 'Провести и закрыть'
        И я жду закрытия окна 'Закрытие лицевого счета №00000000178 от * *' в течение 20 секунд    
