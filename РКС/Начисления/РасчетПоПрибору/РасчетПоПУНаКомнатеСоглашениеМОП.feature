#language: ru
@tree
Функционал: <описание фичи>
Как <Роль>
Я хочу <проверить расчет расчет по показаниям>
Чтобы <бизнес-эффект>
Карточка "https://trello.com/c/dznzWAFn/2151"

Контекст:
    Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: <РасчетПоНормативу>
    И Я запускаю выполнение начислений по организации 'ООО "РКС-энерго"' и району 'Волховский район' и МКД '' с 'Июнь' '2020' по 'Июнь 2020'
    И Я проверяю полученные результаты
        И Я открываю навигационную ссылку "e1cib/list/РегистрНакопления.энргОбъемНачислений"
        Тогда открылось окно 'Объем начислений'
        И в таблице "Список" я нажимаю на кнопку с именем 'СписокНайти'
        Тогда открылось окно 'Найти'
        И из выпадающего списка "&Где искать" я выбираю точное значение 'Помещение родитель'
        И из выпадающего списка "&Что искать" я выбираю по строке 'Квартира 3'
        И я нажимаю на кнопку '&Найти'
        Тогда открылось окно 'Объем начислений'
        Тогда в таблице "Список" количество строк "равно" 4
        И в таблице "Список" я перехожу к строке:
        |Период                |Строение                             |Помещение               |Абонент                       |Услуга           |Точка учета           |Вид начисления |Способ начисления |Тарифная зона |Значение тарифа |Начало периода |Конец периода |Сумма    |Объем услуги |Объем потребленный |
        |'25.06.2020 23:59:59' |'Волхов г, Маяковского ул, Дом № 11' |'Квартира 3, Комната 1' |'Давыдов Николай Степанович'  |'Электроэнергия' |'ввод_Электроэнергия' |'Начисление'   |'По приборам'     |'Без ПУ'      |'3,110'         |'26.05.2020'   |'26.06.2020'  |''       |''           |'29,000000'        |
        И в таблице "Список" я перехожу к строке:
        |Период                |Строение                             |Помещение               |Абонент                       |Услуга           |Точка учета           |Вид начисления |Способ начисления |Тарифная зона |Значение тарифа |Начало периода |Конец периода |Сумма    |Объем услуги |Объем потребленный |
        |'25.06.2020 23:59:59' |'Волхов г, Маяковского ул, Дом № 11' |'Квартира 3, Комната 1' |'Давыдов Николай Степанович'  |'Электроэнергия' |'ввод_Электроэнергия' |'Начисление'   |'По приборам'     |'Без ПУ'      |'3,110'         |'26.05.2020'   |'26.06.2020'  |'90,19'  |'29,000000'  |''                 |
        И в таблице "Список" я перехожу к строке:
        |Период                |Строение                             |Помещение               |Абонент                       |Услуга           |Точка учета           |Вид начисления |Способ начисления |Тарифная зона |Значение тарифа |Начало периода |Конец периода |Сумма    |Объем услуги |Объем потребленный |
        |'25.06.2020 23:59:59' |'Волхов г, Маяковского ул, Дом № 11' |'Квартира 3, Комната 2' |'Властная Анна Александровна' |'Электроэнергия' |'ввод_Электроэнергия' |'Начисление'   |'По приборам'     |'Без ПУ'      |'3,110'         |'26.05.2020'   |'26.06.2020'  |''       |''           |'71,000000'        |
        И в таблице "Список" я перехожу к строке:
        |Период                |Строение                             |Помещение               |Абонент                       |Услуга           |Точка учета           |Вид начисления |Способ начисления |Тарифная зона |Значение тарифа |Начало периода |Конец периода |Сумма    |Объем услуги |Объем потребленный |
        |'25.06.2020 23:59:59' |'Волхов г, Маяковского ул, Дом № 11' |'Квартира 3, Комната 2' |'Властная Анна Александровна' |'Электроэнергия' |'ввод_Электроэнергия' |'Начисление'   |'По приборам'     |'Без ПУ'      |'3,110'         |'26.05.2020'   |'26.06.2020'  |'220,81' |'71,000000'  |''                 |