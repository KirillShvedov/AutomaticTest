#language: ru
@tree
Функционал: <описание фичи>

Как <Роль>
Я хочу <проверить расчет по формулам, когда в формуле участвует несколько услуг>
Чтобы <бизнес-эффект>

Контекст:
    Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: <ПоПоказаниям>
    И я подготавливаю тестовые данные
        И я загружаю макет "СКЭК\Начисления\РасчетПоФормуламРасчета\ПоПоказаниям\ИсходныеДанные2"
        И я перепровжу загруженные данные
            И В командном интерфейсе я выбираю 'Работа с абонентами' 'Открытие/закрытие лс физического лица'
            Тогда открылось окно 'Открытие/закрытие лс физического лица'
            И в таблице 'Список' я выделяю все строки
            И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюПровести' на элементе формы с именем "Список"
            И В командном интерфейсе я выбираю 'Работа с абонентами' 'Регистрация показаний абонента'
            Тогда открылось окно 'Регистрация показаний абонента'
            И в таблице 'Список' я выделяю все строки
            И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюПровести' на элементе формы с именем "Список"
            И В командном интерфейсе я выбираю 'Работа с абонентами' 'Изменить формулу расчета точек учета'
            Тогда открылось окно 'Изменить формулу расчета точек учета'
            И в таблице 'Список' я выделяю все строки
            И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюПровести' на элементе формы с именем "Список"
    И Я запускаю выполнение начислений по организации 'ОАО "СКЭК"' и району 'Березовский городской округ' и МКД '' с 'Июль' '2019' по 'Октябрь 2019'
    И я проверяю полученные результаты
        И Я открываю навигационную ссылку "e1cib/list/РегистрНакопления.энргОбъемНачислений"
        Тогда открылось окно 'Объем начислений'
        И в таблице "Список" я перехожу к строке:
        |Период                |Строение                                 |Услуга          |Точка учета       |Способ начисления     |Период расчета |Период начисления |Сумма      |Начало периода |Конец периода |
        |'31.07.2019 23:59:59' |'Березовский г., Прилесная ул, Дом № 10' |'Водоотведение' |'*_Водоотведение' |'По формулам расчета' |'01.07.2019'   |'01.07.2019'      |'1 097,85' |'01.07.2019'   |'01.08.2019'  |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'65,000000'  |'65,000000'        |
        И в таблице "Список" я перехожу к строке:
        |Период                |Строение                                 |Услуга          |Точка учета       |Способ начисления     |Период расчета |Период начисления |Сумма      |Начало периода |Конец периода |
        |'31.08.2019 23:59:59' |'Березовский г., Прилесная ул, Дом № 10' |'Водоотведение' |'*_Водоотведение' |'По формулам расчета' |'01.08.2019'   |'01.08.2019'      |'287,13'   |'01.08.2019'   |'01.09.2019'  |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'17,000000'  |'17,000000'        |
        И в таблице "Список" я перехожу к строке:
        |Период                |Строение                                 |Услуга          |Точка учета       |Способ начисления     |Период расчета |Период начисления |Сумма      |Начало периода |Конец периода |
        |'30.09.2019 23:59:59' |'Березовский г., Прилесная ул, Дом № 10' |'Водоотведение' |'*_Водоотведение' |'По формулам расчета' |'01.09.2019'   |'01.09.2019'      |'320,91'   |'01.09.2019'   |'01.10.2019'  |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'18,000000'  |'18,000000'        |
        И в таблице "Список" я перехожу к строке:
        |Период                |Строение                                 |Услуга          |Точка учета       |Способ начисления     |Период расчета |Период начисления |Сумма      |Начало периода |Конец периода |
        |'31.10.2019 23:59:59' |'Березовский г., Прилесная ул, Дом № 10' |'Водоотведение' |'*_Водоотведение' |'По формулам расчета' |'01.10.2019'   |'01.10.2019'      |'371,58'   |'01.10.2019'   |'01.11.2019'  |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'22,000000'  |'22,000000'        |