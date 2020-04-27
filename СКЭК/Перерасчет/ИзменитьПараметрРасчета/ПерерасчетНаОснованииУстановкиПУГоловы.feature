#language: ru
    @tree
    @card 'https://trello.com/c/yNEE2W0d'
    Функционал: Правильность формирования документа перерасчет - операция изменение параметров расчета

    Как <Роль>
    Я хочу <проверить перерасчет на основании изменения значения площади>
    Чтобы <бизнес-эффект>

    Контекст:
    Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

    Сценарий: <ПерерасчетНаОснованииУстановкиПУГоловы>
    И я подготавливаю тестовые данные
        И я загружаю макет "ПерерасчетНаОснованииУстановкиПУГоловы.mxl"
    И я перепровожу созданные документы
        И В командном интерфейсе я выбираю 'Администрирование' 'Ввод начальных остатков'
        Тогда открылось окно 'Ввод начальных остатков'
        И в таблице 'Список' я выделяю все строки
        И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюПровести' на элементе формы с именем "Список"
        И В командном интерфейсе я выбираю 'Работа с абонентами' 'Подключение/отключение услуг'
        Тогда открылось окно 'Подключение/отключение услуг'
        И в таблице 'Список' я выделяю все строки
        И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюПровести' на элементе формы с именем "Список"
        И В командном интерфейсе я выбираю 'Работа с абонентами' 'Акт ввода/вывода/замены прибора учёта'
        Тогда открылось окно 'Акт ввода/вывода/замены прибора учёта'
        И в таблице 'Список' я выделяю все строки
        И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюПровести' на элементе формы с именем "Список"
    И Я запускаю выполнение начислений по организации 'ОАО "СКЭК"' и району 'Кемеровский городской округ' и МКД '' с 'Июль' '2019' по 'Декабрь 2019'
    И я создаю автоматический перерасчет
        И В командном интерфейсе я выбираю 'Работа с абонентами' 'Акт ввода/вывода/замены прибора учёта'
        Тогда открылось окно 'Акт ввода/вывода/замены прибора учёта'
        И в таблице "Список" я перехожу к строке:
        | Абонент                             | Вид операции              | Дата                 | Номер         |
        | 'Ефременко Александра Владимировна' | 'Акт ввода прибора учета' | '01.11.2019 0:00:00' | '00000000012' |
        И в таблице "Список" я выбираю текущую строку
        Тогда открылось окно 'Акт ввода прибора учета №00000000012 от *'
        И я нажимаю на кнопку 'Провести'
        Тогда открылось окно '1С:Предприятие'
        И я нажимаю на кнопку 'Да'
    И я проверю наличие автоматического перерасчета
        Тогда открылось окно 'Перерасчет (создание)'
        И я нажимаю на кнопку 'Заполнить'
        И я перехожу к закладке "Результат"
        Тогда в таблице "РезультатПерерасчета" количество строк "равно" 18
        И таблица "РезультатПерерасчета" стала равной по шаблону:
        |Период начисления |Услуга                   |Направление использования ТУ |Объем До     |Объем После |
        |'01.01.2019'      |'Холодное водоснабжение' |'Основное направление'       |'2,360000'   |'2,360000'  |
        |'01.01.2019'      |'Холодное водоснабжение' |'полив из водопровода'       |'9,863200'   |''          |
        |'01.02.2019'      |'Холодное водоснабжение' |'Основное направление'       |'2,360000'   |'2,360000'  |
        |'01.02.2019'      |'Холодное водоснабжение' |'полив из водопровода'       |'9,863200'   |''          |
        |'01.03.2019'      |'Холодное водоснабжение' |'Основное направление'       |'2,360000'   |'2,360000'  |
        |'01.03.2019'      |'Холодное водоснабжение' |'полив из водопровода'       |'9,863200'   |''          |
        |'01.04.2019'      |'Холодное водоснабжение' |'Основное направление'       |'2,360000'   |'2,360000'  |
        |'01.04.2019'      |'Холодное водоснабжение' |'полив из водопровода'       |'9,863200'   |''          |
        |'01.05.2019'      |'Холодное водоснабжение' |'Основное направление'       |'2,360000'   |'2,360000'  |
        |'01.05.2019'      |'Холодное водоснабжение' |'полив из водопровода'       |'9,863200'   |''          |
        |'01.06.2019'      |'Холодное водоснабжение' |'Основное направление'       |'2,360000'   |'2,360000'  |
        |'01.06.2019'      |'Холодное водоснабжение' |'полив из водопровода'       |'9,863200'   |''          |
        |'01.07.2019'      |'Холодное водоснабжение' |'Основное направление'       |'2,360000'   |'2,360000'  |
        |'01.07.2019'      |'Холодное водоснабжение' |'полив из водопровода'       |'9,863200'   |''          |
        |'01.08.2019'      |'Холодное водоснабжение' |'Основное направление'       |'2,360000'   |'2,360000'  |
        |'01.08.2019'      |'Холодное водоснабжение' |'полив из водопровода'       |'9,863200'   |'61,14400'  |
        |'01.09.2019'      |'Холодное водоснабжение' |'Основное направление'       |'2,360000'   |'2,360000'  |
        |'01.09.2019'      |'Холодное водоснабжение' |'полив из водопровода'       |'9,863200'   |'57,199600' |
        И я перехожу к закладке "Расшифровка"
        """Тогда в таблице "Расшифровка" количество строк "равно" 34"""
        И в таблице "Расшифровка" я перехожу к строке:
        |Абонент                             |Точка учета                     |Способ начисления |Направление использования ТУ |Период начисления |
        |'Ефременко Александра Владимировна' |'ввод_Холодное водоснабжение'   |'По нормативу'    |'Основное направление'       |'01.01.2019'      |
        И в таблице "Расшифровка" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'2,360000'   |'2,360000'         |
        И в таблице "Расшифровка" я перехожу к строке:
        |Абонент                             |Точка учета                     |Способ начисления |Направление использования ТУ |Период начисления |
        |'Ефременко Александра Владимировна' |'ввод_Холодное водоснабжение'   |'По нормативу'    |'Основное направление'       |'01.02.2019'      |
        И в таблице "Расшифровка" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'2,360000'   |'2,360000'         |
        И в таблице "Расшифровка" я перехожу к строке:
        |Абонент                             |Точка учета                     |Способ начисления |Направление использования ТУ |Период начисления |
        |'Ефременко Александра Владимировна' |'ввод_Холодное водоснабжение'   |'По нормативу'    |'Основное направление'       |'01.03.2019'      |
        И в таблице "Расшифровка" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'2,360000'   |'2,360000'         |
        И в таблице "Расшифровка" я перехожу к строке:
        |Абонент                             |Точка учета                     |Способ начисления |Направление использования ТУ |Период начисления |
        |'Ефременко Александра Владимировна' |'ввод_Холодное водоснабжение'   |'По нормативу'    |'Основное направление'       |'01.04.2019'      |
        И в таблице "Расшифровка" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'2,360000'   |'2,360000'         |
        И в таблице "Расшифровка" я перехожу к строке:
        |Абонент                             |Точка учета                     |Способ начисления |Направление использования ТУ |Период начисления |
        |'Ефременко Александра Владимировна' |'ввод_Холодное водоснабжение'   |'По нормативу'    |'Основное направление'       |'01.05.2019'      |
        И в таблице "Расшифровка" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'2,360000'   |'2,360000'         |
        И в таблице "Расшифровка" я перехожу к строке:
        |Абонент                             |Точка учета                     |Способ начисления |Направление использования ТУ |Период начисления |
        |'Ефременко Александра Владимировна' |'ввод_Холодное водоснабжение'   |'По нормативу'    |'Основное направление'       |'01.06.2019'      |
        И в таблице "Расшифровка" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'2,360000'   |'2,360000'         |
        И в таблице "Расшифровка" я перехожу к строке:
        |Абонент                             |Точка учета                     |Способ начисления |Направление использования ТУ |Период начисления |
        |'Ефременко Александра Владимировна' |'ввод_Холодное водоснабжение'   |'По нормативу'    |'Основное направление'       |'01.07.2019'      |
        И в таблице "Расшифровка" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'2,360000'   |'2,360000'         |
        И в таблице "Расшифровка" я перехожу к строке:
        |Абонент                             |Точка учета                     |Способ начисления |Направление использования ТУ |Период начисления |
        |'Ефременко Александра Владимировна' |'ввод_Холодное водоснабжение'   |'По нормативу'    |'Основное направление'       |'01.08.2019'      |
        И в таблице "Расшифровка" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'2,360000'   |'2,360000'         |
        И в таблице "Расшифровка" я перехожу к строке:
        |Абонент                             |Точка учета                     |Способ начисления |Направление использования ТУ |Период начисления |
        |'Ефременко Александра Владимировна' |'огород_Холодное водоснабжение' |'По нормативу'    |'полив из водопровода'       |'01.08.2019'      |
        И в таблице "Расшифровка" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'61,14400'   |'61,14400'         |
        И в таблице "Расшифровка" я перехожу к строке:
        |Абонент                             |Точка учета                     |Способ начисления |Направление использования ТУ |Период начисления |
        |'Ефременко Александра Владимировна' |'ввод_Холодное водоснабжение'   |'По нормативу'    |'Основное направление'       |'01.09.2019'      |
        И в таблице "Расшифровка" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'2,360000'   |'2,360000'         |
        И в таблице "Расшифровка" я перехожу к строке:
        |Абонент                             |Точка учета                     |Способ начисления |Направление использования ТУ |Период начисления |
        |'Ефременко Александра Владимировна' |'огород_Холодное водоснабжение' |'По нормативу'    |'полив из водопровода'       |'01.09.2019'      |
        И в таблице "Расшифровка" текущая строка равна:
        |Объем услуги  |Объем потребленный  |
        |'57,199600'   |'57,199600'         |
