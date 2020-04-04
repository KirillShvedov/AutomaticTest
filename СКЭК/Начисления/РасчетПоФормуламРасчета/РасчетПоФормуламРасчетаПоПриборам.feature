#language: ru
@tree
Функционал: <описание фичи>

Как <Роль>
Я хочу <проверить расчет расчет по показаниям>
Чтобы <бизнес-эффект>
Карточка <"https://trello.com/c/8X8LPHTx">

Контекст:
    Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: <РасчетПоФормуламРасчетаПоПриборам>
    И я подготавливаю тестовые данные
        И я загружаю макет "РасчетПоФормуламРасчетаПоПриборам"
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
        Тогда в таблице "Список" количество строк "равно" 19 
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                       |Услуга                   |Точка учета                     |Способ начисления     |Направление использования ТУ |Прибор учета |Сверх норматива |Конец периода |Начало периода | Объем услуги соц норма|
        |'31.07.2019 23:59:59' |'Плотницкая Елена Васильевна' |'Холодное водоснабжение' |'*_ХВС + водоотведение'         |'По формулам расчета' |'Основное направление'       |''           |'Нет'           |'01.08.2019'  |'01.07.2019'   | '5,010000'            |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'5,010000'   |'9,000000'         |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                       |Услуга                   |Точка учета                     |Способ начисления     |Направление использования ТУ |Прибор учета |Сверх норматива |Конец периода |Начало периода |
        |'31.07.2019 23:59:59' |'Плотницкая Елена Васильевна' |'Холодное водоснабжение' |'ввод_ХВС + водоотведение'      |'По приборам'         |'Основное направление'       |'7672573'    |'Нет'           |'01.08.2019'  |'01.07.2019'   |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |''           |'17,000000'        |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                       |Услуга                   |Точка учета                     |Способ начисления     |Направление использования ТУ |Прибор учета |Сверх норматива |Конец периода |Начало периода |
        |'31.07.2019 23:59:59' |'Плотницкая Елена Васильевна' |'Холодное водоснабжение' |'огород_Холодное водоснабжение' |'По приборам'         |'полив из водопровода'       |'7672602'    |'Нет'           |'01.08.2019'  |'01.07.2019'   |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'8,000000'   |'8,000000'         |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                       |Услуга                   |Точка учета                     |Способ начисления     |Направление использования ТУ |Прибор учета |Сверх норматива |Конец периода |Начало периода |
        |'31.07.2019 23:59:59' |'Плотницкая Елена Васильевна' |'Водоотведение'          |'стоки_ГВС + водоотведение'     |'По приборам'         |'Основное направление'       |'11111'      |'Нет'           |'01.08.2019'  |'01.07.2019'   |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |''           |'2,000000'         |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                       |Услуга                   |Точка учета                     |Способ начисления     |Направление использования ТУ |Прибор учета |Сверх норматива |Конец периода |Начало периода |
        |'31.07.2019 23:59:59' |'Плотницкая Елена Васильевна' |'Водоотведение'          |'*_ХВС + водоотведение'         |'По формулам расчета' |'Основное направление'       |''           |'Нет'           |'01.08.2019'  |'01.07.2019'   |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'9,000000'   |'9,000000'         |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                       |Услуга                   |Точка учета                     |Способ начисления     |Направление использования ТУ |Прибор учета |Сверх норматива |Конец периода |Начало периода |
        |'31.07.2019 23:59:59' |'Плотницкая Елена Васильевна' |'Водоотведение'          |'ввод_ХВС + водоотведение'      |'По приборам'         |'Основное направление'       |'7672573'    |'Нет'           |'01.08.2019'  |'01.07.2019'   |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |''           |'17,000000'        |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                       |Услуга                   |Точка учета                     |Способ начисления     |Направление использования ТУ |Прибор учета |Сверх норматива |Конец периода |Начало периода |
        |'31.07.2019 23:59:59' |'Плотницкая Елена Васильевна' |'Холодное водоснабжение' |'*_ХВС + водоотведение'         |'По формулам расчета' |'Основное направление'       |''           |'Да'            |'01.08.2019'  |'01.07.2019'   |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'3,990000'   |''                 |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                       |Услуга                   |Точка учета                     |Способ начисления     |Направление использования ТУ |Прибор учета |Сверх норматива |Конец периода |Начало периода |
        |'31.08.2019 23:59:59' |'Плотницкая Елена Васильевна' |'Холодное водоснабжение' |'*_ХВС + водоотведение'         |'По формулам расчета' |'Основное направление'       |''           |'Нет'           |'02.08.2019'  |'01.08.2019'   |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |''           |''                 |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                       |Услуга                   |Точка учета                     |Способ начисления     |Направление использования ТУ |Прибор учета |Сверх норматива |Конец периода |Начало периода |
        |'31.08.2019 23:59:59' |'Плотницкая Елена Васильевна' |'Холодное водоснабжение' |'ввод_ХВС + водоотведение'      |'По приборам'         |'Основное направление'       |'7672573'    |'Нет'           |'02.08.2019'  |'01.08.2019'   |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |''           |''                 |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                       |Услуга                   |Точка учета                     |Способ начисления     |Направление использования ТУ |Прибор учета |Сверх норматива |Конец периода |Начало периода |
        |'31.08.2019 23:59:59' |'Плотницкая Елена Васильевна' |'Холодное водоснабжение' |'огород_Холодное водоснабжение' |'По приборам'         |'полив из водопровода'       |'7672602'    |'Нет'           |'02.08.2019'  |'01.08.2019'   |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |''           |''                 |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                       |Услуга                   |Точка учета                     |Способ начисления     |Направление использования ТУ |Прибор учета |Сверх норматива |Конец периода |Начало периода |
        |'31.08.2019 23:59:59' |'Плотницкая Елена Васильевна' |'Водоотведение'          |'*_ХВС + водоотведение'         |'По формулам расчета' |'Основное направление'       |''           |'Нет'           |'02.08.2019'  |'01.08.2019'   |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |''           |''                 |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                       |Услуга                   |Точка учета                     |Способ начисления     |Направление использования ТУ |Прибор учета |Сверх норматива |Конец периода |Начало периода |
        |'31.08.2019 23:59:59' |'Плотницкая Елена Васильевна' |'Водоотведение'          |'ввод_ХВС + водоотведение'      |'По приборам'         |'Основное направление'       |'7672573'    |'Нет'           |'02.08.2019'  |'01.08.2019'   |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |''           |''                 |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                       |Услуга                   |Точка учета                     |Способ начисления     |Направление использования ТУ |Прибор учета |Сверх норматива |Конец периода |Начало периода |
        |'31.08.2019 23:59:59' |'Плотницкая Елена Васильевна' |'Водоотведение'          |'стоки_ГВС + водоотведение'     |'По приборам'         |'Основное направление'       |'11111'      |'Нет'           |'01.09.2019'  |'01.08.2019'   |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |''           |'3,000000'         |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                       |Услуга                   |Точка учета                     |Способ начисления     |Направление использования ТУ |Прибор учета |Сверх норматива |Конец периода |Начало периода |
        |'31.08.2019 23:59:59' |'Плотницкая Елена Васильевна' |'Холодное водоснабжение' |'*_ХВС + водоотведение'         |'По формулам расчета' |'Основное направление'       |''           |'Нет'           |'01.09.2019'  |'02.08.2019'   |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'5,010000'   |'7,000000'         |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                       |Услуга                   |Точка учета                     |Способ начисления     |Направление использования ТУ |Прибор учета |Сверх норматива |Конец периода |Начало периода |
        |'31.08.2019 23:59:59' |'Плотницкая Елена Васильевна' |'Холодное водоснабжение' |'ввод_ХВС + водоотведение'      |'По приборам'         |'Основное направление'       |'7672573'    |'Нет'           |'01.09.2019'  |'02.08.2019'   |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |''           |'8,000000'         |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                       |Услуга                   |Точка учета                     |Способ начисления     |Направление использования ТУ |Прибор учета |Сверх норматива |Конец периода |Начало периода |
        |'31.08.2019 23:59:59' |'Плотницкая Елена Васильевна' |'Холодное водоснабжение' |'огород_Холодное водоснабжение' |'По приборам'         |'полив из водопровода'       |'7672602'    |'Нет'           |'01.09.2019'  |'02.08.2019'   |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'1,000000'   |'1,000000'         |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                       |Услуга                   |Точка учета                     |Способ начисления     |Направление использования ТУ |Прибор учета |Сверх норматива |Конец периода |Начало периода |
        |'31.08.2019 23:59:59' |'Плотницкая Елена Васильевна' |'Водоотведение'          |'*_ХВС + водоотведение'         |'По формулам расчета' |'Основное направление'       |''           |'Нет'           |'01.09.2019'  |'02.08.2019'   |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'7,000000'   |'7,000000'         |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                       |Услуга                   |Точка учета                     |Способ начисления     |Направление использования ТУ |Прибор учета |Сверх норматива |Конец периода |Начало периода |
        |'31.08.2019 23:59:59' |'Плотницкая Елена Васильевна' |'Водоотведение'          |'ввод_ХВС + водоотведение'      |'По приборам'         |'Основное направление'       |'7672573'    |'Нет'           |'01.09.2019'  |'02.08.2019'   |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |''           |'8,000000'         |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                       |Услуга                   |Точка учета                     |Способ начисления     |Направление использования ТУ |Прибор учета |Сверх норматива |Конец периода |Начало периода |
        |'31.08.2019 23:59:59' |'Плотницкая Елена Васильевна' |'Холодное водоснабжение' |'*_ХВС + водоотведение'         |'По формулам расчета' |'Основное направление'       |''           |'Да'            |'01.09.2019'  |'02.08.2019'   |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'1,990000'   |''                 |
