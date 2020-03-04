#language: ru
@tree
@card "https://trello.com/c/dzdUDsi9"
Функционал: <описание фичи>

Как <Роль>
Я хочу <проверить расчет по формулам, когда в формуле участвует несколько услуг>
Чтобы <бизнес-эффект>

Контекст:
    Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: <ПоПоказаниямРасчетПоФормуламРасчета>
    И я подготавливаю тестовые данные
        И я загружаю макет "ПоПоказаниямРасчетПоФормуламРасчета"
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
    И Я запускаю выполнение начислений по организации 'ОАО "СКЭК"' и району 'Березовский городской округ' и МКД '' с 'Сентябрь' '2019' по 'Сентябрь 2019'
    И я проверяю полученные результаты
        И Я открываю навигационную ссылку "e1cib/list/РегистрНакопления.энргОбъемНачислений"
        Тогда открылось окно 'Объем начислений'
        Тогда в таблице "Список" количество строк "равно" 8  
        И в таблице "Список" я перехожу к строке:
        |Период                |Услуга                   |Точка учета                  |Способ начисления     |Направление использования ТУ |Значение тарифа |Поставщик  |Период расчета |Период начисления |Сверх норматива |Сумма     |Начало периода |Конец периода |
        |'30.09.2019 23:59:59' |'Отопление'              |'ввод_Отопление'             |'По нормативу'        |'Основное направление'       |'1 729,660'     |'ОАО СКЭК' |'01.09.2019'   |'01.09.2019'      |'Нет'           |'2 332,71'|'01.09.2019'   |'15.09.2019'  |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'1,348650'   |'1,498833'         |
        И в таблице "Список" я перехожу к строке:
        |Период                |Услуга                   |Точка учета                  |Способ начисления     |Направление использования ТУ |Значение тарифа |Поставщик  |Период расчета |Период начисления |Сверх норматива |Сумма     |Начало периода |Конец периода |
        |'30.09.2019 23:59:59' |'Холодное водоснабжение' |'с/у_Холодное водоснабжение' |'По приборам'         |'Полив садов и огородов'     |'32,140'        |'ОАО СКЭК' |'01.09.2019'   |'01.09.2019'      |'Нет'           |''        |'01.09.2019'   |'30.09.2019'  |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |''           |''                 |
        И в таблице "Список" я перехожу к строке:
        |Период                |Услуга                   |Точка учета                  |Способ начисления     |Направление использования ТУ |Значение тарифа |Поставщик  |Период расчета |Период начисления |Сверх норматива |Сумма     |Начало периода |Конец периода |
        |'30.09.2019 23:59:59' |'Водоотведение'          |'*_Водоотведение'            |'По формулам расчета' |'Основное направление'       |'16,890'        |'ОАО СКЭК' |'01.09.2019'   |'01.09.2019'      |'Нет'           |''        |'01.09.2019'   |'30.09.2019'  |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |''           |''                 |
        И в таблице "Список" я перехожу к строке:
        |Период                |Услуга                   |Точка учета                  |Способ начисления     |Направление использования ТУ |Значение тарифа |Поставщик  |Период расчета |Период начисления |Сверх норматива |Сумма     |Начало периода |Конец периода |
        |'30.09.2019 23:59:59' |'Водоотведение'          |'*_Водоотведение'            |'По формулам расчета' |'Основное направление'       |'16,890'        |'ОАО СКЭК' |'01.09.2019'   |'01.09.2019'      |'Нет'           |'67,56'   |'30.09.2019'   |'01.10.2019'  |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'4,000000'   |'4,000000'         |
        И в таблице "Список" я перехожу к строке:
        |Период                |Услуга                   |Точка учета                  |Способ начисления     |Направление использования ТУ |Значение тарифа |Поставщик  |Период расчета |Период начисления |Сверх норматива |Сумма     |Начало периода |Конец периода |
        |'30.09.2019 23:59:59' |'Водоотведение'          |'с/у_ХВС + водоотведение'    |'По приборам'         |'Основное направление'       |'16,890'        |'ОАО СКЭК' |'01.09.2019'   |'01.09.2019'      |'Нет'           |'101,34'  |'01.09.2019'   |'01.10.2019'  |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'6,000000'   |'6,000000'         |
        И в таблице "Список" я перехожу к строке:
        |Период                |Услуга                   |Точка учета                  |Способ начисления     |Направление использования ТУ |Значение тарифа |Поставщик  |Период расчета |Период начисления |Сверх норматива |Сумма     |Начало периода |Конец периода |
        |'30.09.2019 23:59:59' |'Холодное водоснабжение' |'с/у_ХВС + водоотведение'    |'По приборам'         |'Основное направление'       |'32,140'        |'ОАО СКЭК' |'01.09.2019'   |'01.09.2019'      |'Нет'           |'192,84'  |'01.09.2019'   |'01.10.2019'  |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'6,000000'   |'6,000000'         |
        И в таблице "Список" я перехожу к строке:
        |Период                |Услуга                   |Точка учета                  |Способ начисления     |Направление использования ТУ |Значение тарифа |Поставщик  |Период расчета |Период начисления |Сверх норматива |Сумма     |Начало периода |Конец периода |
        |'30.09.2019 23:59:59' |'Отопление'              |'ввод_Отопление'             |'По нормативу'        |'Основное направление'       |'1729,660'      |'ОАО СКЭК' |'01.09.2019'   |'01.09.2019'      |'Да'            |'2962,82' |'15.09.2019'   |'01.10.2019'  |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'1,712952'   |'1,712952'         |
        И в таблице "Список" я перехожу к строке:
        |Период                |Услуга                   |Точка учета                  |Способ начисления     |Направление использования ТУ |Значение тарифа |Поставщик  |Период расчета |Период начисления |Сверх норматива |Сумма     |Начало периода |Конец периода |
        |'30.09.2019 23:59:59' |'Холодное водоснабжение' |'с/у_Холодное водоснабжение' |'По приборам'         |'Полив садов и огородов'     |'32,140'        |'ОАО СКЭК' |'01.09.2019'   |'01.09.2019'      |'Нет'           |''        |'30.09.2019'   |'01.10.2019'  |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |''           |'2,000000'         |
        И в таблице "Список" я перехожу к строке:
        |Период                |Услуга                   |Точка учета                  |Способ начисления     |Направление использования ТУ |Значение тарифа |Поставщик  |Период расчета |Период начисления |Сверх норматива |Сумма     |Начало периода |Конец периода |
        |'30.09.2019 23:59:59' |'Отопление'              |'ввод_Отопление'             |'По нормативу'        |'Основное направление'       |'1729,660'      |'ОАО СКЭК' |'01.09.2019'   |'01.09.2020'      |'Да'            |'259,77'  |'01.09.2020'   |'15.09.2020'  |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'0,150183'   |'1,498833'         |