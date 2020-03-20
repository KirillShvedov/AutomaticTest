    #language: ru
    @tree
    Функционал: <описание фичи>

    Как <Роль>
    Я хочу <проверить расчет подчиненных услуг  по показаниям, среднему и нормативу>
    Чтобы <бизнес-эффект>

    Контекст:
    Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

    Сценарий: <РасчетПоФормуламПриНаличииПодчиненныхУслуг>
    И я подготавливаю тестовые данные
        И я загружаю макет "РасчетПоФормуламПриНаличииПодчиненныхУслуг"
    И я перепровожу загруженные данные
        И В командном интерфейсе я выбираю 'Администрирование' 'Ввод начальных остатков'
        Тогда открылось окно 'Ввод начальных остатков'
        И в таблице 'Список' я выделяю все строки
        И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюПровести' на элементе формы с именем "Список"
        И В командном интерфейсе я выбираю 'Работа с абонентами' 'Регистрация показаний абонента'
        Тогда открылось окно 'Регистрация показаний абонента'
        И в таблице 'Список' я выделяю все строки
        И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюПровести' на элементе формы с именем "Список"
        И В командном интерфейсе я выбираю 'Работа с абонентами' 'Приходный кассовый ордер'
        Тогда открылось окно 'Приходный кассовый ордер'
        И в таблице 'Список' я выделяю все строки
        И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюПровести' на элементе формы с именем "Список"
        И В командном интерфейсе я выбираю 'Работа с абонентами' 'Платежное поручение (входящие)'
        Тогда открылось окно 'Платежное поручение (входящие)'
        И в таблице 'Список' я выделяю все строки
        И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюПровести' на элементе формы с именем "Список"
    И Я запускаю выполнение начислений по организации 'ОАО "СКЭК"' и району 'Кемеровский городской округ' и МКД '' с 'Июль' '2019' по 'Июль 2019'    
    И я проверяю полученные результаты
        И Я открываю навигационную ссылку "e1cib/list/РегистрНакопления.энргОбъемНачислений"
        Тогда открылось окно 'Объем начислений'
        Тогда в таблице "Список" количество строк "равно" 8
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                       |Услуга                   |Точка учета                        |Способ начисления     |Направление использования ТУ |Сверх норматива |Объем услуги соц норма |
        |'31.07.2019 23:59:59' |'Семенькова Олеся Валерьевна' |'Холодное водоснабжение' |'*_Холодное водоснабжение'         |'По формулам расчета' |'Основное направление'       |'Нет'           |'18,880000'            |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'9,440000'   |'20,000000'        |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                       |Услуга                   |Точка учета                        |Способ начисления     |Направление использования ТУ |Сверх норматива |Объем услуги соц норма |
        |'31.07.2019 23:59:59' |'Семенькова Олеся Валерьевна' |'Холодное водоснабжение' |'ввод_Холодное водоснабжение'      |'По нормативу'        |'Основное направление'       |'Нет'           |''                     |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |''           |'9,440000'         |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                       |Услуга                   |Точка учета                        |Способ начисления     |Направление использования ТУ |Сверх норматива |Объем услуги соц норма |
        |'31.07.2019 23:59:59' |'Семенькова Олеся Валерьевна' |'Холодное водоснабжение' |'расчетное_Холодное водоснабжение' |'По приборам'         |'Основное направление'       |'Да'            |''                     |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |''           |'38,000000'        |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                       |Услуга                   |Точка учета                        |Способ начисления     |Направление использования ТУ |Сверх норматива |Объем услуги соц норма |
        |'31.07.2019 23:59:59' |'Скрябина Нина Ивановна'      |'Холодное водоснабжение' |'ввод_Холодное водоснабжение'      |'По нормативу'        |'Основное направление'       |'Нет'           |''                     |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |''           |'2,360000'         |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                       |Услуга                   |Точка учета                        |Способ начисления     |Направление использования ТУ |Сверх норматива |Объем услуги соц норма |
        |'31.07.2019 23:59:59' |'Скрябина Нина Ивановна'      |'Холодное водоснабжение' |'баня_Холодное водоснабжение'      |'По нормативу'        |'мытье в бане'               |'Нет'           |''                     |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |''           |'0,200000'         |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                       |Услуга                   |Точка учета                        |Способ начисления     |Направление использования ТУ |Сверх норматива |Объем услуги соц норма |
        |'31.07.2019 23:59:59' |'Скрябина Нина Ивановна'      |'Холодное водоснабжение' |'расчетное_Холодное водоснабжение' |'По приборам'         |'Расчетная'                  |'Нет'           |'2,560000'             |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'2,560000'   |'18,000000'        |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                       |Услуга                   |Точка учета                        |Способ начисления     |Направление использования ТУ |Сверх норматива |Объем услуги соц норма |
        |'31.07.2019 23:59:59' |'Семенькова Олеся Валерьевна' |'Холодное водоснабжение' |'*_Холодное водоснабжение'         |'По формулам расчета' |'Основное направление'       |'Да'            |''                     |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'10,560000'   |''                 |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                       |Услуга                   |Точка учета                        |Способ начисления     |Направление использования ТУ |Сверх норматива |Объем услуги соц норма |
        |'31.07.2019 23:59:59' |'Скрябина Нина Ивановна'      |'Холодное водоснабжение' |'расчетное_Холодное водоснабжение' |'По приборам'         |'Расчетная'                  |'Да'            |''                     |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'15,440000'  |''                 |
