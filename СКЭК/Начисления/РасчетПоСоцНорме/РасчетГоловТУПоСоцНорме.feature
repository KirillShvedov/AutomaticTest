    #language: ru
    @tree
    @card 'https://trello.com/c/kPVmK3ni'
    Функционал: <описание фичи>
    Как <Роль>
    Я хочу <описание функционала>
    Чтобы <бизнес-эффект>

    Контекст:
    Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

    Сценарий: <РасчетГоловТУПоСоцНорме>
    И Я запускаю выполнение начислений по организации 'ООО "Тайгинское ВКХ"' и району 'Тайгинский городской округ' и МКД '' с 'Январь' '2021' по 'Январь 2021'
    И Я проверяю полученные результаты
        И Я открываю навигационную ссылку "e1cib/list/РегистрНакопления.энргОбъемНачислений"
        Тогда открылось окно 'Объем начислений'
        И в таблице "Список" я активизирую поле "Абонент"
        И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюНайти' на элементе формы с именем "Список"
        Тогда открылось окно 'Найти'
        И из выпадающего списка "&Что искать" я выбираю по строке 'Скорюпин Алексей Николаевич'
        И я нажимаю на кнопку '&Найти'
        Тогда открылось окно 'Объем начислений'
        И я нажимаю на кнопку с именем 'ФормаУстановитьИнтервал'
        Тогда открылось окно 'Выберите период'
        И в поле 'DateBegin' я ввожу текст '01.01.2021'
        И в поле 'DateEnd' я ввожу текст '31.01.2021'
        И я перехожу к следующему реквизиту
        И я нажимаю на кнопку 'Выбрать'
        Тогда в таблице "Список" количество строк "равно" 4
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                      |Услуга                   |Точка учета                    |Способ начисления |Направление использования ТУ |Прибор учета |Значение тарифа |Период расчета |Период начисления |Сверх норматива |Объем услуги |Объем потребленный |Сумма    |Начало периода |Конец периода |
        |'31.01.2021 23:59:59' |'Белоногов Андрей Борисович' |'Холодное водоснабжение' |'+ввод_Холодное водоснабжение' |'По приборам'     |'Основное направление'       |'207026653'  |'20,730'        |'01.01.2021'   |'01.01.2021'      |'Нет'           |'2,480000'   |''                 |'51,41'  |'01.01.2021'   |'01.02.2021'  |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                      |Услуга                   |Точка учета                    |Способ начисления |Направление использования ТУ |Прибор учета |Значение тарифа |Период расчета |Период начисления |Сверх норматива |Объем услуги |Объем потребленный |Сумма    |Начало периода |Конец периода |
        |'31.01.2021 23:59:59' |'Белоногов Андрей Борисович' |'Холодное водоснабжение' |'+ввод_Холодное водоснабжение' |'По приборам'     |'Основное направление'       |'207026653'  |'20,730'        |'01.01.2021'   |'01.01.2021'      |'Нет'           |''           |'2,480000'         |''       |'01.01.2021'   |'01.02.2021'  |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                      |Услуга                   |Точка учета                    |Способ начисления |Направление использования ТУ |Прибор учета |Значение тарифа |Период расчета |Период начисления |Сверх норматива |Объем услуги |Объем потребленный |Сумма    |Начало периода |Конец периода |
        |'31.01.2021 23:59:59' |'Белоногов Андрей Борисович' |'Холодное водоснабжение' |'+ввод_Холодное водоснабжение' |'По приборам'     |'Основное направление'       |'207026653'  |'59,230'        |'01.01.2021'   |'01.01.2021'      |'Да'            |'5,520000'   |''                 |'326,95' |'01.01.2021'   |'01.02.2021'  |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                      |Услуга                   |Точка учета                    |Способ начисления |Направление использования ТУ |Прибор учета |Значение тарифа |Период расчета |Период начисления |Сверх норматива |Объем услуги |Объем потребленный |Сумма    |Начало периода |Конец периода |
        |'31.01.2021 23:59:59' |'Белоногов Андрей Борисович' |'Холодное водоснабжение' |'+ввод_Холодное водоснабжение' |'По приборам'     |'Основное направление'       |'207026653'  |'59,230'        |'01.01.2021'   |'01.01.2021'      |'Да'            |''           |'5,520000'         |''       |'01.01.2021'   |'01.02.2021'  |
