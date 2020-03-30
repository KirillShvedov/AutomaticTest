#language: ru
@tree
Функционал: <описание фичи>
"https://trello.com/c/pewLcPB7"
Как <Роль>
Я хочу <проверить расчет среднего начисления в случае двух приборов учета и последующей замены. Абонент Бондарев>
Чтобы <бизнес-эффект>

Контекст:
    Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: <РасчетПоСоцНорме>
    И я подготавливаю тестовые данные
        И я загружаю макет "РасчетПоСоцНорме"        
    И я перепровожу загруженные данные
        И Я перепровожу все документы абонента "Еремина Нина Анатольевна"
    И Я запускаю выполнение начислений по организации 'ОАО "СКЭК"' и району 'Плотниковское СП Промышленновского р-на' и МКД '' с 'Июль' '2019' по 'Декабрь 2019'
    И Я проверяю полученные результаты
        И Я открываю навигационную ссылку "e1cib/list/РегистрНакопления.энргОбъемНачислений"
        Тогда открылось окно 'Объем начислений'
        И в таблице "Список" я активизирую поле "Услуга"
        И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюНайти' на элементе формы с именем "Список"
        Тогда открылось окно 'Найти'
        И из выпадающего списка "&Что искать" я выбираю по строке 'Отопление'
        И я перехожу к следующему реквизиту
        И я нажимаю на кнопку '&Найти'
        Тогда открылось окно 'Объем начислений'
        И в таблице "Список" я активизирую поле "Абонент"
        И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюНайти' на элементе формы с именем "Список"
        Тогда открылось окно 'Найти'
        И из выпадающего списка "&Что искать" я выбираю по строке 'Еремина Нина Анатольевна'
        И я перехожу к следующему реквизиту
        И я нажимаю на кнопку '&Найти'
        Тогда открылось окно 'Объем начислений'
        Тогда в таблице "Список" количество строк "равно" 13
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                    |Услуга      |Точка учета      |Период расчета |Период начисления |Сверх норматива |Начало периода |Конец периода |
        |'31.07.2019 23:59:59' |'Еремина Нина Анатольевна' |'Отопление' |'узел_Отопление' |'01.07.2019'   |'01.07.2019'      |'Нет'           |'01.07.2019'   |'01.08.2019'  |
        И в таблице "Список" текущая строка равна:
        |Сумма     |Объем услуги |Объем потребленный |
        |'825,69'  |'0,824175'   |'1,703295'         |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                    |Услуга      |Точка учета      |Период расчета |Период начисления |Сверх норматива |Начало периода |Конец периода |
        |'31.07.2019 23:59:59' |'Еремина Нина Анатольевна' |'Отопление' |'узел_Отопление' |'01.07.2019'   |'01.07.2019'      |'Да'            |'01.07.2019'   |'01.08.2019'  |
        И в таблице "Список" текущая строка равна:
        |Сумма      |Объем услуги |Объем потребленный |
        |'1 142,86' |'0,879120'   |''                 |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                    |Услуга      |Точка учета      |Период расчета |Период начисления |Сверх норматива |Начало периода |Конец периода |
        |'31.08.2019 23:59:59' |'Еремина Нина Анатольевна' |'Отопление' |'узел_Отопление' |'01.08.2019'   |'01.08.2019'      |'Нет'           |'01.08.2019'   |'01.09.2019'  |
        И в таблице "Список" текущая строка равна:
        |Сумма     |Объем услуги |Объем потребленный |
        |'825,69'  |'0,824175'   |'1,703295'         |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                    |Услуга      |Точка учета      |Период расчета |Период начисления |Сверх норматива |Начало периода |Конец периода |
        |'31.08.2019 23:59:59' |'Еремина Нина Анатольевна' |'Отопление' |'узел_Отопление' |'01.08.2019'   |'01.08.2019'      |'Да'            |'01.08.2019'   |'01.09.2019'  |
        И в таблице "Список" текущая строка равна:
        |Сумма      |Объем услуги |Объем потребленный |
        |'1 142,86' |'0,879120'   |''                 |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                    |Услуга      |Точка учета      |Период расчета |Период начисления |Сверх норматива |Начало периода |Конец периода |
        |'30.09.2019 23:59:59' |'Еремина Нина Анатольевна' |'Отопление' |'узел_Отопление' |'01.09.2019'   |'01.09.2019'      |'Нет'           |'01.09.2019'   |'15.09.2019'  |
        И в таблице "Список" текущая строка равна:
        |Сумма     |Объем услуги |Объем потребленный |
        |'796,33'  |'0,794871'   |'0,794871'         |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                    |Услуга      |Точка учета      |Период расчета |Период начисления |Сверх норматива |Начало периода |Конец периода |
        |'30.09.2019 23:59:59' |'Еремина Нина Анатольевна' |'Отопление' |'узел_Отопление' |'01.09.2019'   |'01.09.2019'      |'Нет'           |'15.09.2019'   |'01.10.2019'  |
        И в таблице "Список" текущая строка равна:
        |Сумма     |Объем услуги |Объем потребленный |
        |'29,36'   |'0,029304'   |'0,908424'         |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                    |Услуга      |Точка учета      |Период расчета |Период начисления |Сверх норматива |Начало периода |Конец периода |
        |'30.09.2019 23:59:59' |'Еремина Нина Анатольевна' |'Отопление' |'узел_Отопление' |'01.09.2019'   |'01.09.2019'      |'Да'            |'15.09.2019'   |'01.10.2019'  |
        И в таблице "Список" текущая строка равна:
        |Сумма      |Объем услуги |Объем потребленный |
        |'1 142,86' |'0,879120'   |''                 |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                    |Услуга      |Точка учета      |Период расчета |Период начисления |Сверх норматива |Начало периода |Конец периода |
        |'31.10.2019 23:59:59' |'Еремина Нина Анатольевна' |'Отопление' |'узел_Отопление' |'01.10.2019'   |'01.10.2019'      |'Нет'           |'01.10.2019'   |'01.11.2019'  |
        И в таблице "Список" текущая строка равна:
        |Сумма     |Объем услуги |Объем потребленный |
        |'825,69'  |'0,824175'   |'1,703295'         |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                    |Услуга      |Точка учета      |Период расчета |Период начисления |Сверх норматива |Начало периода |Конец периода |
        |'31.10.2019 23:59:59' |'Еремина Нина Анатольевна' |'Отопление' |'узел_Отопление' |'01.10.2019'   |'01.10.2019'      |'Да'            |'01.10.2019'   |'01.11.2019'  |
        И в таблице "Список" текущая строка равна:
        |Сумма      |Объем услуги |Объем потребленный |
        |'1 142,86' |'0,879120'   |''                 |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                    |Услуга      |Точка учета      |Период расчета |Период начисления |Сверх норматива |Начало периода |Конец периода |
        |'30.11.2019 23:59:59' |'Еремина Нина Анатольевна' |'Отопление' |'узел_Отопление' |'01.11.2019'   |'01.11.2019'      |'Нет'           |'01.11.2019'   |'01.12.2019'  |
        И в таблице "Список" текущая строка равна:
        |Сумма     |Объем услуги |Объем потребленный |
        |'825,69'  |'0,824175'   |'1,703295'         |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                    |Услуга      |Точка учета      |Период расчета |Период начисления |Сверх норматива |Начало периода |Конец периода |
        |'30.11.2019 23:59:59' |'Еремина Нина Анатольевна' |'Отопление' |'узел_Отопление' |'01.11.2019'   |'01.11.2019'      |'Да'            |'01.11.2019'   |'01.12.2019'  |
        И в таблице "Список" текущая строка равна:
        |Сумма      |Объем услуги |Объем потребленный |
        |'1 142,86' |'0,879120'   |''                 |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                    |Услуга      |Точка учета      |Период расчета |Период начисления |Сверх норматива |Начало периода |Конец периода |
        |'31.12.2019 23:59:59' |'Еремина Нина Анатольевна' |'Отопление' |'узел_Отопление' |'01.12.2019'   |'01.12.2019'      |'Нет'           |'01.12.2019'   |'01.01.2020'  |
        И в таблице "Список" текущая строка равна:
        |Сумма     |Объем услуги |Объем потребленный |
        |'825,69' |'0,824175'   |'1,703295'          |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                    |Услуга      |Точка учета      |Период расчета |Период начисления |Сверх норматива |Начало периода |Конец периода |
        |'31.12.2019 23:59:59' |'Еремина Нина Анатольевна' |'Отопление' |'узел_Отопление' |'01.12.2019'   |'01.12.2019'      |'Да'           |'01.12.2019'   |'01.01.2020'   |
        И в таблице "Список" текущая строка равна:
        |Сумма      |Объем услуги |Объем потребленный |
        |'1 142,86' |'0,879120'   |''                 |