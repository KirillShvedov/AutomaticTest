    #language: ru
    @tree
    Функционал: <описание фичи>

    Как <Роль>
    Я хочу <проверить расчет подчиненных услуг  по показаниям, среднему и нормативу>
    Чтобы <бизнес-эффект>

    Контекст:
    Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

    Сценарий: <РасчетПодчиненныхУслугПриИзмененииНачислений>
    И я подготавливаю тестовые данные
        И я загружаю макет "РасчетПодчиненныхУслугПриИзмененииНачислений"
    И я перепровожу загруженные данные
        И В командном интерфейсе я выбираю 'Администрирование' 'Ввод начальных остатков'
        Тогда открылось окно 'Ввод начальных остатков'
        И в таблице 'Список' я выделяю все строки
        И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюПровести' на элементе формы с именем "Список"
        И В командном интерфейсе я выбираю 'Работа с абонентами' 'Подключение/отключение услуг'
        Тогда открылось окно 'Подключение/отключение услуг'
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
        И В командном интерфейсе я выбираю 'Работа с абонентами' 'Установить схему подчиненности точек учета'
        Тогда открылось окно 'Установить схему подчиненности точек учета'
        И в таблице 'Список' я выделяю все строки
        И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюПровести' на элементе формы с именем "Список"
    И Я запускаю выполнение начислений по организации 'ОАО "СКЭК"' и району 'Кемеровский городской округ' и МКД '' с 'Июль' '2019' по 'Октябрь 2019'    
    И я проверяю полученные результаты
        И Я открываю навигационную ссылку "e1cib/list/РегистрНакопления.энргОбъемНачислений"
        Тогда открылось окно 'Объем начислений'
        И в таблице "Список" я активизирую поле "Абонент"
        И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюНайти' на элементе формы с именем "Список"
        Тогда открылось окно 'Найти'
        И из выпадающего списка "&Что искать" я выбираю по строке 'Ефременко Александра Владимировна'
        И я перехожу к следующему реквизиту
        И я нажимаю на кнопку '&Найти'        
        Тогда в таблице "Список" количество строк "равно" 9
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                             |Услуга                   |Точка учета                     |Вид начисления |Способ начисления |Направление использования ТУ |
        |'31.07.2019 23:59:59' |'Ефременко Александра Владимировна' |'Холодное водоснабжение' |'ввод_Холодное водоснабжение'   |'Начисление'   |'По нормативу'    |'Основное направление'       |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'2,760000'   |'2,760000'         |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                             |Услуга                   |Точка учета                     |Вид начисления |Способ начисления |Направление использования ТУ |
        |'31.07.2019 23:59:59' |'Ефременко Александра Владимировна' |'Холодное водоснабжение' |'огород_Холодное водоснабжение' |'Начисление'   |'По нормативу'    |'полив из водопровода'       |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'9,863040'   |'9,863040'         |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                             |Услуга                   |Точка учета                     |Вид начисления |Способ начисления |Направление использования ТУ |
        |'31.08.2019 23:59:59' |'Ефременко Александра Владимировна' |'Холодное водоснабжение' |'ввод_Холодное водоснабжение'   |'Начисление'   |'По нормативу'    |'Основное направление'       |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'2,760000'   |'2,760000'         |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                             |Услуга                   |Точка учета                     |Вид начисления |Способ начисления |Направление использования ТУ |
        |'31.08.2019 23:59:59' |'Ефременко Александра Владимировна' |'Холодное водоснабжение' |'огород_Холодное водоснабжение' |'Начисление'   |'По нормативу'    |'полив из водопровода'       |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'9,863040'   |'9,863040'         |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                             |Услуга                   |Точка учета                     |Вид начисления |Способ начисления |Направление использования ТУ |
        |'30.09.2019 23:59:59' |'Ефременко Александра Владимировна' |'Холодное водоснабжение' |'огород_Холодное водоснабжение' |'Начисление'   |'По нормативу'    |'полив из водопровода'       |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'9,534272'   |'9,534272'         |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                             |Услуга                   |Точка учета                     |Вид начисления |Способ начисления |Направление использования ТУ |
        |'30.09.2019 23:59:59' |'Ефременко Александра Владимировна' |'Холодное водоснабжение' |'ввод_Холодное водоснабжение'   |'Начисление'   |'По нормативу'    |'Основное направление'       |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'2,760000'   |'2,760000'         |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                             |Услуга                   |Точка учета                     |Вид начисления |Способ начисления |Направление использования ТУ |
        |'30.09.2019 23:59:59' |'Ефременко Александра Владимировна' |'Холодное водоснабжение' |'огород_Холодное водоснабжение' |'Начисление'   |'По нормативу'    |'полив из водопровода'       |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'0,328768'   |'0,328768'         |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                             |Услуга                   |Точка учета                     |Вид начисления |Способ начисления |Направление использования ТУ |
        |'31.10.2019 23:59:59' |'Ефременко Александра Владимировна' |'Холодное водоснабжение' |'дом_Холодное водоснабжение'    |'Начисление'   |'По приборам'     |'Основное направление'       |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |''           |''                 |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                             |Услуга                   |Точка учета                     |Вид начисления |Способ начисления |Направление использования ТУ |
        |'31.10.2019 23:59:59' |'Ефременко Александра Владимировна' |'Холодное водоснабжение' |'ввод_Холодное водоснабжение'   |'Начисление'   |'По нормативу'    |'Основное направление'       |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |''           |'2,760000'         |
        #И в таблице "Список" я перехожу к строке:
        #|Период                |Абонент                             |Услуга                   |Точка учета                     |Вид начисления |Способ начисления |Направление использования ТУ |
        #|'31.10.2019 23:59:59' |'Ефременко Александра Владимировна' |'Холодное водоснабжение' |'огород_Холодное водоснабжение' |'Начисление'   |'По нормативу'    |'полив из водопровода'       |
        #И в таблице "Список" текущая строка равна:
        #|Объем услуги |Объем потребленный |
        #|''           |'9,863040'         |