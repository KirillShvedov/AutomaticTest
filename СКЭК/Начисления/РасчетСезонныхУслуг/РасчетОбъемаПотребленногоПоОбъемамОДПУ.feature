#language: ru
@tree
Функционал: <описание фичи>

Как <Роль>
Я хочу <проверить расчет объема потребленного по отоплению в случае 1/12. Бобков>
Чтобы <бизнес-эффект>

Контекст:
    Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: <РасчетОбъемаПотребленногоПоОбъемамОДПУ>
    И я подготавливаю тестовые данные
        И я загружаю макет "РасчетОбъемаПотребленногоПоОбъемамОДПУ.mxl"
    И я перепровожу загруженные данные
        И В командном интерфейсе я выбираю 'Работа с МКД' 'Операции с МКД'
        Тогда открылось окно 'Операции с МКД'
        И в таблице 'Список' я выделяю все строки
        И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюПровести' на элементе формы с именем "Список"
        И В командном интерфейсе я выбираю 'Работа с МКД' 'Регистрация показаний многоквартирного дома'
        Тогда открылось окно 'Регистрация показаний многоквартирного дома'
        И в таблице 'Список' я выделяю все строки
        И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюПровести' на элементе формы с именем "Список"
        И В командном интерфейсе я выбираю 'Работа с абонентами' 'Открытие/закрытие лс физического лица'
        Тогда открылось окно 'Открытие/закрытие лс физического лица'
        И в таблице 'Список' я выделяю все строки
        И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюПровести' на элементе формы с именем "Список"
    И Я запускаю выполнение начислений по организации 'ОАО "СКЭК"' и всему району 'Березовский городской округ' с 'Июль' '2019' по 'Декабрь 2019'
    И я проверяю полученные результаты
        И Я открываю навигационную ссылку "e1cib/list/РегистрНакопления.энргОбъемНачислений"
        Тогда открылось окно 'Объем начислений'
        Тогда в таблице "Список" количество строк "равно" 27
        И в таблице "Список" я перехожу к строке:
        #Июль
        |Период                |Распределение |Абонент                           |Услуга      |Точка учета          |Вид начисления   |Способ начисления |
        |'31.07.2019 23:59:59' |'Нет'         |'Резванова Екатерина Альфридовна' |'Отопление' |'квартира_Отопление' |'Начисление'     |'По нормативу'    |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'0,787757'   |'0,787757'         |
        И в таблице "Список" я перехожу к строке:
        |Период                |Распределение |Абонент                           |Услуга      |Точка учета          |Вид начисления   |Способ начисления |
        |'31.07.2019 23:59:59' |'Да'          |'Резванова Екатерина Альфридовна' |'Отопление' |'квартира_Отопление' |'Начисление'     |'По нормативу'    |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'-0,787757'  |'-0,787757'        |
        И в таблице "Список" я перехожу к строке:
        |Период                |Распределение |Абонент                           |Услуга      |Точка учета          |Вид начисления   |Способ начисления |
        |'31.07.2019 23:59:59' |'Да'          |'Резванова Екатерина Альфридовна' |'Отопление' |'квартира_Отопление' |'Начисление'     |'По приборам'     |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'0,851948'   |''                 |
        И в таблице "Список" я перехожу к строке:
        |Период                |Распределение |Абонент                           |Услуга      |Точка учета          |Вид начисления   |Способ начисления |
        |'31.07.2019 23:59:59' |'Да'          |'Резванова Екатерина Альфридовна' |'Отопление' |''                   |'Начисление ОДН' |'По приборам'     |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'0,090000'   |''                 |
        #Август
        И в таблице "Список" я перехожу к строке:
        |Период                |Распределение |Абонент                           |Услуга      |Точка учета          |Вид начисления   |Способ начисления |
        |'31.08.2019 23:59:59' |'Нет'         |'Резванова Екатерина Альфридовна' |'Отопление' |'квартира_Отопление' |'Начисление'     |'По нормативу'    |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'0,787757'   |'0,787757'         |
        И в таблице "Список" я перехожу к строке:
        |Период                |Распределение |Абонент                           |Услуга      |Точка учета          |Вид начисления   |Способ начисления |
        |'31.08.2019 23:59:59' |'Да'          |'Резванова Екатерина Альфридовна' |'Отопление' |'квартира_Отопление' |'Начисление'     |'По нормативу'    |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'-0,787757'  |'-0,787757'        |
        И в таблице "Список" я перехожу к строке:
        |Период                |Распределение |Абонент                           |Услуга      |Точка учета          |Вид начисления   |Способ начисления |
        |'31.08.2019 23:59:59' |'Да'          |'Резванова Екатерина Альфридовна' |'Отопление' |'квартира_Отопление' |'Начисление'     |'По приборам'     |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'0,851948'   |''                 |
        И в таблице "Список" я перехожу к строке:
        |Период                |Распределение |Абонент                           |Услуга      |Точка учета          |Вид начисления   |Способ начисления |
        |'31.08.2019 23:59:59' |'Да'          |'Резванова Екатерина Альфридовна' |'Отопление' |''                   |'Начисление ОДН' |'По приборам'     |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'0,090000'   |''                 |
        #Сентябрь
        И в таблице "Список" я перехожу к строке:
        |Период                |Распределение |Абонент                           |Услуга      |Точка учета          |Вид начисления |Способ начисления |Начало периода |Конец периода |
        |'30.09.2019 23:59:59' |'Нет'         |'Резванова Екатерина Альфридовна' |'Отопление' |'квартира_Отопление' |'Начисление'   |'По нормативу'    |'01.09.2019'   |'15.09.2019'  |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'0,367620'   |'0,367620'         |
        И в таблице "Список" я перехожу к строке:
        |Период                |Распределение |Абонент                           |Услуга      |Точка учета          |Вид начисления |Способ начисления |Начало периода |Конец периода |
        |'30.09.2019 23:59:59' |'Нет'         |'Резванова Екатерина Альфридовна' |'Отопление' |'квартира_Отопление' |'Начисление'   |'По нормативу'    |'15.09.2019'   |'01.10.2019'  |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'0,420137'   |'0,420137'         |
        И в таблице "Список" я перехожу к строке:
        |Период                |Распределение |Абонент                           |Услуга      |Точка учета          |Вид начисления |Способ начисления |Начало периода |Конец периода |
        |'30.09.2019 23:59:59' |'Да'          |'Резванова Екатерина Альфридовна' |'Отопление' |'квартира_Отопление' |'Начисление'   |'По нормативу'    |'01.09.2019'   |'15.09.2019'  |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'-0,367620'  |'-0,367620'        |
        И в таблице "Список" я перехожу к строке:
        |Период                |Распределение |Абонент                           |Услуга      |Точка учета          |Вид начисления |Способ начисления |Начало периода |Конец периода |
        |'30.09.2019 23:59:59' |'Да'          |'Резванова Екатерина Альфридовна' |'Отопление' |'квартира_Отопление' |'Начисление'   |'По приборам'     |'01.09.2019'   |'15.09.2019'  |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'0,397576'   |'0,108064'         |
        И в таблице "Список" я перехожу к строке:
        |Период                |Распределение |Абонент                           |Услуга      |Точка учета          |Вид начисления |Способ начисления |Начало периода |Конец периода |
        |'30.09.2019 23:59:59' |'Да'          |'Резванова Екатерина Альфридовна' |'Отопление' |'квартира_Отопление' |'Начисление'   |'По нормативу'    |'15.09.2019'   |'01.10.2019'  |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'-0,420137'  |'-0,420137'        |
        И в таблице "Список" я перехожу к строке:
        |Период                |Распределение |Абонент                           |Услуга      |Точка учета          |Вид начисления |Способ начисления |Начало периода |Конец периода |
        |'30.09.2019 23:59:59' |'Да'          |'Резванова Екатерина Альфридовна' |'Отопление' |'квартира_Отопление' |'Начисление'   |'По приборам'     |'15.09.2019'   |'01.10.2019'  |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'0,454372'   |'0,123501'         |
        И в таблице "Список" я перехожу к строке:
        |Период                |Распределение |Абонент                           |Услуга      |Точка учета          |Вид начисления   |Способ начисления |
        |'30.09.2019 23:59:59' |'Да'          |'Резванова Екатерина Альфридовна' |'Отопление' |''                   |'Начисление ОДН' |'По приборам'     |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'0,090000'   |'0,024462'         |
        #Октябрь
        И в таблице "Список" я перехожу к строке:
        |Период                |Распределение |Абонент                           |Услуга      |Точка учета          |Вид начисления   |Способ начисления |
        |'31.10.2019 23:59:59' |'Нет'         |'Резванова Екатерина Альфридовна' |'Отопление' |'квартира_Отопление' |'Начисление'     |'По нормативу'    |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'0,787757'   |'0,787757'         |
        И в таблице "Список" я перехожу к строке:
        |Период                |Распределение |Абонент                           |Услуга      |Точка учета          |Вид начисления   |Способ начисления |
        |'31.10.2019 23:59:59' |'Да'          |'Резванова Екатерина Альфридовна' |'Отопление' |'квартира_Отопление' |'Начисление'     |'По нормативу'    |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'-0,787757'  |'-0,787757'        |
        И в таблице "Список" я перехожу к строке:
        |Период                |Распределение |Абонент                           |Услуга      |Точка учета          |Вид начисления   |Способ начисления |
        |'31.10.2019 23:59:59' |'Да'          |'Резванова Екатерина Альфридовна' |'Отопление' |'квартира_Отопление' |'Начисление'     |'По приборам'     |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'0,851948'   |'0,887740'         |
        И в таблице "Список" я перехожу к строке:
        |Период                |Распределение |Абонент                           |Услуга      |Точка учета          |Вид начисления   |Способ начисления |
        |'31.10.2019 23:59:59' |'Да'          |'Резванова Екатерина Альфридовна' |'Отопление' |''                   |'Начисление ОДН' |'По приборам'     |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'0,090000'   |'0,093781'         |
        #Ноябрь
        И в таблице "Список" я перехожу к строке:
        |Период                |Распределение |Абонент                           |Услуга      |Точка учета          |Вид начисления   |Способ начисления |
        |'30.11.2019 23:59:59' |'Нет'         |'Резванова Екатерина Альфридовна' |'Отопление' |'квартира_Отопление' |'Начисление'     |'По нормативу'    |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'0,787757'   |'0,787757'         |
        И в таблице "Список" я перехожу к строке:
        |Период                |Распределение |Абонент                           |Услуга      |Точка учета          |Вид начисления   |Способ начисления |
        |'30.11.2019 23:59:59' |'Да'          |'Резванова Екатерина Альфридовна' |'Отопление' |'квартира_Отопление' |'Начисление'     |'По нормативу'    |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'-0,787757'  |'-0,787757'        |
        И в таблице "Список" я перехожу к строке:
        |Период                |Распределение |Абонент                           |Услуга      |Точка учета          |Вид начисления   |Способ начисления |
        |'30.11.2019 23:59:59' |'Да'          |'Резванова Екатерина Альфридовна' |'Отопление' |'квартира_Отопление' |'Начисление'     |'По приборам'     |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'0,851948'   |'1,226251'         |
        И в таблице "Список" я перехожу к строке:
        |Период                |Распределение |Абонент                           |Услуга      |Точка учета          |Вид начисления   |Способ начисления |
        |'30.11.2019 23:59:59' |'Да'          |'Резванова Екатерина Альфридовна' |'Отопление' |''                   |'Начисление ОДН' |'По приборам'     |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'0,090000'   |'0,129541'         |
        #Декабрь
        И в таблице "Список" я перехожу к строке:
        |Период                |Распределение |Абонент                           |Услуга      |Точка учета          |Вид начисления   |Способ начисления |
        |'31.12.2019 23:59:59' |'Нет'         |'Резванова Екатерина Альфридовна' |'Отопление' |'квартира_Отопление' |'Начисление'     |'По нормативу'    |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'0,787757'   |'0,787757'         |
        И в таблице "Список" я перехожу к строке:
        |Период                |Распределение |Абонент                           |Услуга      |Точка учета          |Вид начисления   |Способ начисления |
        |'31.12.2019 23:59:59' |'Да'          |'Резванова Екатерина Альфридовна' |'Отопление' |'квартира_Отопление' |'Начисление'     |'По нормативу'    |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'-0,787757'  |'-0,787757'        |
        И в таблице "Список" я перехожу к строке:
        |Период                |Распределение |Абонент                           |Услуга      |Точка учета          |Вид начисления   |Способ начисления |
        |'31.12.2019 23:59:59' |'Да'          |'Резванова Екатерина Альфридовна' |'Отопление' |'квартира_Отопление' |'Начисление'     |'По приборам'     |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'0,851948'   |'1,208819'         |
        И в таблице "Список" я перехожу к строке:
        |Период                |Распределение |Абонент                           |Услуга      |Точка учета          |Вид начисления   |Способ начисления |
        |'31.12.2019 23:59:59' |'Да'          |'Резванова Екатерина Альфридовна' |'Отопление' |''                   |'Начисление ОДН' |'По приборам'     |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'0,090000'   |'0,127700'         |