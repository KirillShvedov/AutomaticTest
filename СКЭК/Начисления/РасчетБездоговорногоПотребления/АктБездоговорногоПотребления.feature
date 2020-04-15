    #language: ru
    @tree
    Функционал: <описание фичи>
    "https://trello.com/c/aNkXUSG8"
    Как <Роль>
    Я хочу <проверить расчет расчет по показаниям>
    Чтобы <бизнес-эффект>

    Контекст:
    Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

    Сценарий: <АктБездоговорногоПотребления>
    И я подготавливаю тестовые данные
        И я загружаю макет "АктБездоговорногоПотребления.mxl"
    И я перепровожу загруженные данные
        И В командном интерфейсе я выбираю 'Администрирование' 'Ввод начальных остатков'
        Тогда открылось окно 'Ввод начальных остатков'
        И в таблице 'Список' я выделяю все строки
        И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюПровести' на элементе формы с именем "Список"
        И В командном интерфейсе я выбираю 'Работа с абонентами' 'Регистрация показаний абонента'
        Тогда открылось окно 'Регистрация показаний абонента'
        И в таблице 'Список' я выделяю все строки
        И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюПровести' на элементе формы с именем "Список"
        И В командном интерфейсе я выбираю 'Работа с абонентами' 'Акт бездоговорного потребления'
        Тогда открылось окно 'Акт бездоговорного потребления'
        И в таблице 'Список' я выделяю все строки
        И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюПровести' на элементе формы с именем "Список"
    И Я запускаю выполнение начислений по организации 'ОАО "СКЭК"' и району 'Кемеровский городской округ' и МКД '' с 'Июль' '2019' по 'Декабрь 2019'
    И я проверяю полученные результаты
        И Я открываю навигационную ссылку "e1cib/list/РегистрНакопления.энргОбъемНачислений"
        Тогда открылось окно 'Объем начислений'
        И я нажимаю на кнопку с именем 'ФормаУстановитьИнтервал'
        Тогда открылось окно 'Выберите период'
        И в поле 'DateBegin' я ввожу текст '01.10.2019'
        И в поле 'DateEnd' я ввожу текст '31.10.2019'
        И я перехожу к следующему реквизиту
        И я нажимаю на кнопку 'Выбрать'
        Тогда в таблице "Список" количество строк "равно" 3
        И в таблице "Список" я перехожу к строке:
        |Период                |Регистратор                                                      |Абонент                          |Услуга                   |Точка учета                   |Вид начисления |Способ начисления           |Направление использования ТУ |
        |'01.10.2019 0:00:00'  |'Акт бездоговорного потребления 000000001 от 01.10.2019 0:00:00' |'Чумакова Наталья Александровна' |'Холодное водоснабжение' |''                            |'Перерасчет'   |'Бездоговорное потребление' |'Основное направление'       |
        И в таблице "Список" текущая строка равна:
        |Сумма    |Объем услуги |Объем потребленный |
        |'37,93'  |'0,908759'   |'0,908759'         |
        И в таблице "Список" я перехожу к строке:
        |Период                |Регистратор                                                      |Абонент                          |Услуга                   |Точка учета                   |Вид начисления |Способ начисления           |Направление использования ТУ |
        |'31.10.2019 23:59:59' |'Начисление 00000000019 от 31.10.2019 23:59:58'                  |'Чумакова Наталья Александровна' |'Холодное водоснабжение' |'ввод_Холодное водоснабжение' |'Начисление'   |'Расчетный'                 |'Расчетная'                  |
        И в таблице "Список" текущая строка равна:
        |Сумма    |Объем услуги |Объем потребленный |
        |'349,78' |'8,380000'   |''                 |
        И в таблице "Список" я перехожу к строке:
        |Период                |Регистратор                                                      |Абонент                          |Услуга                   |Точка учета                   |Вид начисления |Способ начисления           |Направление использования ТУ |
        |'31.10.2019 23:59:59' |'Начисление 00000000019 от 31.10.2019 23:59:58'                  |'Чумакова Наталья Александровна' |'Холодное водоснабжение' |'ввод_Холодное водоснабжение' |'Начисление'   |'По нормативу'              |'Основное направление'       |
        И в таблице "Список" текущая строка равна:
        |Сумма    |Объем услуги |Объем потребленный |
        |''       |''           |'8,380000'         |
