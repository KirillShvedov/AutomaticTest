#language: ru
    @tree
    @card 'https://trello.com/c/TGsTqrhz'
    Функционал: <описание фичи>
    Как <Роль>
    Я хочу <описание функционала>
    Чтобы <бизнес-эффект>

    Контекст:
    Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

    Сценарий: <РасчетПо_1ЦК>
    И я перепровожу загруженные данные
        И В командном интерфейсе я выбираю 'Юридические лица' 'Регистрация характеристик договора'
        Тогда открылось окно 'Регистрация характеристик договора'
        И в таблице "Список" я активизирую поле "Договор"
        И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюНайти' на элементе формы с именем "Список"
        Тогда открылось окно 'Найти'
        И из выпадающего списка "&Что искать" я выбираю по строке 'Договор № 01010101 от 01.07.2021 0:00:00'
        И я нажимаю на кнопку '&Найти'
        И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюУстановитьИнтервал' на элементе формы с именем "Список"
        Тогда открылось окно 'Выберите период'
        И в поле 'DateBegin' я ввожу текст '01.07.2021'
        И в поле 'DateEnd' я ввожу текст '02.07.2021'
        И я перехожу к следующему реквизиту
        И я нажимаю на кнопку 'Выбрать'
        И в таблице 'Список' я выделяю все строки
        И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюПровести' на элементе формы с именем "Список"
        И В командном интерфейсе я выбираю 'Юридические лица' 'Регистрация показаний юр. лиц'
        Тогда открылось окно 'Регистрация показаний юр. лиц'
        И в таблице "Список" я активизирую поле с именем "Примечание"
        И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюНайти' на элементе формы с именем "Список"
        Тогда открылось окно 'Найти'
        И в поле '&Что искать' я ввожу текст 'ПИМИ р.2 Энергоснабжаемый объект №2 (Головной)'
        И я нажимаю на кнопку '&Найти'
        Тогда открылось окно 'Регистрация показаний юр. лиц'
        И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюУстановитьИнтервал' на элементе формы с именем "Список"
        Тогда открылось окно 'Выберите период'
        И в поле 'DateBegin' я ввожу текст '01.07.2021'
        И в поле 'DateEnd' я ввожу текст '31.07.2021'
        И я перехожу к следующему реквизиту
        И я нажимаю на кнопку 'Выбрать'
        И в таблице 'Список' я выделяю все строки
        И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюПровести' на элементе формы с именем "Список"
        И Я открываю навигационную ссылку "e1cib/list/Документ.бестИзменитьЗначениеСредневзвешеннойНерегулируемойЦены"
        Тогда открылось окно 'Изменение значения средневзвешенной нерегулируемой цены'
        И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюНайти' на элементе формы с именем "Список"
        Тогда открылось окно 'Найти'
        И из выпадающего списка "&Где искать" я выбираю точное значение 'Период начисления'
        И я нажимаю кнопку выбора у поля "&Что искать"
        И в поле '&Что искать' я ввожу текст '01.07.2021'
        И я нажимаю на кнопку '&Найти'
        И в таблице 'Список' я выделяю все строки
        И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюПровести' на элементе формы с именем "Список"
        И В командном интерфейсе я выбираю 'Расчет начислений' 'Начисление электроэнергии ЮЛ'
        Тогда открылось окно 'Начисление электроэнергии ЮЛ'
        И в таблице 'Список' я активизирую поле "МКД"
        И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюНайти' на элементе формы с именем "Список"
        Тогда открылось окно 'Найти'
        И в поле '&Что искать' я ввожу текст ''
        И я нажимаю на кнопку '&Найти'
        И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюУстановитьИнтервал' на элементе формы с именем "Список"
        Тогда открылось окно 'Выберите период'
        И в поле 'DateBegin' я ввожу текст '01.07.2021'
        И в поле 'DateEnd' я ввожу текст '31.07.2021'
        И я перехожу к следующему реквизиту
        И я нажимаю на кнопку 'Выбрать'
        И в таблице 'Список' я выделяю все строки
        И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюУстановитьПометкуУдаления' на элементе формы с именем "Список"
        Тогда открылось окно '1С:Предприятие'
        И я нажимаю на кнопку 'Да'
        И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюУстановитьПометкуУдаления' на элементе формы с именем "Список"
        Тогда открылось окно '1С:Предприятие'
        И я нажимаю на кнопку 'Да'
    И Я запускаю выполнение начислений по Отдельностоящим зданиям по организации 'ООО РКС-Энерго' и району 'Волховский район' с 'Июль' '2021' по 'Июль 2021'
    И Я проверяю полученные результаты
        И Я открываю навигационную ссылку "e1cib/list/РегистрНакопления.бестОбъемНачисленийЭлектроэнергии"
        Тогда открылось окно 'Объем начислений электроэнергии'
        И в таблице "Список" я активизирую поле "Объект расчета"
        И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюНайти' на элементе формы с именем "Список"
        Тогда открылось окно 'Найти'
        И из выпадающего списка "&Что искать" я выбираю по строке 'Энергоснабжаемый объект №2 (Головной)'
        И я нажимаю на кнопку '&Найти'
        Тогда открылось окно 'Объем начислений электроэнергии'
        И в таблице "Список" я активизирую поле "Услуга"
        И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюНайти' на элементе формы с именем "Список"
        Тогда открылось окно 'Найти'
        И из выпадающего списка "&Что искать" я выбираю по строке 'Электроэнергия'
        И я перехожу к следующему реквизиту
        И я нажимаю на кнопку '&Найти'
        И я нажимаю на кнопку с именем 'ФормаУстановитьИнтервал'
        Тогда открылось окно 'Выберите период'
        И в поле 'DateBegin' я ввожу текст '01.07.2021'
        И в поле 'DateEnd' я ввожу текст '31.07.2021'
        И я перехожу к следующему реквизиту
        И я нажимаю на кнопку 'Выбрать'
        И в таблице "Список" я перехожу к строке:
        |Период                |Способ начисления   |Способ начисления  |Вид начисления     |Период начисления  |Период расчета     |Объект расчета                             |Точка учета            |Услуга             |Договор                                        |Прибор учета   |Объем услуги   |Сумма средневзвешенная |Сумма за сбытовую надбавку |Сумма за услуги по передачи    |Сумма за иные услуги   |Сумма средневзвешенная НДС |Сумма за сбытовую надбавку НДС |Сумма за услуги по передачи НДС    |Сумма за иные услуги НДС   |Начало периода         |Конец периода          |
        |'31.07.2021 23:59:59' |'По приборам'       |'По приборам'      |'Начисление'       |'01.07.2021'       |'01.07.2021'       |'Энергоснабжаемый объект №2 (Головной)'    |'ТУ1_Электроэнергия'   |'Электроэнергия'   |'Договор № 01010101 от 01.07.2021 0:00:00'     |'681518'       |'24,00000'     |'76,83'                |'2,74'                     |'105,90'                       |'0,14'                 |'12,80'                    |'0,46'                         |'17,65'                            |'0,02'                     |'01.07.2021 0:00:00'   |'01.07.2021 0:00:00'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Способ начисления   |Способ начисления  |Вид начисления     |Период начисления  |Период расчета     |Объект расчета                             |Точка учета            |Услуга             |Договор                                        |Прибор учета   |Объем услуги       |Сумма средневзвешенная |Сумма за сбытовую надбавку |Сумма за услуги по передачи    |Сумма за иные услуги   |Сумма средневзвешенная НДС |Сумма за сбытовую надбавку НДС |Сумма за услуги по передачи НДС    |Сумма за иные услуги НДС   |Начало периода         |Конец периода          |
        |'31.07.2021 23:59:59' |'По приборам'       |'По приборам'      |'Начисление'       |'01.07.2021'       |'01.07.2021'       |'Энергоснабжаемый объект №2 (Головной)'    |'ТУ2_Электроэнергия'   |'Электроэнергия'   |'Договор № 01010101 от 01.07.2021 0:00:00'     |'751205'       |'1 310 048,00000'  |'4 193 699,46'         |'149 329,75'               |'5 780 377,19'                 |'7 372,95'             |'698 949,91'               |'24 888,29'                    |'963 396,20'                       |'1 228,83'                 |'01.07.2021 0:00:00'   |'01.07.2021 0:00:00'   |
            
