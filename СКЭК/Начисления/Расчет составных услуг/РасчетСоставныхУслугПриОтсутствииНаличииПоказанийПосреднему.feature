#language: ru
@tree
Функционал: <описание фичи>
"https://trello.com/c/qyt7Zv5q"
Как <Роль>
Я хочу <проверить расчет расчет по показаниям>
Чтобы <бизнес-эффект>

Контекст:
    Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: <РасчетСоставныхУслугПриОтсутствииНаличииПоказанийПосреднему>
    И я подготавливаю тестовые данные
        И я загружаю макет "РасчетСоставныхУслугПриОтсутствииНаличииПоказанийПосреднему"
        И я перепровожу загруженные данные
            И В командном интерфейсе я выбираю 'Администрирование' 'Ввод начальных остатков'
            Тогда открылось окно 'Ввод начальных остатков'
            И в таблице 'Список' я выделяю все строки
            И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюПровести' на элементе формы с именем "Список"
            И В командном интерфейсе я выбираю 'Работа с абонентами' 'Регистрация показаний абонента'
            Тогда открылось окно 'Регистрация показаний абонента'
            И в таблице 'Список' я выделяю все строки
            И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюПровести' на элементе формы с именем "Список"
    И Я запускаю выполнение начислений по организации 'ООО "ПКС"' и району 'Плотниковское СП Промышленновского р-на' и МКД '' с 'Июль' '2019' по 'Декабрь 2019'
    И я проверяю полученные результаты
        И Я открываю навигационную ссылку "e1cib/list/РегистрНакопления.энргОбъемНачислений"
        Тогда открылось окно 'Объем начислений'   
        И в таблице "Список" я перехожу к строке:
        |Период                |Услуга                   |Точка учета                            |Вид начисления |Способ начисления        |Прибор учета |Период начисления |
        |'31.07.2019 23:59:59' |'Холодное водоснабжение' |'ввод_ХВС + водоотведение'             |'Начисление'   |'По приборам'            |'007444014'  |'01.07.2019'      |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'2,000000'   |'2,000000'         |
        И в таблице "Список" я перехожу к строке:
        |Период                |Услуга                   |Точка учета                            |Вид начисления |Способ начисления        |Прибор учета |Период начисления |
        |'31.07.2019 23:59:59' |'Холодное водоснабжение' |'ввод_ХВС + водоотведение'             |'Начисление'   |'По приборам'            |'000663914'  |'01.07.2019'      |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'1,000000'   |'1,000000'         |
        И в таблице "Список" я перехожу к строке:
        |Период                |Услуга                   |Точка учета                            |Вид начисления |Способ начисления        |Прибор учета |Период начисления |
        |'31.07.2019 23:59:59' |'Водоотведение'          |'стоки_ГВС + водоотведение'            |'Начисление'   |'По приборам'            |'000653714'  |'01.07.2019'      |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'2,000000'   |'2,000000'         |
        И в таблице "Список" я перехожу к строке:
        |Период                |Услуга                   |Точка учета                            |Вид начисления |Способ начисления        |Прибор учета |Период начисления |
        |'31.07.2019 23:59:59' |'Водоотведение'          |'стоки от 2-ой ГВ_ГВС + водоотведение' |'Начисление'   |'По приборам'            |'000209714'  |'01.07.2019'      |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'2,000000'   |'2,000000'         |
        И в таблице "Список" я перехожу к строке:
        |Период                |Услуга                   |Точка учета                            |Вид начисления |Способ начисления        |Прибор учета |Период начисления |
        |'31.07.2019 23:59:59' |'Водоотведение'          |'ввод_ХВС + водоотведение'             |'Начисление'   |'По приборам'            |'007444014'  |'01.07.2019'      |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'2,000000'   |'2,000000'         |
        И в таблице "Список" я перехожу к строке:
        |Период                |Услуга                   |Точка учета                            |Вид начисления |Способ начисления        |Прибор учета |Период начисления |
        |'31.07.2019 23:59:59' |'Водоотведение'          |'ввод_ХВС + водоотведение'             |'Начисление'   |'По приборам'            |'000663914'  |'01.07.2019'      |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'1,000000'   |'1,000000'         |
        И в таблице "Список" я перехожу к строке:
        |Период                |Услуга                   |Точка учета                            |Вид начисления |Способ начисления        |Прибор учета |Период начисления |
        |'31.08.2019 23:59:59' |'Холодное водоснабжение' |'ввод_ХВС + водоотведение'             |'Начисление'   |'По приборам'            |'007444014'  |'01.08.2019'      |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |''           |''                 |
        И в таблице "Список" я перехожу к строке:
        |Период                |Услуга                   |Точка учета                            |Вид начисления |Способ начисления        |Прибор учета |Период начисления |
        |'31.08.2019 23:59:59' |'Холодное водоснабжение' |'ввод_ХВС + водоотведение'             |'Начисление'   |'По приборам'            |'000663914'  |'01.08.2019'      |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'5,000000'   |'5,000000'         |
        И в таблице "Список" я перехожу к строке:
        |Период                |Услуга                   |Точка учета                            |Вид начисления |Способ начисления        |Прибор учета |Период начисления |
        |'31.08.2019 23:59:59' |'Водоотведение'          |'стоки_ГВС + водоотведение'            |'Начисление'   |'По приборам'            |'000653714'  |'01.08.2019'      |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'9,000000'   |'9,000000'         |
        И в таблице "Список" я перехожу к строке:
        |Период                |Услуга                   |Точка учета                            |Вид начисления |Способ начисления        |Прибор учета |Период начисления |
        |'31.08.2019 23:59:59' |'Водоотведение'          |'стоки от 2-ой ГВ_ГВС + водоотведение' |'Начисление'   |'По приборам'            |'000209714'  |'01.08.2019'      |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'1,000000'   |'1,000000'         |
        И в таблице "Список" я перехожу к строке:
        |Период                |Услуга                   |Точка учета                            |Вид начисления |Способ начисления        |Прибор учета |Период начисления |
        |'31.08.2019 23:59:59' |'Водоотведение'          |'ввод_ХВС + водоотведение'             |'Начисление'   |'По приборам'            |'007444014'  |'01.08.2019'      |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |''           |''                 |
        И в таблице "Список" я перехожу к строке:
        |Период                |Услуга                   |Точка учета                            |Вид начисления |Способ начисления        |Прибор учета |Период начисления |
        |'31.08.2019 23:59:59' |'Водоотведение'          |'ввод_ХВС + водоотведение'             |'Начисление'   |'По приборам'            |'000663914'  |'01.08.2019'      |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'5,000000'   |'5,000000'         |
        И в таблице "Список" я перехожу к строке:
        |Период                |Услуга                   |Точка учета                            |Вид начисления |Способ начисления        |Прибор учета |Период начисления |
        |'30.09.2019 23:59:59' |'Холодное водоснабжение' |'ввод_ХВС + водоотведение'             |'Начисление'   |'Начисление по среднему' |'007444014'  |'01.09.2019'      |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'1,333333'   |'1,333333'         |
        И в таблице "Список" я перехожу к строке:
        |Период                |Услуга                   |Точка учета                            |Вид начисления |Способ начисления        |Прибор учета |Период начисления |
        |'30.09.2019 23:59:59' |'Холодное водоснабжение' |'ввод_ХВС + водоотведение'             |'Начисление'   |'По приборам'            |'000663914'  |'01.09.2019'      |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'4,000000'   |'4,000000'         |
        И в таблице "Список" я перехожу к строке:
        |Период                |Услуга                   |Точка учета                            |Вид начисления |Способ начисления        |Прибор учета |Период начисления |
        |'30.09.2019 23:59:59' |'Водоотведение'          |'стоки_ГВС + водоотведение'            |'Начисление'   |'По приборам'            |'000653714'  |'01.09.2019'      |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'4,000000'   |'4,000000'         |
        И в таблице "Список" я перехожу к строке:
        |Период                |Услуга                   |Точка учета                            |Вид начисления |Способ начисления        |Прибор учета |Период начисления |
        |'30.09.2019 23:59:59' |'Водоотведение'          |'стоки от 2-ой ГВ_ГВС + водоотведение' |'Начисление'   |'Начисление по среднему' |'000209714'  |'01.09.2019'      |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'1,666667'   |'1,666667'         |
        И в таблице "Список" я перехожу к строке:
        |Период                |Услуга                   |Точка учета                            |Вид начисления |Способ начисления        |Прибор учета |Период начисления |
        |'30.09.2019 23:59:59' |'Водоотведение'          |'ввод_ХВС + водоотведение'             |'Начисление'   |'Начисление по среднему' |'007444014'  |'01.09.2019'      |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'1,333333'   |'1,333333'         |
        И в таблице "Список" я перехожу к строке:
        |Период                |Услуга                   |Точка учета                            |Вид начисления |Способ начисления        |Прибор учета |Период начисления |
        |'30.09.2019 23:59:59' |'Водоотведение'          |'ввод_ХВС + водоотведение'             |'Начисление'   |'По приборам'            |'000663914'  |'01.09.2019'      |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'4,000000'   |'4,000000'         |
        И в таблице "Список" я перехожу к строке:
        |Период                |Услуга                   |Точка учета                            |Вид начисления |Способ начисления        |Прибор учета |Период начисления |
        |'31.10.2019 23:59:59' |'Холодное водоснабжение' |'ввод_ХВС + водоотведение'             |'Начисление'   |'Начисление по среднему' |'007444014'  |'01.10.2019'      |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'1,333333'   |'1,333333'         |
        И в таблице "Список" я перехожу к строке:
        |Период                |Услуга                   |Точка учета                            |Вид начисления |Способ начисления        |Прибор учета |Период начисления |
        |'31.10.2019 23:59:59' |'Холодное водоснабжение' |'ввод_ХВС + водоотведение'             |'Начисление'   |'Начисление по среднему' |'000663914'  |'01.10.2019'      |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'2,666667'   |'2,666667'         |
        И в таблице "Список" я перехожу к строке:
        |Период                |Услуга                   |Точка учета                            |Вид начисления |Способ начисления        |Прибор учета |Период начисления |
        |'31.10.2019 23:59:59' |'Водоотведение'          |'стоки_ГВС + водоотведение'            |'Начисление'   |'Начисление по среднему' |'000653714'  |'01.10.2019'      |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'4,000000'   |'4,000000'         |
        И в таблице "Список" я перехожу к строке:
        |Период                |Услуга                   |Точка учета                            |Вид начисления |Способ начисления        |Прибор учета |Период начисления |
        |'31.10.2019 23:59:59' |'Водоотведение'          |'стоки от 2-ой ГВ_ГВС + водоотведение' |'Начисление'   |'Начисление по среднему' |'000209714'  |'01.10.2019'      |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'1,666667'   |'1,666667'         |
        И в таблице "Список" я перехожу к строке:
        |Период                |Услуга                   |Точка учета                            |Вид начисления |Способ начисления        |Прибор учета |Период начисления |
        |'31.10.2019 23:59:59' |'Водоотведение'          |'ввод_ХВС + водоотведение'             |'Начисление'   |'Начисление по среднему' |'007444014'  |'01.10.2019'      |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'1,333333'   |'1,333333'         |
        И в таблице "Список" я перехожу к строке:
        |Период                |Услуга                   |Точка учета                            |Вид начисления |Способ начисления        |Прибор учета |Период начисления |
        |'31.10.2019 23:59:59' |'Водоотведение'          |'ввод_ХВС + водоотведение'             |'Начисление'   |'Начисление по среднему' |'000663914'  |'01.10.2019'      |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'2,666667'   |'2,666667'         |
        И в таблице "Список" я перехожу к строке:
        |Период                |Услуга                   |Точка учета                            |Вид начисления |Способ начисления        |Прибор учета |Период начисления |
        |'30.11.2019 23:59:59' |'Холодное водоснабжение' |'ввод_ХВС + водоотведение'             |'Начисление'   |'По приборам'            |'007444014'  |'01.11.2019'      |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |''           |''                 |
        И в таблице "Список" я перехожу к строке:
        |Период                |Услуга                   |Точка учета                            |Вид начисления |Способ начисления        |Прибор учета |Период начисления |
        |'30.11.2019 23:59:59' |'Холодное водоснабжение' |'ввод_ХВС + водоотведение'             |'Начисление'   |'По приборам'            |'000663914'  |'01.11.2019'      |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'3,000000'   |'3,000000'         |
        И в таблице "Список" я перехожу к строке:
        |Период                |Услуга                   |Точка учета                            |Вид начисления |Способ начисления        |Прибор учета |Период начисления |
        |'30.11.2019 23:59:59' |'Водоотведение'          |'стоки_ГВС + водоотведение'            |'Начисление'   |'По приборам'            |'000653714'  |'01.11.2019'      |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'5,000000'   |'5,000000'         |
        И в таблице "Список" я перехожу к строке:
        |Период                |Услуга                   |Точка учета                            |Вид начисления |Способ начисления        |Прибор учета |Период начисления |
        |'30.11.2019 23:59:59' |'Водоотведение'          |'стоки от 2-ой ГВ_ГВС + водоотведение' |'Начисление'   |'По приборам'            |'000209714'  |'01.11.2019'      |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'6,000000'   |'6,000000'         |
        И в таблице "Список" я перехожу к строке:
        |Период                |Услуга                   |Точка учета                            |Вид начисления |Способ начисления        |Прибор учета |Период начисления |
        |'30.11.2019 23:59:59' |'Водоотведение'          |'ввод_ХВС + водоотведение'             |'Начисление'   |'По приборам'            |'007444014'  |'01.11.2019'      |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |''           |''                 |
        И в таблице "Список" я перехожу к строке:
        |Период                |Услуга                   |Точка учета                            |Вид начисления |Способ начисления        |Прибор учета |Период начисления |
        |'30.11.2019 23:59:59' |'Водоотведение'          |'ввод_ХВС + водоотведение'             |'Начисление'   |'По приборам'            |'000663914'  |'01.11.2019'      |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'3,000000'   |'3,000000'         |
        И в таблице "Список" я перехожу к строке:
        |Период                |Услуга                   |Точка учета                            |Вид начисления |Способ начисления        |Прибор учета |Период начисления |
        |'30.11.2019 23:59:59' |'Водоотведение'          |'ввод_ХВС + водоотведение'             |'Перерасчет'   |'Начисление по среднему' |'007444014'  |'01.09.2019'      |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'-1,333333'  |'-1,333333'        |
        И в таблице "Список" я перехожу к строке:
        |Период                |Услуга                   |Точка учета                            |Вид начисления |Способ начисления        |Прибор учета |Период начисления |
        |'30.11.2019 23:59:59' |'Холодное водоснабжение' |'ввод_ХВС + водоотведение'             |'Перерасчет'   |'Начисление по среднему' |'007444014'  |'01.09.2019'      |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'-1,333333'  |'-1,333333'        |
        И в таблице "Список" я перехожу к строке:
        |Период                |Услуга                   |Точка учета                            |Вид начисления |Способ начисления        |Прибор учета |Период начисления |
        |'30.11.2019 23:59:59' |'Водоотведение'          |'стоки от 2-ой ГВ_ГВС + водоотведение' |'Перерасчет'   |'Начисление по среднему' |'000209714'  |'01.09.2019'      |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'-1,666667'  |'-1,666667'        |
        И в таблице "Список" я перехожу к строке:
        |Период                |Услуга                   |Точка учета                            |Вид начисления |Способ начисления        |Прибор учета |Период начисления |
        |'30.11.2019 23:59:59' |'Холодное водоснабжение' |'ввод_ХВС + водоотведение'             |'Перерасчет'   |'Начисление по среднему' |'007444014'  |'01.10.2019'      |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'-1,333333'  |'-1,333333'        |
        И в таблице "Список" я перехожу к строке:
        |Период                |Услуга                   |Точка учета                            |Вид начисления |Способ начисления        |Прибор учета |Период начисления |
        |'30.11.2019 23:59:59' |'Холодное водоснабжение' |'ввод_ХВС + водоотведение'             |'Перерасчет'   |'Начисление по среднему' |'000663914'  |'01.10.2019'      |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'-2,666667'  |'-2,666667'        |
        И в таблице "Список" я перехожу к строке:
        |Период                |Услуга                   |Точка учета                            |Вид начисления |Способ начисления        |Прибор учета |Период начисления |
        |'30.11.2019 23:59:59' |'Водоотведение'          |'стоки_ГВС + водоотведение'            |'Перерасчет'   |'Начисление по среднему' |'000653714'  |'01.10.2019'      |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'-4,000000'  |'-4,000000'        |
        И в таблице "Список" я перехожу к строке:
        |Период                |Услуга                   |Точка учета                            |Вид начисления |Способ начисления        |Прибор учета |Период начисления |
        |'30.11.2019 23:59:59' |'Водоотведение'          |'стоки от 2-ой ГВ_ГВС + водоотведение' |'Перерасчет'   |'Начисление по среднему' |'000209714'  |'01.10.2019'      |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'-1,666667'  |'-1,666667'        |
        И в таблице "Список" я перехожу к строке:
        |Период                |Услуга                   |Точка учета                            |Вид начисления |Способ начисления        |Прибор учета |Период начисления |
        |'30.11.2019 23:59:59' |'Водоотведение'          |'ввод_ХВС + водоотведение'             |'Перерасчет'   |'Начисление по среднему' |'007444014'  |'01.10.2019'      |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'-1,333333'  |'-1,333333'        |
        И в таблице "Список" я перехожу к строке:
        |Период                |Услуга                   |Точка учета                            |Вид начисления |Способ начисления        |Прибор учета |Период начисления |
        |'30.11.2019 23:59:59' |'Водоотведение'          |'ввод_ХВС + водоотведение'             |'Перерасчет'   |'Начисление по среднему' |'000663914'  |'01.10.2019'      |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'-2,666667'  |'-2,666667'        |
        И в таблице "Список" я перехожу к строке:
        |Период                |Услуга                   |Точка учета                            |Вид начисления |Способ начисления        |Прибор учета |Период начисления |
        |'31.12.2019 23:59:59' |'Холодное водоснабжение' |'ввод_ХВС + водоотведение'             |'Начисление'   |'По приборам'            |'007444014'  |'01.12.2019'      |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'3,000000'   |'3,000000'         |
        И в таблице "Список" я перехожу к строке:
        |Период                |Услуга                   |Точка учета                            |Вид начисления |Способ начисления        |Прибор учета |Период начисления |
        |'31.12.2019 23:59:59' |'Холодное водоснабжение' |'ввод_ХВС + водоотведение'             |'Начисление'   |'По приборам'            |'000663914'  |'01.12.2019'      |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |''           |''                 |
        И в таблице "Список" я перехожу к строке:
        |Период                |Услуга                   |Точка учета                            |Вид начисления |Способ начисления        |Прибор учета |Период начисления |
        |'31.12.2019 23:59:59' |'Водоотведение'          |'стоки_ГВС + водоотведение'            |'Начисление'   |'По приборам'            |'000653714'  |'01.12.2019'      |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'2,000000'   |'2,000000'         |
        И в таблице "Список" я перехожу к строке:
        |Период                |Услуга                   |Точка учета                            |Вид начисления |Способ начисления        |Прибор учета |Период начисления |
        |'31.12.2019 23:59:59' |'Водоотведение'          |'стоки от 2-ой ГВ_ГВС + водоотведение' |'Начисление'   |'По приборам'            |'000209714'  |'01.12.2019'      |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'1,000000'   |'1,000000'         |
        И в таблице "Список" я перехожу к строке:
        |Период                |Услуга                   |Точка учета                            |Вид начисления |Способ начисления        |Прибор учета |Период начисления |
        |'31.12.2019 23:59:59' |'Водоотведение'          |'ввод_ХВС + водоотведение'             |'Начисление'   |'По приборам'            |'007444014'  |'01.12.2019'      |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'3,000000'   |'3,000000'         |
        И в таблице "Список" я перехожу к строке:
        |Период                |Услуга                   |Точка учета                            |Вид начисления |Способ начисления        |Прибор учета |Период начисления |
        |'31.12.2019 23:59:59' |'Водоотведение'          |'ввод_ХВС + водоотведение'             |'Начисление'   |'По приборам'            |'000663914'  |'01.12.2019'      |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |''           |''                 |
