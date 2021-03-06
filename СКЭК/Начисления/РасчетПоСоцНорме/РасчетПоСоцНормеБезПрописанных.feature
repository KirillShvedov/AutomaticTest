#language: ru
@tree
Функционал: <описание фичи>
Как <Роль>
Я хочу <проверить расчет абонента Кильдюшкина, на расчет по повышенному тарифу из-за отсутствия прописанных>
Чтобы <бизнес-эффект>

Контекст:
    Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: <РасчетПоСоцНормеБезПрописанных>
    И я подготавливаю тестовые данные
        И я загружаю макет "РасчетПоСоцНормеБезПрописанных"        
    И я перепровожу загруженные данные
        И Я перепровожу все документы абонента "Кильдюшкин Анатолий Анатольевич"
    И Я запускаю выполнение начислений по организации 'ОАО "СКЭК"' и району 'Плотниковское СП Промышленновского р-на' и МКД '' с 'Июль' '2019' по 'Сентябрь 2019'
    И Я проверяю полученные результаты
        И Я открываю навигационную ссылку "e1cib/list/РегистрНакопления.энргОбъемНачислений"
        Тогда открылось окно 'Объем начислений'
        Тогда в таблице "Список" количество строк "равно" 7       
        И в таблице "Список" я перехожу к строке:
        |Услуга                  |Точка учета                  |Вид начисления |Способ начисления |Прибор учета |Поставщик  |Период расчета |Период начисления |Сверх норматива |Начало периода |Конец периода |Сумма     |Объем услуги |Объем потребленный |
        |'Горячее водоснабжение' |'ввод_Горячее водоснабжение' |'Начисление'   |'По приборам'     |'065893'     |'ОАО СКЭК' |'01.07.2019'   |'01.07.2019'      |'Нет'           |'01.07.2019'   |'01.08.2019'  |'163,96'  |'2,000000'   |'2,000000'         |
        И в таблице "Список" я перехожу к строке:
        |Услуга                  |Точка учета                  |Вид начисления |Способ начисления |Прибор учета |Поставщик  |Период расчета |Период начисления |Сверх норматива |Начало периода |Конец периода |Сумма     |Объем услуги |Объем потребленный |
        |'Отопление'             |'узел_Отопление'             |'Начисление'   |'По нормативу'    |''           |'ОАО СКЭК' |'01.07.2019'   |'01.07.2019'      |'Да'            |'01.07.2019'   |'01.08.2019'  |'2 474,02'|'1,903095'   |'1,903095'         |
        И в таблице "Список" я перехожу к строке:
        |Услуга                  |Точка учета                  |Вид начисления |Способ начисления |Прибор учета |Поставщик  |Период расчета |Период начисления |Сверх норматива |Начало периода |Конец периода |Сумма     |Объем услуги |Объем потребленный |
        |'Горячее водоснабжение' |'ввод_Горячее водоснабжение' |'Начисление'   |'По приборам'     |'065893'     |'ОАО СКЭК' |'01.08.2019'   |'01.08.2019'      |'Нет'           |'01.08.2019'   |'01.09.2019'  |'327,92'  |'4,000000'   |'4,000000'         |
        И в таблице "Список" я перехожу к строке:
        |Услуга                  |Точка учета                  |Вид начисления |Способ начисления |Прибор учета |Поставщик  |Период расчета |Период начисления |Сверх норматива |Начало периода |Конец периода |Сумма     |Объем услуги |Объем потребленный |
        |'Отопление'             |'узел_Отопление'             |'Начисление'   |'По нормативу'    |''           |'ОАО СКЭК' |'01.08.2019'   |'01.08.2019'      |'Да'            |'01.08.2019'   |'01.09.2019'  |'2 474,02'|'1,903095'   |'1,903095'         |
        И в таблице "Список" я перехожу к строке:
        |Услуга                  |Точка учета                  |Вид начисления |Способ начисления |Прибор учета |Поставщик  |Период расчета |Период начисления |Сверх норматива |Начало периода |Конец периода |Сумма     |Объем услуги |Объем потребленный |
        |'Отопление'             |'узел_Отопление'             |'Начисление'   |'По нормативу'    |''           |'ОАО СКЭК' |'01.09.2019'   |'01.09.2019'      |'Да'            |'01.09.2019'   |'15.09.2019'  |'1 154,54'|'0,888111'   |'0,888111'         |
        И в таблице "Список" я перехожу к строке:
        |Услуга                  |Точка учета                  |Вид начисления |Способ начисления |Прибор учета |Поставщик  |Период расчета |Период начисления |Сверх норматива |Начало периода |Конец периода |Сумма     |Объем услуги |Объем потребленный |
        |'Горячее водоснабжение' |'ввод_Горячее водоснабжение' |'Начисление'   |'По приборам'     |'065893'     |'ОАО СКЭК' |'01.09.2019'   |'01.09.2019'      |'Нет'           |'01.09.2019'   |'01.10.2019'  |'245,94'  |'3,000000'   |'3,000000'         |
        И в таблице "Список" я перехожу к строке:
        |Услуга                  |Точка учета                  |Вид начисления |Способ начисления |Прибор учета |Поставщик  |Период расчета |Период начисления |Сверх норматива |Начало периода |Конец периода |Сумма     |Объем услуги |Объем потребленный |
        |'Отопление'             |'узел_Отопление'             |'Начисление'   |'По нормативу'    |''           |'ОАО СКЭК' |'01.09.2019'   |'01.09.2019'      |'Да'            |'15.09.2019'   |'01.10.2019'  |'1 319,48'|'1,014984'   |'1,014984'         |