#language: ru
@tree
@card "https://trello.com/c/XeppwQJK"
Функционал: <описание фичи>
    Как <Роль>
    Я хочу <проверить расчет расчет по показаниям>
    Чтобы <бизнес-эффект>
    Карточка "https://trello.com/c/XeppwQJK"
Контекст:
    Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: <РасчетОтопленияПоСоцНорме>
    И я подготавливаю тестовые данные
        И я загружаю макет "РасчетОтопленияПоСоцНорме"
    И я перепровожу загруженные данные
        И В командном интерфейсе я выбираю 'Администрирование' 'Ввод начальных остатков'
        Тогда открылось окно 'Ввод начальных остатков'
        И в таблице 'Список' я выделяю все строки
        И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюПровести' на элементе формы с именем "Список"
        И В командном интерфейсе я выбираю 'Работа с абонентами' 'Регистрация показаний абонента'
        Тогда открылось окно 'Регистрация показаний абонента'
        И в таблице 'Список' я выделяю все строки
        И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюПровести' на элементе формы с именем "Список"
        И В командном интерфейсе я выбираю 'Работа с абонентами' 'Акт ввода/вывода/замены прибора учёта'
        Тогда открылось окно 'Акт ввода/вывода/замены прибора учёта'
        И в таблице 'Список' я выделяю все строки
        И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюПровести' на элементе формы с именем "Список"
    И Я запускаю выполнение начислений по организации 'ОАО "СКЭК"' и району 'Плотниковское СП Промышленновского р-на' и МКД '' с 'Июль' '2019' по 'Декабрь 2019'
    И Я проверяю полученные результаты
        И Я открываю навигационную ссылку "e1cib/list/РегистрНакопления.энргОбъемНачислений"
        Тогда открылось окно 'Объем начислений'
        И в таблице "Список" я активизирую поле "Услуга"
        И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюНайти' на элементе формы с именем "Список"
        Тогда открылось окно 'Найти'
        И из выпадающего списка "&Что искать" я выбираю по строке 'Отопление'
        И я нажимаю на кнопку '&Найти'
        Тогда открылось окно 'Объем начислений'
        Тогда в таблице "Список" количество строк "равно" 13
        #Июль
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                    |Услуга      |Точка учета      |Вид начисления |Способ начисления |Значение тарифа  |Сверх норматива  |
        |'31.07.2019 23:59:59' |'Еремина Нина Анатольевна' |'Отопление' |'узел_Отопление' |'Начисление'   |'По нормативу'    |'1 001,840'      |'Нет'            |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |Сумма    |Объем услуги соц норма |
        |'0,824175'   |''                 |'825,69' |'0,824175'             |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                    |Услуга      |Точка учета      |Вид начисления |Способ начисления |Значение тарифа |Сверх норматива |
        |'31.07.2019 23:59:59' |'Еремина Нина Анатольевна' |'Отопление' |'узел_Отопление' |'Начисление'   |'По нормативу'    |'1 300,000'     |'Да'            |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |Сумма      |Объем услуги соц норма |
        |'0,879120'   |''                 |'1 142,86' |''                     |
        #Август
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                    |Услуга      |Точка учета      |Вид начисления |Способ начисления |Значение тарифа  |Сверх норматива  |
        |'31.08.2019 23:59:59' |'Еремина Нина Анатольевна' |'Отопление' |'узел_Отопление' |'Начисление'   |'По нормативу'    |'1 001,840'      |'Нет'            |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |Сумма    |Объем услуги соц норма |
        |'0,824175'   |''                 |'825,69' |'0,824175'             |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                    |Услуга      |Точка учета      |Вид начисления |Способ начисления |Значение тарифа |Сверх норматива |
        |'31.08.2019 23:59:59' |'Еремина Нина Анатольевна' |'Отопление' |'узел_Отопление' |'Начисление'   |'По нормативу'    |'1 300,000'     |'Да'            |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |Сумма      |Объем услуги соц норма |
        |'0,879120'   |''                 |'1 142,86' |''                     |
        #Сентябрь
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                    |Услуга      |Точка учета      |Вид начисления |Способ начисления |Значение тарифа  |Сверх норматива  |Начало периода|
        |'30.09.2019 23:59:59' |'Еремина Нина Анатольевна' |'Отопление' |'узел_Отопление' |'Начисление'   |'По нормативу'    |'1 001,840'      |'Нет'            |'01.09.2019'  |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |Сумма    |Объем услуги соц норма |
        |'0,794871'   |''                 |'796,33' |'0,794871'             |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                    |Услуга      |Точка учета      |Вид начисления |Способ начисления |Значение тарифа  |Сверх норматива  |Начало периода|
        |'30.09.2019 23:59:59' |'Еремина Нина Анатольевна' |'Отопление' |'узел_Отопление' |'Начисление'   |'По нормативу'    |'1 001,840'      |'Нет'            |'15.09.2019'  |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |Сумма    |Объем услуги соц норма |
        |'0,029304'   |'1,211232'         |'29,36'  |'0,029304'             |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                    |Услуга      |Точка учета      |Вид начисления |Способ начисления |Значение тарифа |Сверх норматива |
        |'30.09.2019 23:59:59' |'Еремина Нина Анатольевна' |'Отопление' |'узел_Отопление' |'Начисление'   |'По нормативу'    |'1 300,000'     |'Да'            |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |Сумма      |Объем услуги соц норма |
        |'0,879120'   |''                 |'1 142,86' |''                     |
        #Октябрь
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                    |Услуга      |Точка учета      |Вид начисления |Способ начисления |Значение тарифа  |Сверх норматива  |
        |'31.10.2019 23:59:59' |'Еремина Нина Анатольевна' |'Отопление' |'узел_Отопление' |'Начисление'   |'По нормативу'    |'1 001,840'      |'Нет'            |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |Сумма    |Объем услуги соц норма |
        |'0,824175'   |'2,271060'         |'825,69' |'0,824175'             |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                    |Услуга      |Точка учета      |Вид начисления |Способ начисления |Значение тарифа |Сверх норматива |
        |'31.10.2019 23:59:59' |'Еремина Нина Анатольевна' |'Отопление' |'узел_Отопление' |'Начисление'   |'По нормативу'    |'1 300,000'     |'Да'            |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |Сумма      |Объем услуги соц норма |
        |'0,879120'   |''                 |'1 142,86' |''                     |
        #Ноябрь
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                    |Услуга      |Точка учета      |Вид начисления |Способ начисления |Значение тарифа  |Сверх норматива  |
        |'30.11.2019 23:59:59' |'Еремина Нина Анатольевна' |'Отопление' |'узел_Отопление' |'Начисление'   |'По нормативу'    |'1 001,840'      |'Нет'            |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |Сумма    |Объем услуги соц норма |
        |'0,824175'   |'2,271060'         |'825,69' |'0,824175'             |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                    |Услуга      |Точка учета      |Вид начисления |Способ начисления |Значение тарифа |Сверх норматива |
        |'30.11.2019 23:59:59' |'Еремина Нина Анатольевна' |'Отопление' |'узел_Отопление' |'Начисление'   |'По нормативу'    |'1 300,000'     |'Да'            |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |Сумма      |Объем услуги соц норма |
        |'0,879120'   |''                 |'1 142,86' |''                     |
        #Декабрь
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                    |Услуга      |Точка учета      |Вид начисления |Способ начисления |Значение тарифа  |Сверх норматива  |
        |'31.12.2019 23:59:59' |'Еремина Нина Анатольевна' |'Отопление' |'узел_Отопление' |'Начисление'   |'По нормативу'    |'1 001,840'      |'Нет'            |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |Сумма    |Объем услуги соц норма |
        |'0,824175'   |'2,271060'         |'825,69' |'0,824175'             |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                    |Услуга      |Точка учета      |Вид начисления |Способ начисления |Значение тарифа |Сверх норматива |
        |'31.12.2019 23:59:59' |'Еремина Нина Анатольевна' |'Отопление' |'узел_Отопление' |'Начисление'   |'По нормативу'    |'1 300,000'     |'Да'            |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |Сумма      |Объем услуги соц норма |
        |'0,879120'   |''                 |'1 142,86' |''                     |