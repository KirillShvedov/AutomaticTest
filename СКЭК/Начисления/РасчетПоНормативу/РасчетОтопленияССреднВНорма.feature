#language: ru
@tree
@сard2 "https://trello.com/c/UUmo1qTL"
Функционал: <описание фичи>
Как <Роль>
Я хочу <проверить расчет расчет по показаниям>
Чтобы <бизнес-эффект>

Контекст:
    Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: <РасчетОтопленияССреднВНорма>
    И я подготавливаю тестовые данные
        И я загружаю макет "РасчетОтопленияССреднВНорма"
    И я перепровожу загруженные данные
        И В командном интерфейсе я выбираю 'Администрирование' 'Ввод начальных остатков'
        Тогда открылось окно 'Ввод начальных остатков'
        И в таблице 'Список' я выделяю все строки
        И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюПровести' на элементе формы с именем "Список"
        И В командном интерфейсе я выбираю 'Работа с абонентами' 'Регистрация показаний абонента'
        И в таблице 'Список' я выделяю все строки
        И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюПровести' на элементе формы с именем "Список"
    И Я запускаю выполнение начислений по организации 'ОАО "СКЭК"' и району 'Березовский городской округ' и МКД '' с 'Июль' '2019' по 'Май 2021'
    И я проверяю полученные результаты
        И Я открываю навигационную ссылку "e1cib/list/РегистрНакопления.энргОбъемНачислений"
        Тогда открылось окно 'Объем начислений'
        И в таблице "Список" я активизирую поле "Услуга"
        И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюНайти' на элементе формы с именем "Список"
        Тогда открылось окно 'Найти'
        И из выпадающего списка "&Что искать" я выбираю по строке 'Отопление'
        И я нажимаю на кнопку '&Найти'
        Тогда открылось окно 'Объем начислений'
        И в таблице "Список" я активизирую поле "Абонент"
        И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюНайти' на элементе формы с именем "Список"
        Тогда открылось окно 'Найти'
        И из выпадающего списка "&Что искать" я выбираю по строке 'Маркидонов Александр Александрович'
        И я нажимаю на кнопку '&Найти'
        Тогда открылось окно 'Объем начислений'
        И я нажимаю на кнопку с именем 'ФормаУстановитьИнтервал'
        Тогда открылось окно 'Выберите период'
        И в поле 'DateBegin' я ввожу текст '01.01.2021'
        И в поле 'DateEnd' я ввожу текст '31.05.2021'
        И я перехожу к следующему реквизиту
        И я нажимаю на кнопку 'Выбрать'
        #Январь 21
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                              |Услуга      |Точка учета      |Способ начисления              |Значение тарифа |Период расчета |Период начисления |Сверх норматива |Сумма      |Объем услуги |Объем потребленный |Объем услуги соц норма |Объем услуги потребленный соц норма |Конец периода |Начало периода |
        |'31.01.2021 23:59:59' |'Маркидонов Александр Александрович' |'Отопление' |'узел_Отопление' |'Начисление по среднему'       |'1 729,660'     |'01.01.2021'   |'01.01.2021'      |'Нет'           |'944,82'   |'0,546247'   |''                 |'0,546247'             |''                                  |'01.02.2021'  |'01.01.2021'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                              |Услуга      |Точка учета      |Способ начисления              |Значение тарифа |Период расчета |Период начисления |Сверх норматива |Сумма      |Объем услуги |Объем потребленный |Объем услуги соц норма |Объем услуги потребленный соц норма |Конец периода |Начало периода |
        |'31.01.2021 23:59:59' |'Маркидонов Александр Александрович' |'Отопление' |'узел_Отопление' |'Начисление по среднему'       |'1 729,660'     |'01.01.2021'   |'01.01.2021'      |'Нет'           |''         |''           |'0,728330'         |''                     |'0,728330'                          |'01.02.2021'  |'01.01.2021'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                              |Услуга      |Точка учета      |Способ начисления              |Значение тарифа |Период расчета |Период начисления |Сверх норматива |Сумма      |Объем услуги |Объем потребленный |Объем услуги соц норма |Объем услуги потребленный соц норма |Конец периода |Начало периода |
        |'31.01.2021 23:59:59' |'Маркидонов Александр Александрович' |'Отопление' |'узел_Отопление' |'Начисление по среднему'       |'1 729,660'     |'01.01.2021'   |'01.01.2021'      |'Да'            |'1 551,80' |'0,897170'   |''                 |''                     |''                                  |'01.02.2021'  |'01.01.2021'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                              |Услуга      |Точка учета      |Способ начисления              |Значение тарифа |Период расчета |Период начисления |Сверх норматива |Сумма      |Объем услуги |Объем потребленный |Объем услуги соц норма |Объем услуги потребленный соц норма |Конец периода |Начало периода |
        |'31.01.2021 23:59:59' |'Маркидонов Александр Александрович' |'Отопление' |'узел_Отопление' |'Начисление по среднему'       |'1 729,660'     |'01.01.2021'   |'01.01.2021'      |'Да'            |''         |''           |'1,196226'         |''                     |''                                  |'01.02.2021'  |'01.01.2021'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                              |Услуга      |Точка учета      |Способ начисления              |Значение тарифа |Период расчета |Период начисления |Сверх норматива |Сумма      |Объем услуги |Объем потребленный |Объем услуги соц норма |Объем услуги потребленный соц норма |Конец периода |Начало периода |
        |'31.01.2021 23:59:59' |'Маркидонов Александр Александрович' |'Отопление' |''               |'Корректировка сезонных услуг' |'1 729,660'     |''             |'01.01.2021'      |'Нет'           |'-74,37'   |'-0,042998'  |''                 |''                     |''                                  |''            |''             |
        #Февраль 21
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                              |Услуга      |Точка учета      |Способ начисления              |Значение тарифа |Период расчета |Период начисления |Сверх норматива |Сумма      |Объем услуги |Объем потребленный |Объем услуги соц норма |Объем услуги потребленный соц норма |Конец периода |Начало периода |
        |'28.02.2021 23:59:59' |'Маркидонов Александр Александрович' |'Отопление' |'узел_Отопление' |'Начисление по среднему'       |'1 729,660'     |'01.02.2021'   |'01.02.2021'      |'Нет'           |'944,82'   |'0,546247'   |''                 |'0,546247'             |''                                  |'01.03.2021'  |'01.02.2021'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                              |Услуга      |Точка учета      |Способ начисления              |Значение тарифа |Период расчета |Период начисления |Сверх норматива |Сумма      |Объем услуги |Объем потребленный |Объем услуги соц норма |Объем услуги потребленный соц норма |Конец периода |Начало периода |
        |'28.02.2021 23:59:59' |'Маркидонов Александр Александрович' |'Отопление' |'узел_Отопление' |'Начисление по среднему'       |'1 729,660'     |'01.02.2021'   |'01.02.2021'      |'Нет'           |''         |''           |'0,728330'         |''                     |'0,728330'                          |'01.03.2021'  |'01.02.2021'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                              |Услуга      |Точка учета      |Способ начисления              |Значение тарифа |Период расчета |Период начисления |Сверх норматива |Сумма      |Объем услуги |Объем потребленный |Объем услуги соц норма |Объем услуги потребленный соц норма |Конец периода |Начало периода |
        |'28.02.2021 23:59:59' |'Маркидонов Александр Александрович' |'Отопление' |'узел_Отопление' |'Начисление по среднему'       |'1 729,660'     |'01.02.2021'   |'01.02.2021'      |'Да'            |'1 551,80' |'0,897170'   |''                 |''                     |''                                  |'01.03.2021'  |'01.02.2021'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                              |Услуга      |Точка учета      |Способ начисления              |Значение тарифа |Период расчета |Период начисления |Сверх норматива |Сумма      |Объем услуги |Объем потребленный |Объем услуги соц норма |Объем услуги потребленный соц норма |Конец периода |Начало периода |
        |'28.02.2021 23:59:59' |'Маркидонов Александр Александрович' |'Отопление' |'узел_Отопление' |'Начисление по среднему'       |'1 729,660'     |'01.02.2021'   |'01.02.2021'      |'Да'            |''         |''           |'1,196226'         |''                     |''                                  |'01.03.2021'  |'01.02.2021'   |
        #Март 21
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                              |Услуга      |Точка учета      |Способ начисления              |Значение тарифа |Период расчета |Период начисления |Сверх норматива |Сумма      |Объем услуги |Объем потребленный |Объем услуги соц норма |Объем услуги потребленный соц норма |Конец периода |Начало периода |
        |'31.03.2021 23:59:59' |'Маркидонов Александр Александрович' |'Отопление' |'узел_Отопление' |'Начисление по среднему'       |'1 729,660'     |'01.03.2021'   |'01.03.2021'      |'Нет'           |'944,82'   |'0,546247'   |''                 |'0,546247'             |''                                  |'01.04.2021'  |'01.03.2021'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                              |Услуга      |Точка учета      |Способ начисления              |Значение тарифа |Период расчета |Период начисления |Сверх норматива |Сумма      |Объем услуги |Объем потребленный |Объем услуги соц норма |Объем услуги потребленный соц норма |Конец периода |Начало периода |
        |'31.03.2021 23:59:59' |'Маркидонов Александр Александрович' |'Отопление' |'узел_Отопление' |'Начисление по среднему'       |'1 729,660'     |'01.03.2021'   |'01.03.2021'      |'Нет'           |''         |''           |'0,728330'         |''                     |'0,728330'                          |'01.04.2021'  |'01.03.2021'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                              |Услуга      |Точка учета      |Способ начисления              |Значение тарифа |Период расчета |Период начисления |Сверх норматива |Сумма      |Объем услуги |Объем потребленный |Объем услуги соц норма |Объем услуги потребленный соц норма |Конец периода |Начало периода |
        |'31.03.2021 23:59:59' |'Маркидонов Александр Александрович' |'Отопление' |'узел_Отопление' |'Начисление по среднему'       |'1 729,660'     |'01.03.2021'   |'01.03.2021'      |'Да'            |'1 551,80' |'0,897170'   |''                 |''                     |''                                  |'01.04.2021'  |'01.03.2021'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                              |Услуга      |Точка учета      |Способ начисления              |Значение тарифа |Период расчета |Период начисления |Сверх норматива |Сумма      |Объем услуги |Объем потребленный |Объем услуги соц норма |Объем услуги потребленный соц норма |Конец периода |Начало периода |
        |'31.03.2021 23:59:59' |'Маркидонов Александр Александрович' |'Отопление' |'узел_Отопление' |'Начисление по среднему'       |'1 729,660'     |'01.03.2021'   |'01.03.2021'      |'Да'            |''         |''           |'1,196226'         |''                     |''                                  |'01.04.2021'  |'01.03.2021'   |
        #Апрель 21
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                              |Услуга      |Точка учета      |Способ начисления              |Значение тарифа |Период расчета |Период начисления |Сверх норматива |Сумма      |Объем услуги |Объем потребленный |Объем услуги соц норма |Объем услуги потребленный соц норма |Конец периода |Начало периода |
        |'30.04.2021 23:59:59' |'Маркидонов Александр Александрович' |'Отопление' |'узел_Отопление' |'Начисление по среднему'       |'1 729,660'     |'01.04.2021'   |'01.04.2021'      |'Нет'           |'944,82'   |'0,546247'   |''                 |'0,546247'             |''                                  |'01.05.2021'  |'01.04.2021'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                              |Услуга      |Точка учета      |Способ начисления              |Значение тарифа |Период расчета |Период начисления |Сверх норматива |Сумма      |Объем услуги |Объем потребленный |Объем услуги соц норма |Объем услуги потребленный соц норма |Конец периода |Начало периода |
        |'30.04.2021 23:59:59' |'Маркидонов Александр Александрович' |'Отопление' |'узел_Отопление' |'Среднее по нормативу'         |'1 729,660'     |'01.04.2021'   |'01.04.2021'      |'Нет'           |''         |''           |'1,098900'         |''                     |'1,098900'                          |'01.05.2021'  |'01.04.2021'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                              |Услуга      |Точка учета      |Способ начисления              |Значение тарифа |Период расчета |Период начисления |Сверх норматива |Сумма      |Объем услуги |Объем потребленный |Объем услуги соц норма |Объем услуги потребленный соц норма |Конец периода |Начало периода |
        |'30.04.2021 23:59:59' |'Маркидонов Александр Александрович' |'Отопление' |'узел_Отопление' |'Начисление по среднему'       |'1 729,660'     |'01.04.2021'   |'01.04.2021'      |'Да'            |'1 551,80' |'0,897170'   |''                 |''                     |''                                  |'01.05.2021'  |'01.04.2021'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                              |Услуга      |Точка учета      |Способ начисления              |Значение тарифа |Период расчета |Период начисления |Сверх норматива |Сумма      |Объем услуги |Объем потребленный |Объем услуги соц норма |Объем услуги потребленный соц норма |Конец периода |Начало периода |
        |'30.04.2021 23:59:59' |'Маркидонов Александр Александрович' |'Отопление' |'узел_Отопление' |'Среднее по нормативу'         |'1 729,660'     |'01.04.2021'   |'01.04.2021'      |'Да'            |''         |''           |'1,804860'         |''                     |''                                  |'01.05.2021'  |'01.04.2021'   |
        #Май
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                              |Услуга      |Точка учета      |Способ начисления              |Значение тарифа |Период расчета |Период начисления |Сверх норматива |Сумма      |Объем услуги |Объем потребленный |Объем услуги соц норма |Объем услуги потребленный соц норма |Конец периода |Начало периода |
        |'31.05.2021 23:59:59' |'Маркидонов Александр Александрович' |'Отопление' |'узел_Отопление' |'Начисление по среднему'       |'1 729,660'     |'01.05.2021'   |'01.05.2021'      |'Нет'           |'944,82'   |'0,546247'   |''                 |'0,546247'             |''                                  |'01.06.2021'  |'01.05.2021'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                              |Услуга      |Точка учета      |Способ начисления              |Значение тарифа |Период расчета |Период начисления |Сверх норматива |Сумма      |Объем услуги |Объем потребленный |Объем услуги соц норма |Объем услуги потребленный соц норма |Конец периода |Начало периода |
        |'31.05.2021 23:59:59' |'Маркидонов Александр Александрович' |'Отопление' |'узел_Отопление' |'Среднее по нормативу'         |'1 729,660'     |'01.05.2021'   |'01.05.2021'      |'Нет'           |''         |''           |'1,098900'         |''                     |'1,098900'                          |'01.06.2021'  |'01.05.2021'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                              |Услуга      |Точка учета      |Способ начисления              |Значение тарифа |Период расчета |Период начисления |Сверх норматива |Сумма      |Объем услуги |Объем потребленный |Объем услуги соц норма |Объем услуги потребленный соц норма |Конец периода |Начало периода |
        |'31.05.2021 23:59:59' |'Маркидонов Александр Александрович' |'Отопление' |'узел_Отопление' |'Начисление по среднему'       |'1 729,660'     |'01.05.2021'   |'01.05.2021'      |'Да'            |'1 551,80' |'0,897170'   |''                 |''                     |''                                  |'01.06.2021'  |'01.05.2021'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                              |Услуга      |Точка учета      |Способ начисления              |Значение тарифа |Период расчета |Период начисления |Сверх норматива |Сумма      |Объем услуги |Объем потребленный |Объем услуги соц норма |Объем услуги потребленный соц норма |Конец периода |Начало периода |
        |'31.05.2021 23:59:59' |'Маркидонов Александр Александрович' |'Отопление' |'узел_Отопление' |'Среднее по нормативу'         |'1 729,660'     |'01.05.2021'   |'01.05.2021'      |'Да'            |''         |''           |'1,804860'         |''                     |''                                  |'01.06.2021'  |'01.05.2021'   |