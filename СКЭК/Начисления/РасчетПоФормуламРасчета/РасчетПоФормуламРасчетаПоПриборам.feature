    #language: ru
    @tree
    Функционал: <описание фичи>
    "https://trello.com/c/8X8LPHTx"
    Как <Роль>
    Я хочу <проверить расчет расчет по показаниям>
    Чтобы <бизнес-эффект>

    Контекст:
    Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

    Сценарий: <РасчетПоФормуламРасчетаПоПриборам>
    И я подготавливаю тестовые данные
        И я загружаю макет "РасчетПоФормуламРасчетаПоПриборам.mxl"
    И я перепровожу загруженные данные
        И В командном интерфейсе я выбираю 'Администрирование' 'Ввод начальных остатков'
        Тогда открылось окно 'Ввод начальных остатков'
        И в таблице 'Список' я выделяю все строки
        И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюПровести' на элементе формы с именем "Список"
        И В командном интерфейсе я выбираю 'Работа с абонентами' 'Регистрация показаний абонента'
        Тогда открылось окно 'Регистрация показаний абонента'
        И в таблице 'Список' я выделяю все строки
        И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюПровести' на элементе формы с именем "Список"
    И Я запускаю выполнение начислений по организации 'ОАО "СКЭК"' и району 'Кемеровский муниципальный район' и МКД '' с 'Июль' '2019' по 'Август 2019'
    И я проверяю полученные результаты
        И Я открываю навигационную ссылку "e1cib/list/РегистрНакопления.энргОбъемНачислений"
        Тогда открылось окно 'Объем начислений'   
        И в таблице "Список" я перехожу к строке:
        |Период                |Услуга                   |Точка учета                     |Способ начисления     |Направление использования ТУ |Прибор учета |Сверх норматива |
        |'31.07.2019 23:59:59' |'Холодное водоснабжение' |'*_ХВС + водоотведение'         |'По формулам расчета' |'Основное направление'       |''           |'Нет'           |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'5,010000'   |'9,000000'         |
        И в таблице "Список" я перехожу к строке:
        |Период                |Услуга                   |Точка учета                     |Способ начисления     |Направление использования ТУ |Прибор учета |Сверх норматива |
        |'31.07.2019 23:59:59' |'Холодное водоснабжение' |'ввод_ХВС + водоотведение'      |'По приборам'         |'Основное направление'       |'7672573'    |'Да'            |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |''           |'17,000000'        |
        И в таблице "Список" я перехожу к строке:
        |Период                |Услуга                   |Точка учета                     |Способ начисления     |Направление использования ТУ |Прибор учета |Сверх норматива |
        |'31.07.2019 23:59:59' |'Холодное водоснабжение' |'огород_Холодное водоснабжение' |'По приборам'         |'полив из водопровода'       |'7672602'    |'Нет'           |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'8,000000'   |'8,000000'         |
        И в таблице "Список" я перехожу к строке:
        |Период                |Услуга                   |Точка учета                     |Способ начисления     |Направление использования ТУ |Прибор учета |Сверх норматива |
        |'31.07.2019 23:59:59' |'Водоотведение'          |'стоки_ГВС + водоотведение'     |'По приборам'         |'Основное направление'       |'11111'      |'Нет'           |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |''           |'2,000000'         |
        И в таблице "Список" я перехожу к строке:
        |Период                |Услуга                   |Точка учета                     |Способ начисления     |Направление использования ТУ |Прибор учета |Сверх норматива |
        |'31.07.2019 23:59:59' |'Водоотведение'          |'*_ХВС + водоотведение'         |'По формулам расчета' |'Основное направление'       |''           |'Нет'           |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'9,000000'   |'9,000000'         |
        И в таблице "Список" я перехожу к строке:
        |Период                |Услуга                   |Точка учета                     |Способ начисления     |Направление использования ТУ |Прибор учета |Сверх норматива |
        |'31.07.2019 23:59:59' |'Водоотведение'          |'ввод_ХВС + водоотведение'      |'По приборам'         |'Основное направление'       |'7672573'    |'Нет'           |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |''           |'17,000000'        |
        И в таблице "Список" я перехожу к строке:
        |Период                |Услуга                   |Точка учета                     |Способ начисления     |Направление использования ТУ |Прибор учета |Сверх норматива |
        |'31.07.2019 23:59:59' |'Холодное водоснабжение' |'*_ХВС + водоотведение'         |'По формулам расчета' |'Основное направление'       |''           |'Да'            |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'3,990000'   |''                 |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                       |Точка учета                     |Способ начисления     |Направление использования ТУ |
        |'31.08.2019 23:59:59' |'Плотницкая Елена Васильевна' |'огород_Холодное водоснабжение' |'По приборам'         |'полив из водопровода'       |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |''           |''                 |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                       |Точка учета                     |Способ начисления     |Направление использования ТУ |
        |'31.08.2019 23:59:59' |'Плотницкая Елена Васильевна' |'ввод_ХВС + водоотведение'      |'По приборам'         |'Основное направление'       |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'8,000000'   |'8,000000'         |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                       |Точка учета                     |Способ начисления     |Направление использования ТУ |
        |'31.08.2019 23:59:59' |'Плотницкая Елена Васильевна' |'стоки_ГВС + водоотведение'     |'По приборам'         |'Основное направление'       |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'3,000000'   |'3,000000'         |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                       |Точка учета                     |Способ начисления     |Направление использования ТУ |
        |'31.08.2019 23:59:59' |'Плотницкая Елена Васильевна' |'ввод_ХВС + водоотведение'      |'По приборам'         |'Основное направление'       |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'8,000000'   |'8,000000'         |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                       |Точка учета                     |Способ начисления     |Направление использования ТУ |
        |'31.08.2019 23:59:59' |'Плотницкая Елена Васильевна' |'огород_Холодное водоснабжение' |'По приборам'         |'полив из водопровода'       |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'1,000000'   |'1,000000'         |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                       |Точка учета                     |Способ начисления     |Направление использования ТУ |
        |'31.08.2019 23:59:59' |'Плотницкая Елена Васильевна' |'*_ХВС + водоотведение'         |'По формулам расчета' |'Основное направление'       |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'7,000000'   |'7,000000'         |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                       |Точка учета                     |Способ начисления     |Направление использования ТУ |
        |'31.08.2019 23:59:59' |'Плотницкая Елена Васильевна' |'*_ХВС + водоотведение'         |'По формулам расчета' |'Основное направление'       |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'7,000000'   |'7,000000'         |
