#language: ru
@tree
Функционал: <описание фичи>

Как <Роль>
Я хочу <описание функционала>
Чтобы <бизнес-эффект>

Контекст:
    Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: <описание сценария>
    И я подготавливаю тестовые данные
        И я загружаю макет "СКЭК\Начисления\Савельева\ИсходныеДанные.mxl"
        И я перепровожу загруженные данные
            И В командном интерфейсе я выбираю 'Работа с абонентами' 'Открытие/закрытие лс физического лица'
            Тогда открылось окно 'Открытие/закрытие лс физического лица'
            И в таблице 'Список' я выделяю все строки
            И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюПровести' на элементе формы с именем "Список"
            И В командном интерфейсе я выбираю 'Работа с абонентами' 'Акт ввода/вывода/замены прибора учёта'
            Тогда открылось окно 'Акт ввода/вывода/замены прибора учёта'
            И в таблице 'Список' я выделяю все строки
            И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюПровести' на элементе формы с именем "Список"
    И я выполняю начисления с Октября 2019 по Декабрь 2019
        И В командном интерфейсе я выбираю 'Расчет начислений' 'Выполнение начислений'
        Тогда открылось окно 'Выполнение начислений: Выполнение начислений'
        И я нажимаю кнопку выбора у поля "Месяц с"
        Тогда открылось окно 'Выбор периода'
        И в поле 'ВыбираемыйПериод' я ввожу текст '2019'
        И я перехожу к следующему реквизиту
        # Октябрь 2019
        И я нажимаю на кнопку 'Октябрь'
        И я нажимаю на кнопку 'Выбрать'
        Тогда открылось окно 'Выполнение начислений: Выполнение начислений'
        И из выпадающего списка "Организация" я выбираю по строке 'ОАО "СКЭК"'
        И из выпадающего списка "Территориальный орган" я выбираю по строке 'Кемеровский городской округ'
        И я изменяю флаг 'ОтборПоДому'
        И Я запускаю выполнение начислений и проверяю что все выполнилось без ошибок
        # Ноябрь 2019
        И в поле "Месяц с" я увеличиваю значение
        И Я запускаю выполнение начислений и проверяю что все выполнилось без ошибок
        # Декабрь 2019
        И в поле "Месяц с" я увеличиваю значение
        И Я запускаю выполнение начислений и проверяю что все выполнилось без ошибок
    И я проверяю полученные результаты
        И Я открываю навигационную ссылку "e1cib/list/РегистрНакопления.энргОбъемНачислений"
        Тогда открылось окно 'Объем начислений'
        И я нажимаю на кнопку с именем 'ФормаУстановитьИнтервал'
        Тогда открылось окно 'Выберите период'
        И в поле 'DateBegin' я ввожу текст '01.01.2019'
        И в поле 'DateEnd' я ввожу текст '31.12.2019'
        И я перехожу к следующему реквизиту
        И я нажимаю на кнопку 'Выбрать'
        И в таблице "Список" я перехожу к строке:
        |Период                |Услуга                   |Точка учета                |Способ начисления |Направление использования ТУ |Прибор учета |Значение тарифа |Поставщик  |Период расчета |Период начисления |Сверх норматива |Сумма    |Начало периода |Конец периода |Начальные показания |Конечные показания |
        |'30.11.2019 23:59:59' |'Водоотведение'          |'ввод_ХВС + водоотведение' |'По нормативу'    |'Основное направление'       |''           |'14,320'        |'ОАО СКЭК' |'01.11.2019'   |'01.11.2019'      |'Нет'           |'29,90'  |'01.11.2019'   |'25.11.2019'  |''                  |''                 |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'2,088000'   |'2,088000'         |
        И в таблице "Список" я перехожу к строке:
        |Период                |Услуга                   |Точка учета                |Способ начисления |Направление использования ТУ |Прибор учета |Значение тарифа |Поставщик  |Период расчета |Период начисления |Сверх норматива |Сумма    |Начало периода |Конец периода |Начальные показания |Конечные показания |
        |'30.11.2019 23:59:59' |'Холодное водоснабжение' |'ввод_ХВС + водоотведение' |'По нормативу'    |'Основное направление'       |''           |'17,420'        |'ОАО СКЭК' |'01.11.2019'   |'01.11.2019'      |'Нет'           |'36,37'  |'01.11.2019'   |'25.11.2019'  |''                  |''                 |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'2,088000'   |'2,088000'         |
        И в таблице "Список" я перехожу к строке:
        |Период                |Услуга                   |Точка учета                |Способ начисления |Направление использования ТУ |Прибор учета |Значение тарифа |Поставщик  |Период расчета |Период начисления |Сверх норматива |Сумма    |Начало периода |Конец периода |Начальные показания |Конечные показания |
        |'30.11.2019 23:59:59' |'Водоотведение'          |'ввод_ХВС + водоотведение' |'По приборам'     |'Основное направление'       |'114477'     |'14,320'        |'ОАО СКЭК' |'01.11.2019'   |'01.11.2019'      |'Нет'           |''       |'25.11.2019'   |'01.12.2019'  |'1,000000'          |'1,000000'         |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |''           |''                 |
        И в таблице "Список" я перехожу к строке:
        |Период                |Услуга                   |Точка учета                |Способ начисления |Направление использования ТУ |Прибор учета |Значение тарифа |Поставщик  |Период расчета |Период начисления |Сверх норматива |Сумма    |Начало периода |Конец периода |Начальные показания |Конечные показания |
        |'30.11.2019 23:59:59' |'Холодное водоснабжение' |'ввод_ХВС + водоотведение' |'По приборам'     |'Основное направление'       |'114477'     |'17,420'        |'ОАО СКЭК' |'01.11.2019'   |'01.11.2019'      |'Да'            |''       |'25.11.2019'   |'01.12.2019'  |'1,000000'          |'1,000000'         |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |''           |''                 |
        И в таблице "Список" я перехожу к строке:
        |Период                |Услуга                   |Точка учета                |Способ начисления |Направление использования ТУ |Прибор учета |Значение тарифа |Поставщик  |Период расчета |Период начисления |Сверх норматива |Сумма    |Начало периода |Конец периода |Начальные показания |Конечные показания |
        |'31.12.2019 23:59:59' |'Водоотведение'          |'ввод_ХВС + водоотведение' |'По приборам'     |'Основное направление'       |'114477'     |'14,320'        |'ОАО СКЭК' |'01.12.2019'   |'01.12.2019'      |'Нет'           |'358,00' |'01.12.2019'   |'10.12.2019'  |'1,000000'          |'26,000000'        |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'25,000000'  |'25,000000'        |
        И в таблице "Список" я перехожу к строке:
        |Период                |Услуга                   |Точка учета                |Способ начисления |Направление использования ТУ |Прибор учета |Значение тарифа |Поставщик  |Период расчета |Период начисления |Сверх норматива |Сумма    |Начало периода |Конец периода |Начальные показания |Конечные показания |
        |'31.12.2019 23:59:59' |'Холодное водоснабжение' |'ввод_ХВС + водоотведение' |'По приборам'     |'Основное направление'       |'114477'     |'17,420'        |'ОАО СКЭК' |'01.12.2019'   |'01.12.2019'      |'Нет'           |'45,47'  |'01.12.2019'   |'10.12.2019'  |'1,000000'          |'26,000000'        |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'2,610000'   |'25,000000'        |
        И в таблице "Список" я перехожу к строке:
        |Период                |Услуга                   |Точка учета                |Способ начисления |Направление использования ТУ |Прибор учета |Значение тарифа |Поставщик  |Период расчета |Период начисления |Сверх норматива |Сумма    |Начало периода |Конец периода |Начальные показания |Конечные показания |
        |'31.12.2019 23:59:59' |'Холодное водоснабжение' |'ввод_ХВС + водоотведение' |'По приборам'     |'Основное направление'       |'114477'     |'17,420'        |'ОАО СКЭК' |'01.12.2019'   |'01.12.2019'      |'Да'            |'390,03' |'01.12.2019'   |'10.12.2019'  |'1,000000'          |'26,000000'        |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'22,390000'  |''                 |
        И в таблице "Список" я перехожу к строке:
        |Период                |Услуга                   |Точка учета                |Способ начисления |Направление использования ТУ |Прибор учета |Значение тарифа |Поставщик  |Период расчета |Период начисления |Сверх норматива |Сумма    |Начало периода |Конец периода |Начальные показания |Конечные показания |
        |'31.12.2019 23:59:59' |'Холодное водоснабжение' |'ввод_ХВС + водоотведение' |'По приборам'     |'Основное направление'       |'5345'       |'17,420'        |'ОАО СКЭК' |'01.12.2019'   |'01.12.2019'      |'Нет'           |'45,47'  |'10.12.2019'   |'01.01.2020'  |''                  |''                 |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'0,000000'   |'0,000000'         |
        И в таблице "Список" я перехожу к строке:
        |Период                |Услуга                   |Точка учета                |Способ начисления |Направление использования ТУ |Прибор учета |Значение тарифа |Поставщик  |Период расчета |Период начисления |Сверх норматива |Сумма    |Начало периода |Конец периода |Начальные показания |Конечные показания |
        |'31.12.2019 23:59:59' |'Холодное водоснабжение' |'ввод_ХВС + водоотведение' |'По приборам'     |'Основное направление'       |'5345'       |'17,420'        |'ОАО СКЭК' |'01.12.2019'   |'01.12.2019'      |'Да'            |'390,03' |'10.12.2019'   |'01.01.2020'  |''                  |''                 |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'0,000000'   |'0,000000'         |
    И я выполняю очистку после теста
        И я закрываю сеанс TESTCLIENT
        И я выполняю код встроенного языка на сервере "УстановитьМонопольныйРежим(Истина)"
        И я выполняю код встроенного языка на сервере "УдалитьДанныеИнформационнойБазы()"
        И я выполняю код встроенного языка на сервере "УстановитьМонопольныйРежим(Ложь)"

