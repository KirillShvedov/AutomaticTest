    #language: ru
    @tree
    @card "https://trello.com/c/Cbw4jsok"
    Функционал: <описание фичи>
    Как <Роль>
    Я хочу <проверить расчет расчет по показаниям>
    Чтобы <бизнес-эффект>
    Карточка "https://trello.com/c/Cbw4jsok"
    Контекст:
    Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

    Сценарий: <РасчетЛетнегоВодопроведения>
    И я подготавливаю тестовые данные
        И я загружаю макет "РасчетВСлучаеИзмененияСхемыПодчин"
    И я перепровожу загруженные данные
        И В командном интерфейсе я выбираю 'Работа с абонентами' 'Открытие/закрытие лс физического лица'
        Тогда открылось окно 'Открытие/закрытие лс физического лица'
        И в таблице 'Список' я выделяю все строки
        И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюПровести' на элементе формы с именем "Список"
        И В командном интерфейсе я выбираю 'Работа с абонентами' 'Акт ввода/вывода/замены прибора учёта'
        Тогда открылось окно 'Акт ввода/вывода/замены прибора учёта'
        И в таблице 'Список' я выделяю все строки
        И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюПровести' на элементе формы с именем "Список"
        И В командном интерфейсе я выбираю 'Работа с абонентами' 'Установить схему подчиненности точек учета'
        Тогда открылось окно 'Установить схему подчиненности точек учета'
        И в таблице 'Список' я выделяю все строки
        И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюПровести' на элементе формы с именем "Список"
        И В командном интерфейсе я выбираю 'Работа с абонентами' 'Регистрация показаний абонента'
        Тогда открылось окно 'Регистрация показаний абонента'
        И в таблице 'Список' я выделяю все строки
        И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюПровести' на элементе формы с именем "Список"
    И Я запускаю выполнение начислений по организации 'ОАО "СКЭК"' и району 'Кемеровский городской округ' и МКД '' с 'Май' '2020' по 'Июнь 2020'
    И я проверяю полученные результаты
        И Я открываю навигационную ссылку "e1cib/list/РегистрНакопления.энргОбъемНачислений"
        Тогда открылось окно 'Объем начислений'
        #Май
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                  |Услуга                   |Точка учета                     |Способ начисления |Направление использования ТУ |Значение тарифа |Период расчета |Период начисления |Сверх норматива |Не применять сезонность |Сумма    |Объем услуги |Объем потребленный |Сумма по повышенному коэффициенту |Начало периода |Конец периода |
        |'31.05.2020 23:59:59' |'Юрьев Антон Витальевич' |'Холодное водоснабжение' |'огород_Холодное водоснабжение' |'По нормативу'    |'полив из водопровода'       |'18,660'        |'01.05.2020'   |'01.05.2020'      |'Нет'           |'Да'                    |'31,17'  |'1,670381'   |''                 |''                                |'18.05.2020'   |'01.06.2020'  |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                  |Услуга                   |Точка учета                     |Способ начисления |Направление использования ТУ |Значение тарифа |Период расчета |Период начисления |Сверх норматива |Не применять сезонность |Сумма    |Объем услуги |Объем потребленный |Сумма по повышенному коэффициенту |Начало периода |Конец периода |
        |'31.05.2020 23:59:59' |'Юрьев Антон Витальевич' |'Холодное водоснабжение' |'ввод_ХВС + водоотведение'      |'По нормативу'    |'Основное направление'       |'18,660'        |'01.05.2020'   |'01.05.2020'      |'Нет'           |'Нет'                   |'209,33' |'7,478710'   |''                 |'69,78'                           |'18.05.2020'   |'01.06.2020'  |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                  |Услуга                   |Точка учета                     |Способ начисления |Направление использования ТУ |Значение тарифа |Период расчета |Период начисления |Сверх норматива |Не применять сезонность |Сумма    |Объем услуги |Объем потребленный |Сумма по повышенному коэффициенту |Начало периода |Конец периода |
        |'31.05.2020 23:59:59' |'Юрьев Антон Витальевич' |'Водоотведение'          |'ввод_ХВС + водоотведение'      |'По нормативу'    |'Основное направление'       |'14,320'        |'01.05.2020'   |'01.05.2020'      |'Нет'           |'Нет'                   |''       |''           |'7,478710'         |''                                |'18.05.2020'   |'01.06.2020'  |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                  |Услуга                   |Точка учета                     |Способ начисления |Направление использования ТУ |Значение тарифа |Период расчета |Период начисления |Сверх норматива |Не применять сезонность |Сумма    |Объем услуги |Объем потребленный |Сумма по повышенному коэффициенту |Начало периода |Конец периода |
        |'31.05.2020 23:59:59' |'Юрьев Антон Витальевич' |'Холодное водоснабжение' |'ввод_ХВС + водоотведение'      |'По нормативу'    |'Основное направление'       |'18,660'        |'01.05.2020'   |'01.05.2020'      |'Нет'           |'Нет'                   |''       |''           |'7,478710'         |''                                |'18.05.2020'   |'01.06.2020'  |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                  |Услуга                   |Точка учета                     |Способ начисления |Направление использования ТУ |Значение тарифа |Период расчета |Период начисления |Сверх норматива |Не применять сезонность |Сумма    |Объем услуги |Объем потребленный |Сумма по повышенному коэффициенту |Начало периода |Конец периода |
        |'31.05.2020 23:59:59' |'Юрьев Антон Витальевич' |'Водоотведение'          |'ввод_ХВС + водоотведение'      |'По нормативу'    |'Основное направление'       |'14,320'        |'01.05.2020'   |'01.05.2020'      |'Нет'           |'Нет'                   |'107,10' |'7,478710'   |''                 |''                                |'18.05.2020'   |'01.06.2020'  |
        #Июнь 1-19
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                  |Услуга                   |Точка учета                     |Способ начисления |Направление использования ТУ |Прибор учета |Значение тарифа |Период расчета |Период начисления |Сверх норматива |Не применять сезонность |Сумма    |Объем услуги |Объем потребленный |Сумма по повышенному коэффициенту |Конец периода |Начало периода |
        |'30.06.2020 23:59:59' |'Юрьев Антон Витальевич' |'Холодное водоснабжение' |'огород_Холодное водоснабжение' |'По нормативу'    |'полив из водопровода'       |''           |'18,660'        |'01.06.2020'   |'01.06.2020'      |'Нет'           |'Да'                    |''       |''           |'0,443790'         |''                                |'19.06.2020'  |'01.06.2020'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                  |Услуга                   |Точка учета                     |Способ начисления |Направление использования ТУ |Прибор учета |Значение тарифа |Период расчета |Период начисления |Сверх норматива |Не применять сезонность |Сумма    |Объем услуги |Объем потребленный |Сумма по повышенному коэффициенту |Конец периода |Начало периода |
        |'30.06.2020 23:59:59' |'Юрьев Антон Витальевич' |'Холодное водоснабжение' |'огород_Холодное водоснабжение' |'По нормативу'    |'полив из водопровода'       |''           |'18,660'        |'01.06.2020'   |'01.06.2020'      |'Нет'           |'Да'                    |'41,41'  |'2,219220'   |''                 |''                                |'19.06.2020'  |'01.06.2020'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                  |Услуга                   |Точка учета                     |Способ начисления |Направление использования ТУ |Прибор учета |Значение тарифа |Период расчета |Период начисления |Сверх норматива |Не применять сезонность |Сумма    |Объем услуги |Объем потребленный |Сумма по повышенному коэффициенту |Конец периода |Начало периода |
        |'30.06.2020 23:59:59' |'Юрьев Антон Витальевич' |'Холодное водоснабжение' |'ввод_ХВС + водоотведение'      |'По нормативу'    |'Основное направление'       |''           |'18,660'        |'01.06.2020'   |'01.06.2020'      |'Нет'           |'Нет'                   |'278,11' |'9,936000'   |''                 |'92,70'                           |'19.06.2020'  |'01.06.2020'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                  |Услуга                   |Точка учета                     |Способ начисления |Направление использования ТУ |Прибор учета |Значение тарифа |Период расчета |Период начисления |Сверх норматива |Не применять сезонность |Сумма    |Объем услуги |Объем потребленный |Сумма по повышенному коэффициенту |Конец периода |Начало периода |
        |'30.06.2020 23:59:59' |'Юрьев Антон Витальевич' |'Холодное водоснабжение' |'ввод_ХВС + водоотведение'      |'По нормативу'    |'Основное направление'       |''           |'18,660'        |'01.06.2020'   |'01.06.2020'      |'Нет'           |'Нет'                   |''       |''           |'9,936000'         |''                                |'19.06.2020'  |'01.06.2020'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                  |Услуга                   |Точка учета                     |Способ начисления |Направление использования ТУ |Прибор учета |Значение тарифа |Период расчета |Период начисления |Сверх норматива |Не применять сезонность |Сумма    |Объем услуги |Объем потребленный |Сумма по повышенному коэффициенту |Конец периода |Начало периода |
        |'30.06.2020 23:59:59' |'Юрьев Антон Витальевич' |'Водоотведение'          |'ввод_ХВС + водоотведение'      |'По нормативу'    |'Основное направление'       |''           |'14,320'        |'01.06.2020'   |'01.06.2020'      |'Нет'           |'Нет'                   |'142,28' |'9,936000'   |''                 |''                                |'19.06.2020'  |'01.06.2020'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                  |Услуга                   |Точка учета                     |Способ начисления |Направление использования ТУ |Прибор учета |Значение тарифа |Период расчета |Период начисления |Сверх норматива |Не применять сезонность |Сумма    |Объем услуги |Объем потребленный |Сумма по повышенному коэффициенту |Конец периода |Начало периода |
        |'30.06.2020 23:59:59' |'Юрьев Антон Витальевич' |'Водоотведение'          |'ввод_ХВС + водоотведение'      |'По нормативу'    |'Основное направление'       |''           |'14,320'        |'01.06.2020'   |'01.06.2020'      |'Нет'           |'Нет'                   |''       |''           |'9,936000'         |''                                |'19.06.2020'  |'01.06.2020'   |
        #Июнь 19-01
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                  |Услуга                   |Точка учета                     |Способ начисления |Направление использования ТУ |Прибор учета |Значение тарифа |Период расчета |Период начисления |Сверх норматива |Не применять сезонность |Сумма    |Объем услуги |Объем потребленный |Сумма по повышенному коэффициенту |Конец периода |Начало периода |
        |'30.06.2020 23:59:59' |'Юрьев Антон Витальевич' |'Холодное водоснабжение' |'огород_Холодное водоснабжение' |'По нормативу'    |'полив из водопровода'       |''           |'18,660'        |'01.06.2020'   |'01.06.2020'      |'Нет'           |'Нет'                   |''       |''           |''                 |''                                |'01.07.2020'  |'19.06.2020'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                  |Услуга                   |Точка учета                     |Способ начисления |Направление использования ТУ |Прибор учета |Значение тарифа |Период расчета |Период начисления |Сверх норматива |Не применять сезонность |Сумма    |Объем услуги |Объем потребленный |Сумма по повышенному коэффициенту |Конец периода |Начало периода |
        |'30.06.2020 23:59:59' |'Юрьев Антон Витальевич' |'Холодное водоснабжение' |'огород_Холодное водоснабжение' |'По нормативу'    |'полив из водопровода'       |''           |'18,660'        |'01.06.2020'   |'01.06.2020'      |'Нет'           |'Нет'                   |''       |''           |'8,875800'         |''                                |'01.07.2020'  |'19.06.2020'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                  |Услуга                   |Точка учета                     |Способ начисления |Направление использования ТУ |Прибор учета |Значение тарифа |Период расчета |Период начисления |Сверх норматива |Не применять сезонность |Сумма    |Объем услуги |Объем потребленный |Сумма по повышенному коэффициенту |Конец периода |Начало периода |
        |'30.06.2020 23:59:59' |'Юрьев Антон Витальевич' |'Холодное водоснабжение' |'ввод_ХВС + водоотведение'      |'По приборам'     |'Основное направление'       |'2458025'    |'18,660'        |'01.06.2020'   |'01.06.2020'      |'Нет'           |'Нет'                   |'186,79' |'10,010000'  |''                 |''                                |'01.07.2020'  |'19.06.2020'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                  |Услуга                   |Точка учета                     |Способ начисления |Направление использования ТУ |Прибор учета |Значение тарифа |Период расчета |Период начисления |Сверх норматива |Не применять сезонность |Сумма    |Объем услуги |Объем потребленный |Сумма по повышенному коэффициенту |Конец периода |Начало периода |
        |'30.06.2020 23:59:59' |'Юрьев Антон Витальевич' |'Холодное водоснабжение' |'ввод_ХВС + водоотведение'      |'По приборам'     |'Основное направление'       |'2458025'    |'18,660'        |'01.06.2020'   |'01.06.2020'      |'Нет'           |'Нет'                   |''       |''           |''                 |''                                |'01.07.2020'  |'19.06.2020'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                  |Услуга                   |Точка учета                     |Способ начисления |Направление использования ТУ |Прибор учета |Значение тарифа |Период расчета |Период начисления |Сверх норматива |Не применять сезонность |Сумма    |Объем услуги |Объем потребленный |Сумма по повышенному коэффициенту |Конец периода |Начало периода |
        |'30.06.2020 23:59:59' |'Юрьев Антон Витальевич' |'Водоотведение'          |'ввод_ХВС + водоотведение'      |'По приборам'     |'Основное направление'       |'2458025'    |'14,320'        |'01.06.2020'   |'01.06.2020'      |'Нет'           |'Нет'                   |''       |''           |''                 |''                                |'01.07.2020'  |'19.06.2020'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                  |Услуга                   |Точка учета                     |Способ начисления |Направление использования ТУ |Прибор учета |Значение тарифа |Период расчета |Период начисления |Сверх норматива |Не применять сезонность |Сумма    |Объем услуги |Объем потребленный |Сумма по повышенному коэффициенту |Конец периода |Начало периода |
        |'30.06.2020 23:59:59' |'Юрьев Антон Витальевич' |'Водоотведение'          |'ввод_ХВС + водоотведение'      |'По приборам'     |'Основное направление'       |'2458025'    |'14,320'        |'01.06.2020'   |'01.06.2020'      |'Нет'           |'Нет'                   |'143,34' |'10,010000'  |''                 |''                                |'01.07.2020'  |'19.06.2020'   |
