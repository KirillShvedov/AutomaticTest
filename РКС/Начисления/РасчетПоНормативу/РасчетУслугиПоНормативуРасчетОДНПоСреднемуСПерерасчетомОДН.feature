language: ru
    @tree
    Функционал: <описание фичи>
    Как <Роль>
    Я хочу <проверить расчет расчет по показаниям>
    Чтобы <бизнес-эффект>
    Карточка "https://trello.com/c/Nt2bHY4v/2070"

    Контекст:
    Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

    Сценарий: <РасчетПоНормативуСПерерасчетомОДН>
    И я подготавливаю тестовые данные
        И я загружаю макет "РасчетУслугиПоНормативуРасчетОДНПоСреднемуСПерерасчетомОДН.mxl"
    И я перепровожу загруженные данные
        И Я перепровожу все документы абонента "Андреева Анна Сергеевна"
        И В командном интерфейсе я выбираю 'Работа с МКД' 'Операции с МКД'
        Тогда открылось окно 'Операции с МКД'
        И в таблице 'Список' я выделяю все строки
        И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюПровести' на элементе формы с именем "Список"
    И Я запускаю выполнение начислений по организации 'ООО "РКС-энерго"' и району 'Волховский район' и МКД '' с 'Июнь' '2020' по 'Ноябрь 2020'
    И Я проверяю полученные результаты
        И Я открываю навигационную ссылку "e1cib/list/РегистрНакопления.энргОбъемНачислений"
        Тогда открылось окно 'Объем начислений'
        Тогда в таблице "Список" количество строк "равно" 23
        И в таблице "Список" я перехожу к строке:
        |Период                |Распределение |Абонент                   |Услуга           |Точка учета           |Вид начисления   |Способ начисления        |Тарифная зона |Значение тарифа |Начало периода |Конец периода |
        |'25.06.2020 23:59:59' |'Нет'         |'Андреева Анна Сергеевна' |'Электроэнергия' |'ввод_Электроэнергия' |'Начисление'     |'По нормативу'           |'Без ПУ'      |'4,270'         |'26.05.2020'   |'26.06.2020'  |
        И в таблице "Список" текущая строка равна:
        |Сумма         |Объем услуги |Объем потребленный |Сумма по повышенному коэффициенту |
        |'1614,06'     |'252,000000' |''                 |'538,02'                          |
        И в таблице "Список" я перехожу к строке:
        |Период                |Распределение |Абонент                   |Услуга           |Точка учета           |Вид начисления   |Способ начисления        |Тарифная зона |Значение тарифа |Начало периода |Конец периода |
        |'25.06.2020 23:59:59' |'Нет'         |'Андреева Анна Сергеевна' |'Электроэнергия' |'ввод_Электроэнергия' |'Начисление'     |'По нормативу'           |'Без ПУ'      |'4,270'         |'26.05.2020'   |'26.06.2020'  |
        И в таблице "Список" текущая строка равна:
        |Сумма         |Объем услуги |Объем потребленный |Сумма по повышенному коэффициенту |
        |''            |''           |'252,000000'       |''                                |
        И в таблице "Список" я перехожу к строке:
        |Период                |Распределение |Абонент                   |Услуга           |Точка учета           |Вид начисления   |Способ начисления        |Тарифная зона |Значение тарифа |Начало периода |Конец периода |
        |'25.07.2020 23:59:59' |'Нет'         |'Андреева Анна Сергеевна' |'Электроэнергия' |'ввод_Электроэнергия' |'Начисление'     |'По нормативу'           |'Без ПУ'      |'4,270'         |'26.06.2020'   |'26.07.2020'  |
        И в таблице "Список" текущая строка равна:
        |Сумма         |Объем услуги |Объем потребленный |Сумма по повышенному коэффициенту |
        |'1614,06'     |'252,000000' |''                 |'538,02'                          |
        И в таблице "Список" я перехожу к строке:
        |Период                |Распределение |Абонент                   |Услуга           |Точка учета           |Вид начисления   |Способ начисления        |Тарифная зона |Значение тарифа |Начало периода |Конец периода |
        |'25.07.2020 23:59:59' |'Нет'         |'Андреева Анна Сергеевна' |'Электроэнергия' |'ввод_Электроэнергия' |'Начисление'     |'По нормативу'           |'Без ПУ'      |'4,270'         |'26.06.2020'   |'26.07.2020'  |
        И в таблице "Список" текущая строка равна:
        |Сумма         |Объем услуги |Объем потребленный |Сумма по повышенному коэффициенту |
        |''            |''           |'252,000000'       |''                                |
        И в таблице "Список" я перехожу к строке:
        |Период                |Распределение |Абонент                   |Услуга           |Точка учета           |Вид начисления   |Способ начисления        |Тарифная зона |Значение тарифа |Начало периода |Конец периода |
        |'25.07.2020 23:59:59' |'Нет'         |'Андреева Анна Сергеевна' |'Электроэнергия' |''                    |'Начисление ОДН' |'По приборам'            |''            |'4,270'         |''             |''            |
        И в таблице "Список" текущая строка равна:
        |Сумма         |Объем услуги |Объем потребленный |Сумма по повышенному коэффициенту |
        |'47,334107'   |'11,085271'  |''                 |''                                |
        И в таблице "Список" я перехожу к строке:
        |Период                |Распределение |Абонент                   |Услуга           |Точка учета           |Вид начисления   |Способ начисления        |Тарифная зона |Значение тарифа |Начало периода |Конец периода |
        |'25.07.2020 23:59:59' |'Нет'         |'Андреева Анна Сергеевна' |'Электроэнергия' |''                    |'Начисление ОДН' |'По приборам'            |''            |'4,270'         |''             |''            |
        И в таблице "Список" текущая строка равна:
        |Сумма         |Объем услуги |Объем потребленный |Сумма по повышенному коэффициенту |
        |''            |''           |'11,085271'        |''                                |
        И в таблице "Список" я перехожу к строке:
        |Период                |Распределение |Абонент                   |Услуга           |Точка учета           |Вид начисления   |Способ начисления        |Тарифная зона |Значение тарифа |Начало периода |Конец периода |
        |'25.08.2020 23:59:59' |'Нет'         |'Андреева Анна Сергеевна' |'Электроэнергия' |'ввод_Электроэнергия' |'Начисление'     |'По нормативу'           |'Без ПУ'      |'4,270'         |'26.07.2020'   |'26.08.2020'  |
        И в таблице "Список" текущая строка равна:
        |Сумма         |Объем услуги |Объем потребленный |Сумма по повышенному коэффициенту |
        |'1614,06'     |'252,000000' |''                 |'538,02'                          |
        И в таблице "Список" я перехожу к строке:
        |Период                |Распределение |Абонент                   |Услуга           |Точка учета           |Вид начисления   |Способ начисления        |Тарифная зона |Значение тарифа |Начало периода |Конец периода |
        |'25.08.2020 23:59:59' |'Нет'         |'Андреева Анна Сергеевна' |'Электроэнергия' |'ввод_Электроэнергия' |'Начисление'     |'По нормативу'           |'Без ПУ'      |'4,270'         |'26.07.2020'   |'26.08.2020'  |
        И в таблице "Список" текущая строка равна:
        |Сумма         |Объем услуги |Объем потребленный |Сумма по повышенному коэффициенту |
        |''            |''           |'252,000000'       |''                                |
        И в таблице "Список" я перехожу к строке:
        |Период                |Распределение |Абонент                   |Услуга           |Точка учета           |Вид начисления   |Способ начисления        |Тарифная зона |Значение тарифа |Начало периода |Конец периода |
        |'25.08.2020 23:59:59' |'Нет'         |'Андреева Анна Сергеевна' |'Электроэнергия' |''                    |'Начисление ОДН' |'По приборам'            |''            |'4,270'         |''             |''            |
        И в таблице "Список" текущая строка равна:
        |Сумма         |Объем услуги |Объем потребленный |Сумма по повышенному коэффициенту |
        |'47,334107'   |'11,085271'  |''                 |''                                |
        И в таблице "Список" я перехожу к строке:
        |Период                |Распределение |Абонент                   |Услуга           |Точка учета           |Вид начисления   |Способ начисления        |Тарифная зона |Значение тарифа |Начало периода |Конец периода |
        |'25.08.2020 23:59:59' |'Нет'         |'Андреева Анна Сергеевна' |'Электроэнергия' |''                    |'Начисление ОДН' |'По приборам'            |''            |'4,270'         |''             |''            |
        И в таблице "Список" текущая строка равна:
        |Сумма         |Объем услуги |Объем потребленный |Сумма по повышенному коэффициенту |
        |''            |''           |'11,085271'        |''                                |
        И в таблице "Список" я перехожу к строке:
        |Период                |Распределение |Абонент                   |Услуга           |Точка учета           |Вид начисления   |Способ начисления        |Тарифная зона |Значение тарифа |Начало периода |Конец периода |
        |'25.09.2020 23:59:59' |'Нет'         |'Андреева Анна Сергеевна' |'Электроэнергия' |'ввод_Электроэнергия' |'Начисление'     |'По нормативу'           |'Без ПУ'      |'4,270'         |'26.08.2020'   |'26.09.2020'  |
        И в таблице "Список" текущая строка равна:
        |Сумма         |Объем услуги |Объем потребленный |Сумма по повышенному коэффициенту |
        |'1614,06'     |'252,000000' |''                 |'538,02'                          |
        И в таблице "Список" я перехожу к строке:
        |Период                |Распределение |Абонент                   |Услуга           |Точка учета           |Вид начисления   |Способ начисления        |Тарифная зона |Значение тарифа |Начало периода |Конец периода |
        |'25.09.2020 23:59:59' |'Нет'         |'Андреева Анна Сергеевна' |'Электроэнергия' |'ввод_Электроэнергия' |'Начисление'     |'По нормативу'           |'Без ПУ'      |'4,270'         |'26.08.2020'   |'26.09.2020'  |
        И в таблице "Список" текущая строка равна:
        |Сумма         |Объем услуги |Объем потребленный |Сумма по повышенному коэффициенту |
        |''            |''           |'252,000000'       |''                                |
        И в таблице "Список" я перехожу к строке:
        |Период                |Распределение |Абонент                   |Услуга           |Точка учета           |Вид начисления   |Способ начисления        |Тарифная зона |Значение тарифа |Начало периода |Конец периода |
        |'25.09.2020 23:59:59' |'Нет'         |'Андреева Анна Сергеевна' |'Электроэнергия' |''                    |'Начисление ОДН' |'По приборам'            |''            |'4,270'         |''             |''            |
        И в таблице "Список" текущая строка равна:
        |Сумма         |Объем услуги |Объем потребленный |Сумма по повышенному коэффициенту |
        |'118,3352701' |'27,713178'  |''                 |''                                |
        И в таблице "Список" я перехожу к строке:
        |Период                |Распределение |Абонент                   |Услуга           |Точка учета           |Вид начисления   |Способ начисления        |Тарифная зона |Значение тарифа |Начало периода |Конец периода |
        |'25.09.2020 23:59:59' |'Нет'         |'Андреева Анна Сергеевна' |'Электроэнергия' |''                    |'Начисление ОДН' |'По приборам'            |''            |'4,270'         |''             |''            |
        И в таблице "Список" текущая строка равна:
        |Сумма         |Объем услуги |Объем потребленный |Сумма по повышенному коэффициенту |
        |''            |''           |'27,713178'        |''                                |
        И в таблице "Список" я перехожу к строке:
        |Период                |Распределение |Абонент                   |Услуга           |Точка учета           |Вид начисления   |Способ начисления        |Тарифная зона |Значение тарифа |Начало периода |Конец периода |
        |'25.10.2020 23:59:59' |'Нет'         |'Андреева Анна Сергеевна' |'Электроэнергия' |'ввод_Электроэнергия' |'Начисление'     |'По нормативу'           |'Без ПУ'      |'4,270'         |'26.09.2020'   |'26.10.2020'  |
        И в таблице "Список" текущая строка равна:
        |Сумма         |Объем услуги |Объем потребленный |Сумма по повышенному коэффициенту |
        |'1614,06'     |'252,000000' |''                 |'538,02'                          |
        И в таблице "Список" я перехожу к строке:
        |Период                |Распределение |Абонент                   |Услуга           |Точка учета           |Вид начисления   |Способ начисления        |Тарифная зона |Значение тарифа |Начало периода |Конец периода |
        |'25.10.2020 23:59:59' |'Нет'         |'Андреева Анна Сергеевна' |'Электроэнергия' |'ввод_Электроэнергия' |'Начисление'     |'По нормативу'           |'Без ПУ'      |'4,270'         |'26.09.2020'   |'26.10.2020'  |
        И в таблице "Список" текущая строка равна:
        |Сумма         |Объем услуги |Объем потребленный |Сумма по повышенному коэффициенту |
        |''            |''           |'252,000000'       |''                                |
        И в таблице "Список" я перехожу к строке:
        |Период                |Распределение |Абонент                   |Услуга           |Точка учета           |Вид начисления   |Способ начисления        |Тарифная зона |Значение тарифа |Начало периода |Конец периода |
        |'25.10.2020 23:59:59' |'Нет'         |'Андреева Анна Сергеевна' |'Электроэнергия' |''                    |'Начисление ОДН' |'Начисление по среднему' |''            |'4,270'         |''             |''            |
        И в таблице "Список" текущая строка равна:
        |Сумма         |Объем услуги |Объем потребленный |Сумма по повышенному коэффициенту |
        |'69,18'       |'16,201550'  |''                 |''                                |
        И в таблице "Список" я перехожу к строке:
        |Период                |Распределение |Абонент                   |Услуга           |Точка учета           |Вид начисления   |Способ начисления        |Тарифная зона |Значение тарифа |Начало периода |Конец периода |
        |'25.10.2020 23:59:59' |'Нет'         |'Андреева Анна Сергеевна' |'Электроэнергия' |''                    |'Начисление ОДН' |'Начисление по среднему' |''            |'4,270'         |''             |''            |
        И в таблице "Список" текущая строка равна:
        |Сумма         |Объем услуги |Объем потребленный |Сумма по повышенному коэффициенту |
        |''            |''           |'16,201550'        |''                                |
        И в таблице "Список" я перехожу к строке:
        |Период                |Распределение |Абонент                   |Услуга           |Точка учета           |Вид начисления   |Способ начисления        |Тарифная зона |Значение тарифа |Начало периода |Конец периода |
        |'25.11.2020 23:59:59' |'Нет'         |'Андреева Анна Сергеевна' |'Электроэнергия' |'ввод_Электроэнергия' |'Начисление'     |'По нормативу'           |'Без ПУ'      |'4,270'         |'26.10.2020'   |'26.11.2020'  |
        И в таблице "Список" текущая строка равна:
        |Сумма         |Объем услуги |Объем потребленный |Сумма по повышенному коэффициенту |
        |'1614,06'     |'252,000000' |''                 |'538,02'                          |
        И в таблице "Список" я перехожу к строке:
        |Период                |Распределение |Абонент                   |Услуга           |Точка учета           |Вид начисления   |Способ начисления        |Тарифная зона |Значение тарифа |Начало периода |Конец периода |
        |'25.11.2020 23:59:59' |'Нет'         |'Андреева Анна Сергеевна' |'Электроэнергия' |'ввод_Электроэнергия' |'Начисление'     |'По нормативу'           |'Без ПУ'      |'4,270'         |'26.10.2020'   |'26.11.2020'  |
        И в таблице "Список" текущая строка равна:
        |Сумма         |Объем услуги |Объем потребленный |Сумма по повышенному коэффициенту |
        |''            |''           |'252,000000'       |''                                |
        И в таблице "Список" я перехожу к строке:
        |Период                |Распределение |Абонент                   |Услуга           |Точка учета           |Вид начисления   |Способ начисления        |Тарифная зона |Значение тарифа |Начало периода |Конец периода |
        |'25.11.2020 23:59:59' |'Нет'         |'Андреева Анна Сергеевна' |'Электроэнергия' |''                    |'Начисление ОДН' |'По приборам'            |''            |'4,270'         |'26.10.2020'   |'26.11.2020'  |
        И в таблице "Список" текущая строка равна:
        |Сумма         |Объем услуги |Объем потребленный |Сумма по повышенному коэффициенту |
        |'1614,06'     |'252,000000' |''                 |'538,02'                          |
        И в таблице "Список" я перехожу к строке:
        |Период                |Распределение |Абонент                   |Услуга           |Точка учета           |Вид начисления   |Способ начисления        |Тарифная зона |Значение тарифа |Начало периода |Конец периода |
        |'25.11.2020 23:59:59' |'Нет'         |'Андреева Анна Сергеевна' |'Электроэнергия' |''                    |'Начисление ОДН' |'По приборам'            |''            |'4,270'         |'26.10.2020'   |'26.11.2020'  |
        И в таблице "Список" текущая строка равна:
        |Сумма         |Объем услуги |Объем потребленный |Сумма по повышенному коэффициенту |
        |''            |''           |'252,000000'       |''                                |
        И в таблице "Список" я перехожу к строке:
        |Период                |Распределение |Абонент                   |Услуга           |Точка учета           |Вид начисления   |Способ начисления        |Тарифная зона |Значение тарифа |Начало периода |Конец периода |
        |'25.11.2020 23:59:59' |'Нет'         |'Андреева Анна Сергеевна' |'Электроэнергия' |''                    |'Перерасчет'     |'Начисление по среднему' |''            |'4,270'         |''             |''            |
        И в таблице "Список" текущая строка равна:
        |Сумма         |Объем услуги |Объем потребленный |Сумма по повышенному коэффициенту |
        |'-69,18'      |'-16,201550' |'-16,201550'       |''                                |