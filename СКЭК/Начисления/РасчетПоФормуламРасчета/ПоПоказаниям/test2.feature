﻿#language: ru
@tree
Функционал: <описание фичи>

    Как <Роль>
    Я хочу <проверить расчет по формулам, когда в формуле участвует несколько услуг>
    Чтобы <бизнес-эффект>

Контекст:
    Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: <ПоПоказаниям>
    И я подготавливаю тестовые данные
        И я загружаю макет "ИсходныеДанные2.mxl"
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
        И в таблице "Список" я активизирую поле "Точка учета"
        И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюНайти' на элементе формы с именем "Список"
        Тогда открылось окно 'Найти'
        И из выпадающего списка "&Что искать" я выбираю по строке '*_Водоотведение'
        И я перехожу к следующему реквизиту
        И я нажимаю на кнопку '&Найти'        
        Тогда в таблице "Список" количество строк "равно" 5
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                 |Услуга          |Точка учета       |Способ начисления     |Объем услуги |Объем потребленный |
        |'31.07.2019 23:59:59' |'Овчаренко  Валентина ' |'Водоотведение' |'*_Водоотведение' |'По формулам расчета' |'65,000000'  |'65,000000'        |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                 |Услуга          |Точка учета       |Способ начисления     |Объем услуги |Объем потребленный |
        |'31.08.2019 23:59:59' |'Овчаренко  Валентина ' |'Водоотведение' |'*_Водоотведение' |'По формулам расчета' |'17,000000'  |'17,000000'        |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                 |Услуга          |Точка учета       |Способ начисления     |Объем услуги |Объем потребленный |
        |'30.09.2019 23:59:59' |'Овчаренко  Валентина ' |'Водоотведение' |'*_Водоотведение' |'По формулам расчета' |''           |''                 |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                 |Услуга          |Точка учета       |Способ начисления     |Сумма    |Объем услуги |Объем потребленный |
        |'30.09.2019 23:59:59' |'Овчаренко  Валентина ' |'Водоотведение' |'*_Водоотведение' |'По формулам расчета' |'304,02'|'18,000000'  |'18,000000'        |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                 |Услуга          |Точка учета       |Способ начисления     |Объем услуги |Объем потребленный |
        |'31.10.2019 23:59:59' |'Овчаренко  Валентина ' |'Водоотведение' |'*_Водоотведение' |'По формулам расчета' |'22,000000'  |'22,000000'        |
    