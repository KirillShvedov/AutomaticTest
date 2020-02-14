    #language: ru
    @tree
    Функционал: <описание фичи>

    Как <Роль>
    Я хочу <проверить расчет среднего начисления в случае двух приборов учета и последующей замены. Абонент Бондарев>
    Чтобы <бизнес-эффект>

    Контекст:
        Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

    Сценарий: <расчет среднего начисления в случае двух приборов учета>
        И я подготавливаю тестовые данные
            И я загружаю макет "РасчетПоСреднемуНачислению.mxl"        
        И я перепровожу загруженные данные
            И Я перепровожу все документы абонента "Бондарев Александр Александрович"
        И Я запускаю выполнение начислений по организации 'ОАО "СКЭК"' и району 'Плотниковское СП Промышленновского р-на' с 'Июль' '2019' по 'Сентябрь 2019'
        И Я проверяю полученные результаты
            И Я открываю навигационную ссылку "e1cib/list/РегистрНакопления.энргОбъемНачислений"
            Тогда открылось окно 'Объем начислений'
            И в таблице "Список" я перехожу к строке:
            |Период                |Абонент                            |Услуга                  |Точка учета                     |Вид начисления |Способ начисления        |Прибор учета        |Период расчета |Период начисления |Начало периода |Конец периода |
            |'31.07.2019 23:59:59' |'Бондарев Александр Александрович' |'Горячее водоснабжение' |'ввод_Горячее водоснабжение'    |'Начисление'   |'Начисление по среднему' |'I 04320  дом гор.' |'01.07.2019'   |'01.07.2019'      |'01.07.2019'   |'01.08.2019'  |
            И в таблице "Список" текущая строка равна:
            |Объем услуги |Объем потребленный |
            |'2,333333'   |'2,333333'         |
            И в таблице "Список" я перехожу к строке:
            |Период                |Абонент                            |Услуга                  |Точка учета                     |Вид начисления |Способ начисления        |Прибор учета        |Период расчета |Период начисления |Начало периода |Конец периода |
            |'31.07.2019 23:59:59' |'Бондарев Александр Александрович' |'Горячее водоснабжение' |'2-ой ПУ_Горячее водоснабжение' |'Начисление'   |'Начисление по среднему' |'104310'            |'01.07.2019'   |'01.07.2019'      |'01.07.2019'   |'01.08.2019'  |
            И в таблице "Список" текущая строка равна:
            |Объем услуги |Объем потребленный |
            |'18,000000'  |'18,000000'        |
            И в таблице "Список" я перехожу к строке:
            |Период                |Абонент                            |Услуга                  |Точка учета                     |Вид начисления |Способ начисления        |Прибор учета        |Период расчета |Период начисления |Начало периода |Конец периода |
            |'31.08.2019 23:59:59' |'Бондарев Александр Александрович' |'Горячее водоснабжение' |'ввод_Горячее водоснабжение'    |'Начисление'   |'Начисление по среднему' |'I 04320  дом гор.' |'01.08.2019'   |'01.08.2019'      |'01.08.2019'   |'01.09.2019'  |
            И в таблице "Список" текущая строка равна:
            |Объем услуги |Объем потребленный |
            |'2,333333'   |'2,333333'         |
            И в таблице "Список" я перехожу к строке:
            |Период                |Абонент                            |Услуга                  |Точка учета                     |Вид начисления |Способ начисления        |Прибор учета        |Период расчета |Период начисления |Начало периода |Конец периода |
            |'31.08.2019 23:59:59' |'Бондарев Александр Александрович' |'Горячее водоснабжение' |'2-ой ПУ_Горячее водоснабжение' |'Начисление'   |'Начисление по среднему' |'104310'            |'01.08.2019'   |'01.08.2019'      |'01.08.2019'   |'01.09.2019'  |
            И в таблице "Список" текущая строка равна:
            |Объем услуги |Объем потребленный |
            |'18,000000'  |'18,000000'        |
            И в таблице "Список" я перехожу к строке:
            |Период                |Абонент                            |Услуга                  |Точка учета                     |Вид начисления |Способ начисления        |Прибор учета        |Период расчета |Период начисления |Начало периода |Конец периода |
            |'30.09.2019 23:59:59' |'Бондарев Александр Александрович' |'Горячее водоснабжение' |'ввод_Горячее водоснабжение'    |'Начисление'   |'Начисление по среднему' |'I 04320  дом гор.' |'01.09.2019'   |'01.09.2019'      |'01.09.2019'   |'01.10.2019'  |
            И в таблице "Список" текущая строка равна:
            |Объем услуги |Объем потребленный |
            |'2,333333'   |'2,333333'         |
            И в таблице "Список" я перехожу к строке:
            |Период                |Абонент                            |Услуга                  |Точка учета                     |Вид начисления |Способ начисления        |Прибор учета        |Период расчета |Период начисления |Начало периода |Конец периода |
            |'30.09.2019 23:59:59' |'Бондарев Александр Александрович' |'Горячее водоснабжение' |'2-ой ПУ_Горячее водоснабжение' |'Начисление'   |'Начисление по среднему' |'104310'            |'01.09.2019'   |'01.09.2019'      |'01.09.2019'   |'01.10.2019'  |
            И в таблице "Список" текущая строка равна:
            |Объем услуги |Объем потребленный |
            |'18,000000'  |'18,000000'        |
            И в таблице "Список" я перехожу к строке:
            |Период                |Абонент                            |Услуга                  |Точка учета                     |Вид начисления |Способ начисления        |Прибор учета        |Период расчета |Период начисления |Начало периода |Конец периода |
            |'31.10.2019 23:59:59' |'Бондарев Александр Александрович' |'Горячее водоснабжение' |'ввод_Горячее водоснабжение'    |'Начисление'   |'По приборам'            |'I 04320  дом гор.' |'01.10.2019'   |'01.10.2019'      |'01.10.2019'   |'01.11.2019'  |
            И в таблице "Список" текущая строка равна:
            |Объем услуги |Объем потребленный |
            |'6,000000'   |'6,000000'         |
            И в таблице "Список" я перехожу к строке:
            |Период                |Абонент                            |Услуга                  |Точка учета                     |Вид начисления |Способ начисления        |Прибор учета        |Период расчета |Период начисления |Начало периода |Конец периода |
            |'31.10.2019 23:59:59' |'Бондарев Александр Александрович' |'Горячее водоснабжение' |'2-ой ПУ_Горячее водоснабжение' |'Начисление'   |'По приборам'            |'104310'            |'01.10.2019'   |'01.10.2019'      |'01.10.2019'   |'01.11.2019'  |
            И в таблице "Список" текущая строка равна:
            |Объем услуги |Объем потребленный |
            |'2,000000'   |'2,000000'         |
            И в таблице "Список" я перехожу к строке:
            |Период                |Абонент                            |Услуга                  |Точка учета                     |Вид начисления |Способ начисления        |Прибор учета        |Период расчета |Период начисления |Начало периода |Конец периода |
            |'31.10.2019 23:59:59' |'Бондарев Александр Александрович' |'Горячее водоснабжение' |'ввод_Горячее водоснабжение'    |'Перерасчет'   |'Начисление по среднему' |''                  |'01.10.2019'   |'01.07.2019'      |''             |''            |
            И в таблице "Список" текущая строка равна:
            |Объем услуги |Объем потребленный |
            |'-2,333333'  |''                 |
            И в таблице "Список" я перехожу к строке:
            |Период                |Абонент                            |Услуга                  |Точка учета                     |Вид начисления |Способ начисления        |Прибор учета        |Период расчета |Период начисления |Начало периода |Конец периода |
            |'31.10.2019 23:59:59' |'Бондарев Александр Александрович' |'Горячее водоснабжение' |'ввод_Горячее водоснабжение'    |'Перерасчет'   |'Начисление по среднему' |''                  |'01.10.2019'   |'01.08.2019'      |''             |''            |
            И в таблице "Список" текущая строка равна:
            |Объем услуги |Объем потребленный |
            |'-2,333333'  |''                 |
            И в таблице "Список" я перехожу к строке:
            |Период                |Абонент                            |Услуга                  |Точка учета                     |Вид начисления |Способ начисления        |Прибор учета        |Период расчета |Период начисления |Начало периода |Конец периода |
            |'31.10.2019 23:59:59' |'Бондарев Александр Александрович' |'Горячее водоснабжение' |'ввод_Горячее водоснабжение'    |'Перерасчет'   |'Начисление по среднему' |''                  |'01.10.2019'   |'01.09.2019'      |''             |''            |
            И в таблице "Список" текущая строка равна:
            |Объем услуги |Объем потребленный |
            |'-2,333333'  |''                 |
            И в таблице "Список" я перехожу к строке:
            |Период                |Абонент                            |Услуга                  |Точка учета                     |Вид начисления |Способ начисления        |Прибор учета        |Период расчета |Период начисления |Начало периода |Конец периода |
            |'31.10.2019 23:59:59' |'Бондарев Александр Александрович' |'Горячее водоснабжение' |'2-ой ПУ_Горячее водоснабжение' |'Перерасчет'   |'Начисление по среднему' |''                  |'01.10.2019'   |'01.07.2019'      |''             |''            |
            И в таблице "Список" текущая строка равна:
            |Объем услуги |Объем потребленный |
            |'-18,000000' |''                 |
            И в таблице "Список" я перехожу к строке:
            |Период                |Абонент                            |Услуга                  |Точка учета                     |Вид начисления |Способ начисления        |Прибор учета        |Период расчета |Период начисления |Начало периода |Конец периода |
            |'31.10.2019 23:59:59' |'Бондарев Александр Александрович' |'Горячее водоснабжение' |'2-ой ПУ_Горячее водоснабжение' |'Перерасчет'   |'Начисление по среднему' |''                  |'01.10.2019'   |'01.08.2019'      |''             |''            |
            И в таблице "Список" текущая строка равна:
            |Объем услуги |Объем потребленный |
            |'-18,000000' |''                 |
            И в таблице "Список" я перехожу к строке:
            |Период                |Абонент                            |Услуга                  |Точка учета                     |Вид начисления |Способ начисления        |Прибор учета        |Период расчета |Период начисления |Начало периода |Конец периода |
            |'31.10.2019 23:59:59' |'Бондарев Александр Александрович' |'Горячее водоснабжение' |'2-ой ПУ_Горячее водоснабжение' |'Перерасчет'   |'Начисление по среднему' |''                  |'01.10.2019'   |'01.09.2019'      |''             |''            |
            И в таблице "Список" текущая строка равна:
            |Объем услуги |Объем потребленный |
            |'-18,000000' |''                 |
            И в таблице "Список" я перехожу к строке:
            |Период                |Абонент                            |Услуга                  |Точка учета                     |Вид начисления |Способ начисления        |Прибор учета        |Период расчета |Период начисления |Начало периода |Конец периода |
            |'30.11.2019 23:59:59' |'Бондарев Александр Александрович' |'Горячее водоснабжение' |'ввод_Горячее водоснабжение'    |'Начисление'   |'По приборам'            |'I 04320  дом гор.' |'01.11.2019'   |'01.11.2019'      |'01.11.2019'   |'27.11.2019'  |
            И в таблице "Список" текущая строка равна:
            |Объем услуги |Объем потребленный |
            |'9,000000'   |'9,000000'         |
            И в таблице "Список" я перехожу к строке:
            |Период                |Абонент                            |Услуга                  |Точка учета                     |Вид начисления |Способ начисления        |Прибор учета        |Период расчета |Период начисления |Начало периода |Конец периода |
            |'30.11.2019 23:59:59' |'Бондарев Александр Александрович' |'Горячее водоснабжение' |'ввод_Горячее водоснабжение'    |'Начисление'   |'По приборам'            |'0102006038'        |'01.11.2019'   |'01.11.2019'      |'27.11.2019'   |'01.12.2019'  |
            И в таблице "Список" текущая строка равна:
            |Объем услуги |Объем потребленный |
            |'1,000000'   |'1,000000'         |
            И в таблице "Список" я перехожу к строке:
            |Период                |Абонент                            |Услуга                  |Точка учета                     |Вид начисления |Способ начисления        |Прибор учета        |Период расчета |Период начисления |Начало периода |Конец периода |
            |'30.11.2019 23:59:59' |'Бондарев Александр Александрович' |'Горячее водоснабжение' |'2-ой ПУ_Горячее водоснабжение' |'Начисление'   |'По приборам'            |'104310'            |'01.11.2019'   |'01.11.2019'      |'01.11.2019'   |'27.11.2019'  |
            И в таблице "Список" текущая строка равна:
            |Объем услуги |Объем потребленный |
            |'0,000000'   |'0,000000'         |
            И в таблице "Список" я перехожу к строке:
            |Период                |Абонент                            |Услуга                  |Точка учета                     |Вид начисления |Способ начисления        |Прибор учета        |Период расчета |Период начисления |Начало периода |Конец периода |
            |'30.11.2019 23:59:59' |'Бондарев Александр Александрович' |'Горячее водоснабжение' |'2-ой ПУ_Горячее водоснабжение' |'Начисление'   |'По приборам'            |'0102006030'        |'01.11.2019'   |'01.11.2019'      |'27.11.2019'   |'01.12.2019'  |
            И в таблице "Список" текущая строка равна:
            |Объем услуги |Объем потребленный |
            |'2,000000'   |'2,000000'         |
            И в таблице "Список" я перехожу к строке:
            |Период                |Абонент                            |Услуга                  |Точка учета                     |Вид начисления |Способ начисления        |Прибор учета        |Период расчета |Период начисления |Начало периода |Конец периода |
            |'31.12.2019 23:59:59' |'Бондарев Александр Александрович' |'Горячее водоснабжение' |'ввод_Горячее водоснабжение'    |'Начисление'   |'По приборам'            |'0102006038'        |'01.12.2019'   |'01.12.2019'      |'01.12.2019'   |'01.01.2020'  |
            И в таблице "Список" текущая строка равна:
            |Объем услуги |Объем потребленный |
            |'1,000000'   |'1,000000'         |
            И в таблице "Список" я перехожу к строке:
            |Период                |Абонент                            |Услуга                  |Точка учета                     |Вид начисления |Способ начисления        |Прибор учета        |Период расчета |Период начисления |Начало периода |Конец периода |
            |'31.12.2019 23:59:59' |'Бондарев Александр Александрович' |'Горячее водоснабжение' |'2-ой ПУ_Горячее водоснабжение' |'Начисление'   |'По приборам'            |'0102006030'        |'01.12.2019'   |'01.12.2019'      |'01.12.2019'   |'01.01.2020'  |
            И в таблице "Список" текущая строка равна:
            |Объем услуги |Объем потребленный |
            |'0,000000'   |'0,000000'         |