#language: ru
@tree
Функционал: Расчет Подчиненных услуг при наличии простых услуг с разными поставщиками
Как <Роль>
Я хочу <проверить расчет подчиненных услуг при наличии простых услуг>
Чтобы <бизнес-эффект>

Контекст:
    Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: <Расчет Подчиненных услуг при наличии простых услуг с разными поставщиками>
    И я подготавливаю тестовые данные
        И я загружаю макет "РасчетПодчиненныхУслугПриНаличииПростыхУслугСРазнымиПоставщиками.mxl"
        И я перепровожу загруженные данные
            И В командном интерфейсе я выбираю 'Работа с абонентами' 'Открытие/закрытие лс физического лица'
            Тогда открылось окно 'Открытие/закрытие лс физического лица'
            И в таблице 'Список' я выделяю все строки
            И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюПровести' на элементе формы с именем "Список"
            И В командном интерфейсе я выбираю 'Работа с абонентами' 'Регистрация показаний абонента'
            Тогда открылось окно 'Регистрация показаний абонента'
            И в таблице 'Список' я выделяю все строки
            И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюПровести' на элементе формы с именем "Список"
    И Я запускаю выполнение начислений по организации 'ООО "ПКС"' и району 'Плотниковское СП Промышленновского р-на' с 'Июль' '2019' по 'Сентябрь 2019'    
    И я проверяю полученные результаты
        И Я открываю навигационную ссылку "e1cib/list/РегистрНакопления.энргОбъемНачислений"
        Тогда открылось окно 'Объем начислений'
        #Июль 2019
        И в таблице "Список" я перехожу к строке:
        |Период                |Строение                                      |Абонент                    |Услуга                |Точка учета                       |Способ начисления |Период расчета |Период начисления |Начало периода |Конец периода |
        |'31.07.2019 23:59:59' |'Плотниково п, Юбилейная ул, Домовладение 16' |'Тюрин Алексей Васильевич' |'Водоотведение'       |'стоки от ГВ_ГВС + водоотведение' |'По приборам'     |'01.07.2019'   |'01.07.2019'      |'01.07.2019'   |'01.08.2019'  |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'1'          |'1'                |
         И в таблице "Список" я перехожу к строке:
        |Период                |Строение                                      |Абонент                    |Услуга                   |Точка учета                       |Способ начисления |Период расчета |Период начисления |Начало периода |Конец периода |
        |'31.07.2019 23:59:59' |'Плотниково п, Юбилейная ул, Домовладение 16' |'Тюрин Алексей Васильевич' |'Горячее водоснабжение'  |'стоки от ГВ_ГВС + водоотведение' |'По приборам'     |'01.07.2019'   |'01.07.2019'      |'01.07.2019'   |'01.08.2019'  |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'1'          |'1'                |
        #Август 2019
        И в таблице "Список" я перехожу к строке:
        |Период                |Строение                                      |Абонент                    |Услуга                |Точка учета                       |Способ начисления |Период расчета |Период начисления |Начало периода |Конец периода |
        |'31.08.2019 23:59:59' |'Плотниково п, Юбилейная ул, Домовладение 16' |'Тюрин Алексей Васильевич' |'Водоотведение'       |'стоки от ГВ_ГВС + водоотведение' |'По приборам'     |'01.08.2019'   |'01.08.2019'      |'01.08.2019'   |'01.09.2019'  |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'5'          |'5'                |
         И в таблице "Список" я перехожу к строке:
        |Период                |Строение                                      |Абонент                    |Услуга                   |Точка учета                       |Способ начисления |Период расчета |Период начисления |Начало периода |Конец периода |
        |'31.08.2019 23:59:59' |'Плотниково п, Юбилейная ул, Домовладение 16' |'Тюрин Алексей Васильевич' |'Горячее водоснабжение'  |'стоки от ГВ_ГВС + водоотведение' |'По приборам'     |'01.08.2019'   |'01.08.2019'      |'01.08.2019'   |'01.09.2019'  |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'5'          |'5'                |
        #Сентябрь 2019
        И в таблице "Список" я перехожу к строке:
        |Период                |Строение                                      |Абонент                    |Услуга                |Точка учета                       |Способ начисления |Период расчета |Период начисления |Начало периода |Конец периода |
        |'31.09.2019 23:59:59' |'Плотниково п, Юбилейная ул, Домовладение 16' |'Тюрин Алексей Васильевич' |'Водоотведение'       |'стоки от ГВ_ГВС + водоотведение' |'По приборам'     |'01.09.2019'   |'01.09.2019'      |'01.09.2019'   |'01.10.2019'  |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'5'          |'5'                |
         И в таблице "Список" я перехожу к строке:
        |Период                |Строение                                      |Абонент                    |Услуга                   |Точка учета                       |Способ начисления |Период расчета |Период начисления |Начало периода |Конец периода |
        |'31.09.2019 23:59:59' |'Плотниково п, Юбилейная ул, Домовладение 16' |'Тюрин Алексей Васильевич' |'Горячее водоснабжение'  |'стоки от ГВ_ГВС + водоотведение' |'По приборам'     |'01.09.2019'   |'01.09.2019'      |'01.09.2019'   |'01.10.2019'  |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'5'          |'5'                |