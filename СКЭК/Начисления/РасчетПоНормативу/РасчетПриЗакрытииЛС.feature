#language: ru
@tree
@card "https://trello.com/c/HmEN6cEL"
Функционал: <описание фичи>
Как <Роль>
Я хочу <проверить расчет расчет по показаниям>
Чтобы <бизнес-эффект>
Карточка "https://trello.com/c/HmEN6cEL"

Контекст:
    Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: <РасчетПриЗакрытииЛС>
    И я подготавливаю тестовые данные
        И я загружаю макет "РасчетПриЗакрытииЛС"
    И я перепровожу загруженные данные
        И В командном интерфейсе я выбираю 'Администрирование' 'Ввод начальных остатков'
        Тогда открылось окно 'Ввод начальных остатков'
        И в таблице 'Список' я выделяю все строки
        И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюПровести' на элементе формы с именем "Список"
        И В командном интерфейсе я выбираю 'Работа с абонентами' 'Открытие/закрытие лс физического лица'
        Тогда открылось окно 'Открытие/закрытие лс физического лица'
        И в таблице 'Список' я выделяю все строки
        И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюПровести' на элементе формы с именем "Список"
    И Я запускаю выполнение начислений по организации 'ООО "ПКС"' и району 'Окуневское СП Промышленновского р-на' и МКД '' с 'Апрель' '2019' по 'Июнь 2020'
    И я проверяю полученные результаты
        И Я открываю навигационную ссылку "e1cib/list/РегистрНакопления.энргОбъемНачислений"
        Тогда открылось окно 'Объем начислений'
        И я нажимаю на кнопку с именем 'ФормаУстановитьИнтервал'
        Тогда открылось окно 'Выберите период'
        И в поле 'DateBegin' я ввожу текст '01.04.2020'
        И в поле 'DateEnd' я ввожу текст '30.06.2020'
        И я перехожу к следующему реквизиту
        И я нажимаю на кнопку 'Выбрать'
        Тогда открылось окно 'Объем начислений'
        Тогда в таблице "Список" количество строк "равно" 4
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                   |Услуга                   |Точка учета                   |Способ начисления |Направление использования ТУ |Измеритель        |Значение тарифа |Период расчета |Период начисления |Сверх норматива |Сумма   |Объем услуги |Объем потребленный |Начало периода |Конец периода |
        |'30.04.2020 23:59:59' |'Эйман Екатерина Юрьевна' |'Холодное водоснабжение' |'ввод_Холодное водоснабжение' |'По нормативу'    |'Основное направление'       |''                |'20,420'        |'01.04.2020'   |'01.04.2020'      |'Нет'           |'59,08' |'2,893333'   |''                 |'01.04.2020'   |'15.04.2020'  |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                   |Услуга                   |Точка учета                   |Способ начисления |Направление использования ТУ |Измеритель        |Значение тарифа |Период расчета |Период начисления |Сверх норматива |Сумма   |Объем услуги |Объем потребленный |Начало периода |Конец периода |
        |'30.04.2020 23:59:59' |'Эйман Екатерина Юрьевна' |'Холодное водоснабжение' |'ввод_Холодное водоснабжение' |'По нормативу'    |'Основное направление'       |''                |'20,420'        |'01.04.2020'   |'01.04.2020'      |'Нет'           |''      |''           |'2,893333'         |'01.04.2020'   |'15.04.2020'  |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                   |Услуга                   |Точка учета                   |Способ начисления |Направление использования ТУ |Измеритель        |Значение тарифа |Период расчета |Период начисления |Сверх норматива |Сумма   |Объем услуги |Объем потребленный |Начало периода |Конец периода |
        |'30.04.2020 23:59:59' |'Эйман Екатерина Юрьевна' |'Холодное водоснабжение' |'баня_Холодное водоснабжение' |'По нормативу'    |'мытье в бане'               |'кол-во мойщиков' |'20,420'        |'01.04.2020'   |'01.04.2020'      |'Нет'           |''      |''           |'0,466667'         |'01.04.2020'   |'15.04.2020'  |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                   |Услуга                   |Точка учета                   |Способ начисления |Направление использования ТУ |Измеритель        |Значение тарифа |Период расчета |Период начисления |Сверх норматива |Сумма   |Объем услуги |Объем потребленный |Начало периода |Конец периода |
        |'30.04.2020 23:59:59' |'Эйман Екатерина Юрьевна' |'Холодное водоснабжение' |'баня_Холодное водоснабжение' |'По нормативу'    |'мытье в бане'               |'кол-во мойщиков' |'20,420'        |'01.04.2020'   |'01.04.2020'      |'Нет'           |'9,53'  |'0,466667'   |''                 |'01.04.2020'   |'15.04.2020'  |