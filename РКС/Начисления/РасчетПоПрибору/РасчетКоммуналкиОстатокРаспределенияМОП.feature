#language: ru
    @tree
    Функционал: <описание фичи>
    Как <Роль>
    Я хочу <проверить расчет расчет по показаниям>
    Чтобы <бизнес-эффект>
    Карточка "https://trello.com/c/hoPyo8uB/2156"

    Контекст:
    Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

    Сценарий: <РасчетПоНормативу>
    И я подготавливаю тестовые данные
        И я загружаю макет "РасчетКоммуналкиОстатокРаспределенияМОП.mxl"
    И я перепровожу загруженные данные
        И Я перепровожу все документы абонента "Покровская Галина Михайловна"
    И Я запускаю выполнение начислений по организации 'ООО "РКС-энерго"' и району 'Волховский район' и МКД '' с 'Июнь' '2020' по 'Июнь 2020'
    И Я проверяю полученные результаты
        И Я открываю навигационную ссылку "e1cib/list/РегистрНакопления.энргОбъемНачислений"
        Тогда открылось окно 'Объем начислений'
        Тогда в таблице "Список" количество строк "равно" 4
        И в таблице "Список" я перехожу к строке:
        |Период                |Строение                             |Помещение               |Абонент                        |Услуга           |Точка учета           |Вид начисления   |Способ начисления |Тарифная зона |Значение тарифа |Начало периода |Конец периода |
        |'25.06.2020 23:59:59' |'Волхов г, Маяковского ул, Дом № 11' |'Квартира 4, Комната 2' |'Покровская Галина Михайловна' |'Электроэнергия' |'ввод_Электроэнергия' |'Начисление'     |'По приборам'     |'Без ПУ'      |'3,110'         |'26.05.2020'   |'26.06.2020'  |
        И в таблице "Список" текущая строка равна:
        |Сумма    |Объем услуги |Объем потребленный |
        |''       |''           |'57,000000'        |
        И в таблице "Список" я перехожу к строке:
        |Период                |Строение                             |Помещение               |Абонент                        |Услуга           |Точка учета           |Вид начисления   |Способ начисления |Тарифная зона |Значение тарифа |Начало периода |Конец периода |
        |'25.06.2020 23:59:59' |'Волхов г, Маяковского ул, Дом № 11' |'Квартира 4, Комната 2' |'Покровская Галина Михайловна' |'Электроэнергия' |'ввод_Электроэнергия' |'Начисление'     |'По приборам'     |'Без ПУ'      |'3,110'         |'26.05.2020'   |'26.06.2020'  |
        И в таблице "Список" текущая строка равна:
        |Сумма    |Объем услуги |Объем потребленный |
        |'177,27' |'57,000000'  |''                 |
        И в таблице "Список" я перехожу к строке:
        |Период                |Строение                             |Помещение               |Абонент                        |Услуга           |Точка учета           |Вид начисления   |Способ начисления |Тарифная зона |Значение тарифа |Начало периода |Конец периода |
        |'25.06.2020 23:59:59' |'Волхов г, Маяковского ул, Дом № 11' |'Квартира 4, Комната 2' |'Покровская Галина Михайловна' |'Электроэнергия' |''                    |'Начисление ОДН' |'По нормативу'    |'Без ПУ'      |'3,110'         |''             |''            |
        И в таблице "Список" текущая строка равна:
        |Сумма    |Объем услуги |Объем потребленный |
        |'30,21'  |'9,714286'   |''                 |
        И в таблице "Список" я перехожу к строке:
        |Период                |Строение                             |Помещение               |Абонент                        |Услуга           |Точка учета           |Вид начисления   |Способ начисления |Тарифная зона |Значение тарифа |Начало периода |Конец периода |
        |'25.06.2020 23:59:59' |'Волхов г, Маяковского ул, Дом № 11' |'Квартира 4, Комната 2' |'Покровская Галина Михайловна' |'Электроэнергия' |''                    |'Начисление'     |'По нормативу'    |'Без ПУ'      |'3,110'         |''             |''            |
        И в таблице "Список" текущая строка равна:
        |Сумма    |Объем услуги |Объем потребленный |
        |''       |''           |'9,714286'         |