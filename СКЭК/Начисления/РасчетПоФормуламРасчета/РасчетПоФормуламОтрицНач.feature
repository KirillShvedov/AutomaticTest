    #language: ru
    @tree
    @card "https://trello.com/c/BU9lMk6M"
    Функционал: <описание фичи>
    Как <Роль>
    Я хочу <проверить расчет расчет по показаниям>
    Чтобы <бизнес-эффект>
    Контекст:
    Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

    Сценарий: <РасчетПоФормуламОтрицНач>
    И я подготавливаю тестовые данные
        И я загружаю макет "РасчетПоФормуламОтрицНач.mxl"
    И я перепровожу загруженные данные
        И В командном интерфейсе я выбираю 'Администрирование' 'Ввод начальных остатков'
        Тогда открылось окно 'Ввод начальных остатков'
        И в таблице 'Список' я выделяю все строки
        И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюПровести' на элементе формы с именем "Список"
        И В командном интерфейсе я выбираю 'Работа с абонентами' 'Регистрация показаний абонента'
        Тогда открылось окно 'Регистрация показаний абонента'
        И в таблице 'Список' я выделяю все строки
        И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюПровести' на элементе формы с именем "Список"
    И Я запускаю выполнение начислений по организации 'ОАО "СКЭК"' и району 'Кемеровский городской округ' и МКД '' с 'Июль' '2019' по 'Август 2020'
    И я проверяю полученные результаты
        И Я открываю навигационную ссылку "e1cib/list/РегистрНакопления.энргОбъемНачислений"
        Тогда открылось окно 'Объем начислений'
        И я нажимаю на кнопку с именем 'ФормаУстановитьИнтервал'
        Тогда открылось окно 'Выберите период'
        И в поле 'DateBegin' я ввожу текст '01.05.2020'
        И в поле 'DateEnd' я ввожу текст '31.08.2020'
        И я перехожу к следующему реквизиту
        И я нажимаю на кнопку 'Выбрать'
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                  |Услуга                   |Точка учета                     |Способ начисления        |Направление использования ТУ |Значение тарифа |Период расчета |Период начисления |Сумма    |Объем услуги |Объем потребленный |Конец периода |Начало периода |
        |'31.05.2020 23:59:59' |'Орлов Игорь Алексеевич' |'Водоотведение'          |'ввод_ХВС + водоотведение'      |'По приборам'            |'Основное направление'       |'4,970'         |'01.05.2020'   |'01.05.2020'      |''       |''           |''                 |'01.06.2020'  |'01.05.2020'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                  |Услуга                   |Точка учета                     |Способ начисления        |Направление использования ТУ |Значение тарифа |Период расчета |Период начисления |Сумма    |Объем услуги |Объем потребленный |Конец периода |Начало периода |
        |'31.05.2020 23:59:59' |'Орлов Игорь Алексеевич' |'Водоотведение'          |'ввод_ХВС + водоотведение'      |'По приборам'            |'Основное направление'       |'4,970'         |'01.05.2020'   |'01.05.2020'      |''       |''           |'9,000000'         |'01.06.2020'  |'01.05.2020'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                  |Услуга                   |Точка учета                     |Способ начисления        |Направление использования ТУ |Значение тарифа |Период расчета |Период начисления |Сумма    |Объем услуги |Объем потребленный |Конец периода |Начало периода |
        |'31.05.2020 23:59:59' |'Орлов Игорь Алексеевич' |'Холодное водоснабжение' |'ввод_ХВС + водоотведение'      |'По приборам'            |'Основное направление'       |'18,660'        |'01.05.2020'   |'01.05.2020'      |''       |''           |''                 |'01.06.2020'  |'01.05.2020'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                  |Услуга                   |Точка учета                     |Способ начисления        |Направление использования ТУ |Значение тарифа |Период расчета |Период начисления |Сумма    |Объем услуги |Объем потребленный |Конец периода |Начало периода |
        |'31.05.2020 23:59:59' |'Орлов Игорь Алексеевич' |'Холодное водоснабжение' |'ввод_ХВС + водоотведение'      |'По приборам'            |'Основное направление'       |'18,660'        |'01.05.2020'   |'01.05.2020'      |''       |''           |'9,000000'         |'01.06.2020'  |'01.05.2020'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                  |Услуга                   |Точка учета                     |Способ начисления        |Направление использования ТУ |Значение тарифа |Период расчета |Период начисления |Сумма    |Объем услуги |Объем потребленный |Конец периода |Начало периода |
        |'31.05.2020 23:59:59' |'Орлов Игорь Алексеевич' |'Холодное водоснабжение' |'огород_Холодное водоснабжение' |'По приборам'            |'полив из водопровода'       |'18,660'        |'01.05.2020'   |'01.05.2020'      |''       |''           |'7,000000'         |'01.06.2020'  |'01.05.2020'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                  |Услуга                   |Точка учета                     |Способ начисления        |Направление использования ТУ |Значение тарифа |Период расчета |Период начисления |Сумма    |Объем услуги |Объем потребленный |Конец периода |Начало периода |
        |'31.05.2020 23:59:59' |'Орлов Игорь Алексеевич' |'Холодное водоснабжение' |'огород_Холодное водоснабжение' |'По приборам'            |'полив из водопровода'       |'18,660'        |'01.05.2020'   |'01.05.2020'      |'130,62' |'7,000000'   |''                 |'01.06.2020'  |'01.05.2020'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                  |Услуга                   |Точка учета                     |Способ начисления        |Направление использования ТУ |Значение тарифа |Период расчета |Период начисления |Сумма    |Объем услуги |Объем потребленный |Конец периода |Начало периода |
        |'31.05.2020 23:59:59' |'Орлов Игорь Алексеевич' |'Холодное водоснабжение' |'*_ХВС + водоотведение'         |'По формулам расчета'    |'Основное направление'       |'18,660'        |'01.05.2020'   |'01.05.2020'      |'37,32'  |'2,000000'   |''                 |'01.06.2020'  |'01.05.2020'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                  |Услуга                   |Точка учета                     |Способ начисления        |Направление использования ТУ |Значение тарифа |Период расчета |Период начисления |Сумма    |Объем услуги |Объем потребленный |Конец периода |Начало периода |
        |'31.05.2020 23:59:59' |'Орлов Игорь Алексеевич' |'Холодное водоснабжение' |'*_ХВС + водоотведение'         |'По формулам расчета'    |'Основное направление'       |'18,660'        |'01.05.2020'   |'01.05.2020'      |''       |''           |'2,000000'         |'01.06.2020'  |'01.05.2020'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                  |Услуга                   |Точка учета                     |Способ начисления        |Направление использования ТУ |Значение тарифа |Период расчета |Период начисления |Сумма    |Объем услуги |Объем потребленный |Конец периода |Начало периода |
        |'31.05.2020 23:59:59' |'Орлов Игорь Алексеевич' |'Водоотведение'          |'*_ХВС + водоотведение'         |'По формулам расчета'    |'Основное направление'       |'4,970'         |'01.05.2020'   |'01.05.2020'      |'9,94'   |'2,000000'   |''                 |'01.06.2020'  |'01.05.2020'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                  |Услуга                   |Точка учета                     |Способ начисления        |Направление использования ТУ |Значение тарифа |Период расчета |Период начисления |Сумма    |Объем услуги |Объем потребленный |Конец периода |Начало периода |
        |'31.05.2020 23:59:59' |'Орлов Игорь Алексеевич' |'Водоотведение'          |'*_ХВС + водоотведение'         |'По формулам расчета'    |'Основное направление'       |'4,970'         |'01.05.2020'   |'01.05.2020'      |''       |''           |'2,000000'         |'01.06.2020'  |'01.05.2020'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                  |Услуга                   |Точка учета                     |Способ начисления        |Направление использования ТУ |Значение тарифа |Период расчета |Период начисления |Сумма    |Объем услуги |Объем потребленный |Конец периода |Начало периода |
        |'30.06.2020 23:59:59' |'Орлов Игорь Алексеевич' |'Водоотведение'          |'ввод_ХВС + водоотведение'      |'По приборам'            |'Основное направление'       |'4,970'         |'01.06.2020'   |'01.06.2020'      |''       |''           |''                 |'01.07.2020'  |'01.06.2020'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                  |Услуга                   |Точка учета                     |Способ начисления        |Направление использования ТУ |Значение тарифа |Период расчета |Период начисления |Сумма    |Объем услуги |Объем потребленный |Конец периода |Начало периода |
        |'30.06.2020 23:59:59' |'Орлов Игорь Алексеевич' |'Водоотведение'          |'ввод_ХВС + водоотведение'      |'По приборам'            |'Основное направление'       |'4,970'         |'01.06.2020'   |'01.06.2020'      |''       |''           |'8,000000'         |'01.07.2020'  |'01.06.2020'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                  |Услуга                   |Точка учета                     |Способ начисления        |Направление использования ТУ |Значение тарифа |Период расчета |Период начисления |Сумма    |Объем услуги |Объем потребленный |Конец периода |Начало периода |
        |'30.06.2020 23:59:59' |'Орлов Игорь Алексеевич' |'Холодное водоснабжение' |'ввод_ХВС + водоотведение'      |'По приборам'            |'Основное направление'       |'18,660'        |'01.06.2020'   |'01.06.2020'      |''       |''           |''                 |'01.07.2020'  |'01.06.2020'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                  |Услуга                   |Точка учета                     |Способ начисления        |Направление использования ТУ |Значение тарифа |Период расчета |Период начисления |Сумма    |Объем услуги |Объем потребленный |Конец периода |Начало периода |
        |'30.06.2020 23:59:59' |'Орлов Игорь Алексеевич' |'Холодное водоснабжение' |'ввод_ХВС + водоотведение'      |'По приборам'            |'Основное направление'       |'18,660'        |'01.06.2020'   |'01.06.2020'      |''       |''           |'8,000000'         |'01.07.2020'  |'01.06.2020'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                  |Услуга                   |Точка учета                     |Способ начисления        |Направление использования ТУ |Значение тарифа |Период расчета |Период начисления |Сумма    |Объем услуги |Объем потребленный |Конец периода |Начало периода |
        |'30.06.2020 23:59:59' |'Орлов Игорь Алексеевич' |'Холодное водоснабжение' |'огород_Холодное водоснабжение' |'По приборам'            |'полив из водопровода'       |'18,660'        |'01.06.2020'   |'01.06.2020'      |''       |''           |'8,000000'         |'01.07.2020'  |'01.06.2020'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                  |Услуга                   |Точка учета                     |Способ начисления        |Направление использования ТУ |Значение тарифа |Период расчета |Период начисления |Сумма    |Объем услуги |Объем потребленный |Конец периода |Начало периода |
        |'30.06.2020 23:59:59' |'Орлов Игорь Алексеевич' |'Холодное водоснабжение' |'огород_Холодное водоснабжение' |'По приборам'            |'полив из водопровода'       |'18,660'        |'01.06.2020'   |'01.06.2020'      |'149,28' |'8,000000'   |''                 |'01.07.2020'  |'01.06.2020'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                  |Услуга                   |Точка учета                     |Способ начисления        |Направление использования ТУ |Значение тарифа |Период расчета |Период начисления |Сумма    |Объем услуги |Объем потребленный |Конец периода |Начало периода |
        |'30.06.2020 23:59:59' |'Орлов Игорь Алексеевич' |'Холодное водоснабжение' |'*_ХВС + водоотведение'         |'По формулам расчета'    |'Основное направление'       |'18,660'        |'01.06.2020'   |'01.06.2020'      |''       |''           |''                 |'01.07.2020'  |'01.06.2020'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                  |Услуга                   |Точка учета                     |Способ начисления        |Направление использования ТУ |Значение тарифа |Период расчета |Период начисления |Сумма    |Объем услуги |Объем потребленный |Конец периода |Начало периода |
        |'30.06.2020 23:59:59' |'Орлов Игорь Алексеевич' |'Холодное водоснабжение' |'*_ХВС + водоотведение'         |'По формулам расчета'    |'Основное направление'       |'18,660'        |'01.06.2020'   |'01.06.2020'      |''       |''           |''                 |'01.07.2020'  |'01.06.2020'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                  |Услуга                   |Точка учета                     |Способ начисления        |Направление использования ТУ |Значение тарифа |Период расчета |Период начисления |Сумма    |Объем услуги |Объем потребленный |Конец периода |Начало периода |
        |'30.06.2020 23:59:59' |'Орлов Игорь Алексеевич' |'Водоотведение'          |'*_ХВС + водоотведение'         |'По формулам расчета'    |'Основное направление'       |'4,970'         |'01.06.2020'   |'01.06.2020'      |''       |''           |''                 |'01.07.2020'  |'01.06.2020'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                  |Услуга                   |Точка учета                     |Способ начисления        |Направление использования ТУ |Значение тарифа |Период расчета |Период начисления |Сумма    |Объем услуги |Объем потребленный |Конец периода |Начало периода |
        |'30.06.2020 23:59:59' |'Орлов Игорь Алексеевич' |'Водоотведение'          |'*_ХВС + водоотведение'         |'По формулам расчета'    |'Основное направление'       |'4,970'         |'01.06.2020'   |'01.06.2020'      |''       |''           |''                 |'01.07.2020'  |'01.06.2020'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                  |Услуга                   |Точка учета                     |Способ начисления        |Направление использования ТУ |Значение тарифа |Период расчета |Период начисления |Сумма    |Объем услуги |Объем потребленный |Конец периода |Начало периода |
        |'31.07.2020 23:59:59' |'Орлов Игорь Алексеевич' |'Водоотведение'          |'ввод_ХВС + водоотведение'      |'По приборам'            |'Основное направление'       |'4,970'         |'01.07.2020'   |'01.07.2020'      |''       |''           |''                 |'01.08.2020'  |'01.07.2020'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                  |Услуга                   |Точка учета                     |Способ начисления        |Направление использования ТУ |Значение тарифа |Период расчета |Период начисления |Сумма    |Объем услуги |Объем потребленный |Конец периода |Начало периода |
        |'31.07.2020 23:59:59' |'Орлов Игорь Алексеевич' |'Водоотведение'          |'ввод_ХВС + водоотведение'      |'По приборам'            |'Основное направление'       |'4,970'         |'01.07.2020'   |'01.07.2020'      |''       |''           |'6,000000'         |'01.08.2020'  |'01.07.2020'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                  |Услуга                   |Точка учета                     |Способ начисления        |Направление использования ТУ |Значение тарифа |Период расчета |Период начисления |Сумма    |Объем услуги |Объем потребленный |Конец периода |Начало периода |
        |'31.07.2020 23:59:59' |'Орлов Игорь Алексеевич' |'Холодное водоснабжение' |'ввод_ХВС + водоотведение'      |'По приборам'            |'Основное направление'       |'18,660'        |'01.07.2020'   |'01.07.2020'      |''       |''           |'6,000000'         |'01.08.2020'  |'01.07.2020'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                  |Услуга                   |Точка учета                     |Способ начисления        |Направление использования ТУ |Значение тарифа |Период расчета |Период начисления |Сумма    |Объем услуги |Объем потребленный |Конец периода |Начало периода |
        |'31.07.2020 23:59:59' |'Орлов Игорь Алексеевич' |'Холодное водоснабжение' |'ввод_ХВС + водоотведение'      |'По приборам'            |'Основное направление'       |'18,660'        |'01.07.2020'   |'01.07.2020'      |''       |''           |''                 |'01.08.2020'  |'01.07.2020'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                  |Услуга                   |Точка учета                     |Способ начисления        |Направление использования ТУ |Значение тарифа |Период расчета |Период начисления |Сумма    |Объем услуги |Объем потребленный |Конец периода |Начало периода |
        |'31.07.2020 23:59:59' |'Орлов Игорь Алексеевич' |'Холодное водоснабжение' |'огород_Холодное водоснабжение' |'По приборам'            |'полив из водопровода'       |'18,660'        |'01.07.2020'   |'01.07.2020'      |'186,60' |'10,000000'  |''                 |'31.07.2020'  |'01.07.2020'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                  |Услуга                   |Точка учета                     |Способ начисления        |Направление использования ТУ |Значение тарифа |Период расчета |Период начисления |Сумма    |Объем услуги |Объем потребленный |Конец периода |Начало периода |
        |'31.07.2020 23:59:59' |'Орлов Игорь Алексеевич' |'Холодное водоснабжение' |'огород_Холодное водоснабжение' |'По приборам'            |'полив из водопровода'       |'18,660'        |'01.07.2020'   |'01.07.2020'      |''       |''           |'10,000000'        |'31.07.2020'  |'01.07.2020'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                  |Услуга                   |Точка учета                     |Способ начисления        |Направление использования ТУ |Значение тарифа |Период расчета |Период начисления |Сумма    |Объем услуги |Объем потребленный |Конец периода |Начало периода |
        |'31.07.2020 23:59:59' |'Орлов Игорь Алексеевич' |'Холодное водоснабжение' |'*_ХВС + водоотведение'         |'По формулам расчета'    |'Основное направление'       |'18,660'        |'01.07.2020'   |'01.07.2020'      |''       |''           |''                 |'01.08.2020'  |'01.07.2020'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                  |Услуга                   |Точка учета                     |Способ начисления        |Направление использования ТУ |Значение тарифа |Период расчета |Период начисления |Сумма    |Объем услуги |Объем потребленный |Конец периода |Начало периода |
        |'31.07.2020 23:59:59' |'Орлов Игорь Алексеевич' |'Холодное водоснабжение' |'*_ХВС + водоотведение'         |'По формулам расчета'    |'Основное направление'       |'18,660'        |'01.07.2020'   |'01.07.2020'      |''       |''           |''                 |'01.08.2020'  |'01.07.2020'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                  |Услуга                   |Точка учета                     |Способ начисления        |Направление использования ТУ |Значение тарифа |Период расчета |Период начисления |Сумма    |Объем услуги |Объем потребленный |Конец периода |Начало периода |
        |'31.07.2020 23:59:59' |'Орлов Игорь Алексеевич' |'Водоотведение'          |'*_ХВС + водоотведение'         |'По формулам расчета'    |'Основное направление'       |'4,970'         |'01.07.2020'   |'01.07.2020'      |''       |''           |''                 |'01.08.2020'  |'01.07.2020'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                  |Услуга                   |Точка учета                     |Способ начисления        |Направление использования ТУ |Значение тарифа |Период расчета |Период начисления |Сумма    |Объем услуги |Объем потребленный |Конец периода |Начало периода |
        |'31.07.2020 23:59:59' |'Орлов Игорь Алексеевич' |'Водоотведение'          |'*_ХВС + водоотведение'         |'По формулам расчета'    |'Основное направление'       |'4,970'         |'01.07.2020'   |'01.07.2020'      |''       |''           |''                 |'01.08.2020'  |'01.07.2020'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                  |Услуга                   |Точка учета                     |Способ начисления        |Направление использования ТУ |Значение тарифа |Период расчета |Период начисления |Сумма    |Объем услуги |Объем потребленный |Конец периода |Начало периода |
        |'31.08.2020 23:59:59' |'Орлов Игорь Алексеевич' |'Водоотведение'          |'ввод_ХВС + водоотведение'      |'Начисление по среднему' |'Основное направление'       |'4,970'         |'01.08.2020'   |'01.08.2020'      |''       |''           |''                 |'01.09.2020'  |'01.08.2020'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                  |Услуга                   |Точка учета                     |Способ начисления        |Направление использования ТУ |Значение тарифа |Период расчета |Период начисления |Сумма    |Объем услуги |Объем потребленный |Конец периода |Начало периода |
        |'31.08.2020 23:59:59' |'Орлов Игорь Алексеевич' |'Водоотведение'          |'ввод_ХВС + водоотведение'      |'Начисление по среднему' |'Основное направление'       |'4,970'         |'01.08.2020'   |'01.08.2020'      |''       |''           |'9,333333'         |'01.09.2020'  |'01.08.2020'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                  |Услуга                   |Точка учета                     |Способ начисления        |Направление использования ТУ |Значение тарифа |Период расчета |Период начисления |Сумма    |Объем услуги |Объем потребленный |Конец периода |Начало периода |
        |'31.08.2020 23:59:59' |'Орлов Игорь Алексеевич' |'Холодное водоснабжение' |'ввод_ХВС + водоотведение'      |'Начисление по среднему' |'Основное направление'       |'18,660'        |'01.08.2020'   |'01.08.2020'      |''       |''           |''                 |'01.09.2020'  |'01.08.2020'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                  |Услуга                   |Точка учета                     |Способ начисления        |Направление использования ТУ |Значение тарифа |Период расчета |Период начисления |Сумма    |Объем услуги |Объем потребленный |Конец периода |Начало периода |
        |'31.08.2020 23:59:59' |'Орлов Игорь Алексеевич' |'Холодное водоснабжение' |'ввод_ХВС + водоотведение'      |'Начисление по среднему' |'Основное направление'       |'18,660'        |'01.08.2020'   |'01.08.2020'      |''       |''           |'9,333333'         |'01.09.2020'  |'01.08.2020'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                  |Услуга                   |Точка учета                     |Способ начисления        |Направление использования ТУ |Значение тарифа |Период расчета |Период начисления |Сумма    |Объем услуги |Объем потребленный |Конец периода |Начало периода |
        |'31.08.2020 23:59:59' |'Орлов Игорь Алексеевич' |'Холодное водоснабжение' |'огород_Холодное водоснабжение' |'Начисление по среднему' |'полив из водопровода'       |'18,660'        |'01.08.2020'   |'01.08.2020'      |''       |''           |'12,500000'        |'01.09.2020'  |'01.08.2020'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                  |Услуга                   |Точка учета                     |Способ начисления        |Направление использования ТУ |Значение тарифа |Период расчета |Период начисления |Сумма    |Объем услуги |Объем потребленный |Конец периода |Начало периода |
        |'31.08.2020 23:59:59' |'Орлов Игорь Алексеевич' |'Холодное водоснабжение' |'огород_Холодное водоснабжение' |'Начисление по среднему' |'полив из водопровода'       |'18,660'        |'01.08.2020'   |'01.08.2020'      |'251,91' |'13,500000'  |''                 |'01.09.2020'  |'01.08.2020'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                  |Услуга                   |Точка учета                     |Способ начисления        |Направление использования ТУ |Значение тарифа |Период расчета |Период начисления |Сумма    |Объем услуги |Объем потребленный |Конец периода |Начало периода |
        |'31.08.2020 23:59:59' |'Орлов Игорь Алексеевич' |'Холодное водоснабжение' |'*_ХВС + водоотведение'         |'По формулам расчета'    |'Основное направление'       |'18,660'        |'01.08.2020'   |'01.08.2020'      |''       |''           |''                 |'01.09.2020'  |'01.08.2020'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                  |Услуга                   |Точка учета                     |Способ начисления        |Направление использования ТУ |Значение тарифа |Период расчета |Период начисления |Сумма    |Объем услуги |Объем потребленный |Конец периода |Начало периода |
        |'31.08.2020 23:59:59' |'Орлов Игорь Алексеевич' |'Холодное водоснабжение' |'*_ХВС + водоотведение'         |'По формулам расчета'    |'Основное направление'       |'18,660'        |'01.08.2020'   |'01.08.2020'      |''       |''           |''                 |'01.09.2020'  |'01.08.2020'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                  |Услуга                   |Точка учета                     |Способ начисления        |Направление использования ТУ |Значение тарифа |Период расчета |Период начисления |Сумма    |Объем услуги |Объем потребленный |Конец периода |Начало периода |
        |'31.08.2020 23:59:59' |'Орлов Игорь Алексеевич' |'Водоотведение'          |'*_ХВС + водоотведение'         |'По формулам расчета'    |'Основное направление'       |'4,970'         |'01.08.2020'   |'01.08.2020'      |''       |''           |''                 |'01.09.2020'  |'01.08.2020'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                  |Услуга                   |Точка учета                     |Способ начисления        |Направление использования ТУ |Значение тарифа |Период расчета |Период начисления |Сумма    |Объем услуги |Объем потребленный |Конец периода |Начало периода |
        |'31.08.2020 23:59:59' |'Орлов Игорь Алексеевич' |'Водоотведение'          |'*_ХВС + водоотведение'         |'По формулам расчета'    |'Основное направление'       |'4,970'         |'01.08.2020'   |'01.08.2020'      |''       |''           |''                 |'01.09.2020'  |'01.08.2020'   |