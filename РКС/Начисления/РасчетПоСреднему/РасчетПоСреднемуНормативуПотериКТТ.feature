#language: ru
    @tree
    Функционал: <описание фичи>
    Как <Роль>
    Я хочу <проверить расчет расчет по показаниям>
    Чтобы <бизнес-эффект>
    Карточка "https://trello.com/c/1mQCoqDA/2131"

    Контекст:
    Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: <РасчетПоСреднему>
    И я подготавливаю тестовые данные
        И я загружаю макет "РасчетПоСреднемуНормативуПотериКТТ"
    И я перепровожу загруженные данные
        И Я перепровожу все документы абонента "Семенова Дарья Ивановна"
    И Я запускаю выполнение начислений по организации 'ООО "РКС-энерго"' и району 'Волховский район' и МКД '' с 'Июнь' '2020' по 'Ноябрь 2020'
    И Я проверяю полученные результаты
        И Я открываю навигационную ссылку "e1cib/list/РегистрНакопления.энргОбъемНачислений"
        Тогда открылось окно 'Объем начислений'
        Тогда в таблице "Список" количество строк "равно" 25
       И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                   |Услуга           |Точка учета           |Вид начисления |Способ начисления        |Тарифная зона |Значение тарифа |Начало периода |Конец периода |Сумма     |Объем услуги  |Объем потребленный |
        |'25.06.2020 23:59:59' |'Семенова Дарья Ивановна' |'Электроэнергия' |'ввод_Электроэнергия' |'Начисление'   |'По приборам'            |'День'        |'4,490'         |'26.05.2020'   |'26.06.2020'  |'668,65'  |'148,920000'  |''                 |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                   |Услуга           |Точка учета           |Вид начисления |Способ начисления        |Тарифная зона |Значение тарифа |Начало периода |Конец периода |Сумма     |Объем услуги  |Объем потребленный |
        |'25.06.2020 23:59:59' |'Семенова Дарья Ивановна' |'Электроэнергия' |'ввод_Электроэнергия' |'Начисление'   |'По приборам'            |'Ночь'        |'2,430'         |'26.05.2020'   |'26.06.2020'  |'267,69'  |'110,160000'  |''                 |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                   |Услуга           |Точка учета           |Вид начисления |Способ начисления        |Тарифная зона |Значение тарифа |Начало периода |Конец периода |Сумма     |Объем услуги  |Объем потребленный |
        |'25.06.2020 23:59:59' |'Семенова Дарья Ивановна' |'Электроэнергия' |'ввод_Электроэнергия' |'Начисление'   |'По приборам'            |'День'        |'4,490'         |'26.05.2020'   |'26.06.2020'  |''        |''            |'146,000000'       |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                   |Услуга           |Точка учета           |Вид начисления |Способ начисления        |Тарифная зона |Значение тарифа |Начало периода |Конец периода |Сумма     |Объем услуги  |Объем потребленный |
        |'25.06.2020 23:59:59' |'Семенова Дарья Ивановна' |'Электроэнергия' |'ввод_Электроэнергия' |'Начисление'   |'По приборам'            |'Ночь'        |'2,430'         |'26.05.2020'   |'26.06.2020'  |''        |''            |'108,000000'       |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                   |Услуга           |Точка учета           |Вид начисления |Способ начисления        |Тарифная зона |Значение тарифа |Начало периода |Конец периода |Сумма     |Объем услуги  |Объем потребленный |
        |'25.07.2020 23:59:59' |'Семенова Дарья Ивановна' |'Электроэнергия' |'ввод_Электроэнергия' |'Начисление'   |'Среднее по нормативу'   |'Сутки'       |'4,270'         |'26.06.2020'   |'26.07.2020'  |'947,94'  |'222,000000'  |''                 |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                   |Услуга           |Точка учета           |Вид начисления |Способ начисления        |Тарифная зона |Значение тарифа |Начало периода |Конец периода |Сумма     |Объем услуги  |Объем потребленный |
        |'25.07.2020 23:59:59' |'Семенова Дарья Ивановна' |'Электроэнергия' |'ввод_Электроэнергия' |'Начисление'   |'Среднее по нормативу'   |'Сутки'       |'4,270'         |'26.06.2020'   |'26.07.2020'  |''        |''            |'222,000000'       |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                   |Услуга           |Точка учета           |Вид начисления |Способ начисления        |Тарифная зона |Значение тарифа |Начало периода |Конец периода |Сумма     |Объем услуги  |Объем потребленный |
        |'25.08.2020 23:59:59' |'Семенова Дарья Ивановна' |'Электроэнергия' |'ввод_Электроэнергия' |'Начисление'   |'По приборам'            |'День'        |'4,490'         |'26.07.2020'   |'26.08.2020'  |'723,61'  |'161,160000'  |''                 |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                   |Услуга           |Точка учета           |Вид начисления |Способ начисления        |Тарифная зона |Значение тарифа |Начало периода |Конец периода |Сумма     |Объем услуги  |Объем потребленный |
        |'25.08.2020 23:59:59' |'Семенова Дарья Ивановна' |'Электроэнергия' |'ввод_Электроэнергия' |'Начисление'   |'По приборам'            |'Ночь'        |'2,430'         |'26.07.2020'   |'26.08.2020'  |'208,20'  |'85,680000'   |''                 |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                   |Услуга           |Точка учета           |Вид начисления |Способ начисления        |Тарифная зона |Значение тарифа |Начало периода |Конец периода |Сумма     |Объем услуги  |Объем потребленный |
        |'25.08.2020 23:59:59' |'Семенова Дарья Ивановна' |'Электроэнергия' |'ввод_Электроэнергия' |'Начисление'   |'По приборам'            |'День'        |'4,490'         |'26.07.2020'   |'26.08.2020'  |''        |''            |'158,000000'       |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                   |Услуга           |Точка учета           |Вид начисления |Способ начисления        |Тарифная зона |Значение тарифа |Начало периода |Конец периода |Сумма     |Объем услуги  |Объем потребленный |
        |'25.08.2020 23:59:59' |'Семенова Дарья Ивановна' |'Электроэнергия' |'ввод_Электроэнергия' |'Начисление'   |'По приборам'            |'Ночь'        |'2,430'         |'26.07.2020'   |'26.08.2020'  |''        |''            |'84,000000'        |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                   |Услуга           |Точка учета           |Вид начисления |Способ начисления        |Тарифная зона |Значение тарифа |Начало периода |Конец периода |Сумма     |Объем услуги  |Объем потребленный |
        |'25.08.2020 23:59:59' |'Семенова Дарья Ивановна' |'Электроэнергия' |'ввод_Электроэнергия' |'Перерасчет'   |'Среднее по нормативу'   |'Сутки'       |'4,270'         |''             |''            |'-947,94' |'-222,000000' |'-222,000000'      |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                   |Услуга           |Точка учета           |Вид начисления |Способ начисления        |Тарифная зона |Значение тарифа |Начало периода |Конец периода |Сумма     |Объем услуги  |Объем потребленный |
        |'25.09.2020 23:59:59' |'Семенова Дарья Ивановна' |'Электроэнергия' |'ввод_Электроэнергия' |'Начисление'   |'Начисление по среднему' |'День'        |'4,490'         |'26.08.2020'   |'26.09.2020'  |''        |''            |'101,333333'       |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                   |Услуга           |Точка учета           |Вид начисления |Способ начисления        |Тарифная зона |Значение тарифа |Начало периода |Конец периода |Сумма     |Объем услуги  |Объем потребленный |
        |'25.09.2020 23:59:59' |'Семенова Дарья Ивановна' |'Электроэнергия' |'ввод_Электроэнергия' |'Начисление'   |'Начисление по среднему' |'Ночь'        |'2,430'         |'26.08.2020'   |'26.09.2020'  |''        |''            |'64,000000'        |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                   |Услуга           |Точка учета           |Вид начисления |Способ начисления        |Тарифная зона |Значение тарифа |Начало периода |Конец периода |Сумма     |Объем услуги  |Объем потребленный |
        |'25.09.2020 23:59:59' |'Семенова Дарья Ивановна' |'Электроэнергия' |'ввод_Электроэнергия' |'Начисление'   |'Начисление по среднему' |'День'        |'4,490'         |'26.08.2020'   |'26.09.2020'  |'464,09'  |'103,360000'  |''                 |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                   |Услуга           |Точка учета           |Вид начисления |Способ начисления        |Тарифная зона |Значение тарифа |Начало периода |Конец периода |Сумма     |Объем услуги  |Объем потребленный |
        |'25.09.2020 23:59:59' |'Семенова Дарья Ивановна' |'Электроэнергия' |'ввод_Электроэнергия' |'Начисление'   |'Начисление по среднему' |'Ночь'        |'2,430'         |'26.08.2020'   |'26.09.2020'  |'158,63'  |'65,280000'   |''                 |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                   |Услуга           |Точка учета           |Вид начисления |Способ начисления        |Тарифная зона |Значение тарифа |Начало периода |Конец периода |Сумма     |Объем услуги  |Объем потребленный |
        |'25.10.2020 23:59:59' |'Семенова Дарья Ивановна' |'Электроэнергия' |'ввод_Электроэнергия' |'Начисление'   |'По приборам'            |'День'        |'4,490'         |'26.09.2020'   |'26.10.2020'  |'329,75'  |'73,440000'   |''                 |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                   |Услуга           |Точка учета           |Вид начисления |Способ начисления        |Тарифная зона |Значение тарифа |Начало периода |Конец периода |Сумма     |Объем услуги  |Объем потребленный |
        |'25.10.2020 23:59:59' |'Семенова Дарья Ивановна' |'Электроэнергия' |'ввод_Электроэнергия' |'Начисление'   |'По приборам'            |'Ночь'        |'2,430'         |'26.09.2020'   |'26.10.2020'  |'168,54'  |'69,360000'   |''                 |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                   |Услуга           |Точка учета           |Вид начисления |Способ начисления        |Тарифная зона |Значение тарифа |Начало периода |Конец периода |Сумма     |Объем услуги  |Объем потребленный |
        |'25.10.2020 23:59:59' |'Семенова Дарья Ивановна' |'Электроэнергия' |'ввод_Электроэнергия' |'Начисление'   |'По приборам'            |'День'        |'4,490'         |'26.09.2020'   |'26.10.2020'  |''        |''            |'72,000000'        |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                   |Услуга           |Точка учета           |Вид начисления |Способ начисления        |Тарифная зона |Значение тарифа |Начало периода |Конец периода |Сумма     |Объем услуги  |Объем потребленный |
        |'25.10.2020 23:59:59' |'Семенова Дарья Ивановна' |'Электроэнергия' |'ввод_Электроэнергия' |'Начисление'   |'По приборам'            |'Ночь'        |'2,430'         |'26.09.2020'   |'26.10.2020'  |''        |''            |'68,000000'        |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                   |Услуга           |Точка учета           |Вид начисления |Способ начисления        |Тарифная зона |Значение тарифа |Начало периода |Конец периода |Сумма     |Объем услуги  |Объем потребленный |
        |'25.10.2020 23:59:59' |'Семенова Дарья Ивановна' |'Электроэнергия' |'ввод_Электроэнергия' |'Перерасчет'   |'Начисление по среднему' |'День'        |'2,430'         |''             |''            |'-464,09' |'-103,360000' |'-101,333333'      |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                   |Услуга           |Точка учета           |Вид начисления |Способ начисления        |Тарифная зона |Значение тарифа |Начало периода |Конец периода |Сумма     |Объем услуги  |Объем потребленный |
        |'25.10.2020 23:59:59' |'Семенова Дарья Ивановна' |'Электроэнергия' |'ввод_Электроэнергия' |'Перерасчет'   |'Начисление по среднему' |'Ночь'        |'4,490'         |''             |''            |'-158,63' |'-65,280000'  |'-64,000000'       |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                   |Услуга           |Точка учета           |Вид начисления |Способ начисления        |Тарифная зона |Значение тарифа |Начало периода |Конец периода |Сумма     |Объем услуги  |Объем потребленный |
        |'25.11.2020 23:59:59' |'Семенова Дарья Ивановна' |'Электроэнергия' |'ввод_Электроэнергия' |'Начисление'   |'По приборам'            |'День'        |'4,490'         |'26.10.2020'   |'26.11.2020'  |''        |''            |'94,000000'        |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                   |Услуга           |Точка учета           |Вид начисления |Способ начисления        |Тарифная зона |Значение тарифа |Начало периода |Конец периода |Сумма     |Объем услуги  |Объем потребленный |
        |'25.11.2020 23:59:59' |'Семенова Дарья Ивановна' |'Электроэнергия' |'ввод_Электроэнергия' |'Начисление'   |'По приборам'            |'Ночь'        |'2,430'         |'26.10.2020'   |'26.11.2020'  |''        |''            |'64,000000'        |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                   |Услуга           |Точка учета           |Вид начисления |Способ начисления        |Тарифная зона |Значение тарифа |Начало периода |Конец периода |Сумма     |Объем услуги  |Объем потребленный |
        |'25.11.2020 23:59:59' |'Семенова Дарья Ивановна' |'Электроэнергия' |'ввод_Электроэнергия' |'Начисление'   |'По приборам'            |'День'        |'4,490'         |'26.10.2020'   |'26.11.2020'  |'430,50'  |'95,880000'   |''                 |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                   |Услуга           |Точка учета           |Вид начисления |Способ начисления        |Тарифная зона |Значение тарифа |Начало периода |Конец периода |Сумма     |Объем услуги  |Объем потребленный |
        |'25.11.2020 23:59:59' |'Семенова Дарья Ивановна' |'Электроэнергия' |'ввод_Электроэнергия' |'Начисление'   |'По приборам'            |'Ночь'        |'2,430'         |'26.10.2020'   |'26.11.2020'  |'158,63'  |'65,280000'   |''                 |