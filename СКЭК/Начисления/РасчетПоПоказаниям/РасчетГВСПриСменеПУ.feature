#language: ru
@tree
@card "https://trello.com/c/4QKXDKGN"
Функционал: <описание фичи>
Как <Роль>
Я хочу <проверить расчет расчет по показаниям>
Чтобы <бизнес-эффект>
Контекст:
    Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: <РасчетГВСПриСменеПУ>
    И я подготавливаю тестовые данные
        И я загружаю макет "РасчетГВСПриСменеПУ"
    И я перепровожу загруженные данные
        И В командном интерфейсе я выбираю 'Администрирование' 'Ввод начальных остатков'
        Тогда открылось окно 'Ввод начальных остатков'
        И в таблице 'Список' я выделяю все строки
        И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюПровести' на элементе формы с именем "Список"
        И В командном интерфейсе я выбираю 'Работа с абонентами' 'Акт ввода/вывода/замены прибора учёта'
        Тогда открылось окно 'Акт ввода/вывода/замены прибора учёта'
        И в таблице 'Список' я выделяю все строки
        И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюПровести' на элементе формы с именем "Список"
        И В командном интерфейсе я выбираю 'Работа с абонентами' 'Регистрация показаний абонента'
        Тогда открылось окно 'Регистрация показаний абонента'
        И в таблице 'Список' я выделяю все строки
        И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюПровести' на элементе формы с именем "Список"
    И Я запускаю выполнение начислений по организации 'ОАО "СКЭК"' и району 'Плотниковское СП Промышленновского р-на' и МКД '' с 'Июль' '2019' по 'Сентябрь 2019'
    И Я проверяю полученные результаты
        И Я открываю навигационную ссылку "e1cib/list/РегистрНакопления.энргОбъемНачислений"
        Тогда открылось окно 'Объем начислений'
        Тогда в таблице "Список" количество строк "равно" 10
        #Июль
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                    |Услуга                  |Точка учета                  |Вид начисления |Способ начисления     |Прибор учета |Значение тарифа |Частный сектор |Сверх норматива |Сумма      |Объем услуги |Объем потребленный |Объем услуги соц норма |Начало периода |Конец периода |
        |'31.07.2019 23:59:59' |'Еремина Нина Анатольевна' |'Горячее водоснабжение' |'ввод_Горячее водоснабжение' |'Начисление'   |'По приборам'         |'19425417'   |'81,980'        |'Да'           |'Нет'           |'327,92'   |'4,000000'   |'4,000000'         |''                     |'01.07.2019'   |'01.08.2019'  |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                    |Услуга                  |Точка учета                  |Вид начисления |Способ начисления     |Прибор учета |Значение тарифа |Частный сектор |Сверх норматива |Сумма      |Объем услуги |Объем потребленный |Объем услуги соц норма |Начало периода |Конец периода |
        |'31.07.2019 23:59:59' |'Еремина Нина Анатольевна' |'Отопление'             |'узел_Отопление'             |'Начисление'   |'По нормативу'        |''           |'1 001,840'     |'Да'           |'Нет'           |'825,69'   |'0,824175'   |'0,824175'         |'0,824175'             |'01.07.2019'   |'01.08.2019'  |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                    |Услуга                  |Точка учета                  |Вид начисления |Способ начисления     |Прибор учета |Значение тарифа |Частный сектор |Сверх норматива |Сумма      |Объем услуги |Объем потребленный |Объем услуги соц норма |Начало периода |Конец периода |
        |'31.07.2019 23:59:59' |'Еремина Нина Анатольевна' |'Отопление'             |'узел_Отопление'             |'Начисление'   |'По нормативу'        |''           |'1 300,000'     |'Да'           |'Да'            |'1 142,86' |'0,879120'   |'0,879120'         |''                     |'01.07.2019'   |'01.08.2019'  |
        #Август       
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                    |Услуга                  |Точка учета                  |Вид начисления |Способ начисления     |Прибор учета |Значение тарифа |Частный сектор |Сверх норматива |Сумма      |Объем услуги |Объем потребленный |Объем услуги соц норма |Начало периода |Конец периода |
        |'31.08.2019 23:59:59' |'Еремина Нина Анатольевна' |'Горячее водоснабжение' |'ввод_Горячее водоснабжение' |'Начисление'   |'По приборам'         |'0102015516' |'81,980'        |'Да'           |'Нет'           |'409,90'   |'5,000000'   |'5,000000'         |''                     |'01.08.2019'   |'01.09.2019'  |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                    |Услуга                  |Точка учета                  |Вид начисления |Способ начисления     |Прибор учета |Значение тарифа |Частный сектор |Сверх норматива |Сумма      |Объем услуги |Объем потребленный |Объем услуги соц норма |Начало периода |Конец периода |
        |'31.08.2019 23:59:59' |'Еремина Нина Анатольевна' |'Отопление'             |'узел_Отопление'             |'Начисление'   |'По нормативу'        |''           |'1 001,840'     |'Да'           |'Нет'           |'825,69'   |'0,824175'   |'0,824175'         |'0,824175'             |'01.08.2019'   |'01.09.2019'  |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                    |Услуга                  |Точка учета                  |Вид начисления |Способ начисления     |Прибор учета |Значение тарифа |Частный сектор |Сверх норматива |Сумма      |Объем услуги |Объем потребленный |Объем услуги соц норма |Начало периода |Конец периода |
        |'31.08.2019 23:59:59' |'Еремина Нина Анатольевна' |'Отопление'             |'узел_Отопление'             |'Начисление'   |'По нормативу'        |''           |'1 300,000'     |'Да'           |'Да'            |'1 142,86' |'0,879120'   |'0,879120'         |''                     |'01.08.2019'   |'01.09.2019'  |
        #Сентябрь
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                    |Услуга                  |Точка учета                  |Вид начисления |Способ начисления     |Прибор учета |Значение тарифа |Частный сектор |Сверх норматива |Сумма      |Объем услуги |Объем потребленный |Объем услуги соц норма |Начало периода |Конец периода |
        |'30.09.2019 23:59:59' |'Еремина Нина Анатольевна' |'Горячее водоснабжение' |'ввод_Горячее водоснабжение' |'Начисление'   |'По приборам'         |'0102015516' |'81,980'        |'Да'           |'Нет'           |'245,94'   |'3,000000'   |'3,000000'         |''                     |'01.09.2019'   |'01.10.2019'  |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                    |Услуга                  |Точка учета                  |Вид начисления |Способ начисления     |Прибор учета |Значение тарифа |Частный сектор |Сверх норматива |Сумма      |Объем услуги |Объем потребленный |Объем услуги соц норма |Начало периода |Конец периода |
        |'30.09.2019 23:59:59' |'Еремина Нина Анатольевна' |'Отопление'             |'узел_Отопление'             |'Начисление'   |'По нормативу'        |''           |'1 001,840'     |'Да'           |'Нет'           |'825,69'   |'0,824175'   |'0,824175'         |'0,824175'             |'01.09.2019'   |'01.10.2019'  |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                    |Услуга                  |Точка учета                  |Вид начисления |Способ начисления     |Прибор учета |Значение тарифа |Частный сектор |Сверх норматива |Сумма      |Объем услуги |Объем потребленный |Объем услуги соц норма |Начало периода |Конец периода |
        |'30.09.2019 23:59:59' |'Еремина Нина Анатольевна' |'Отопление'             |'узел_Отопление'             |'Начисление'   |'По нормативу'        |''           |'1 300,000'     |'Да'           |'Да'            |'1 142,86' |'0,879120'   |'0,879120'         |''                     |'01.09.2019'   |'01.10.2019'  |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                    |Услуга                  |Точка учета                  |Вид начисления |Способ начисления     |Прибор учета |Значение тарифа |Частный сектор |Сверх норматива |Сумма      |Объем услуги |Объем потребленный |Объем услуги соц норма |Начало периода |Конец периода |
        |'30.09.2019 23:59:59' |'Еремина Нина Анатольевна' |'Отопление бани'        |'баня_Отопление бани'        |'Перерасчет'   |'Актированный расход' |''           |'1 001,840'     |'Да'           |'Нет'           |'30,06'    |'0,030000'   |''                 |''                     |'01.09.2019'   |'30.09.2019'  |
