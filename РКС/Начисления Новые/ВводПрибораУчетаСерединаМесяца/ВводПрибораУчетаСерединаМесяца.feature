 #language: ru
    @tree
    Функционал: <описание фичи>
    Как <Роль>
    Я хочу <описание функционала>
    Чтобы <бизнес-эффект>

    Контекст:
    Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий


    Сценарий: <ВводПрибораУчетаСерединаМесяца>
    И я подготавливаю тестовые данные
        И я загружаю макет "ВводПрибораУчетаСерединаМесяца.mxl"
    И я перепровожу загруженные документы
        И В командном интерфейсе я выбираю 'Работа с абонентами' 'Открытие/закрытие лс физического лица'
        Тогда открылось окно 'Открытие/закрытие лс физического лица'
        И в таблице "Список" я выделяю все строки
        И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюПровести' на элементе формы с именем "Список"
        И В командном интерфейсе я выбираю 'Работа с абонентами' 'Акт ввода/вывода/замены прибора учёта'
        Тогда открылось окно 'Акт ввода/вывода/замены прибора учёта'
        И в таблице "Список" я выделяю все строки
        И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюПровести' на элементе формы с именем "Список"
    И Я запускаю выполнение начислений по организации 'ООО РКС-Энерго' и району 'Волховский район' и МКД '' с 'Июнь' '2020' по 'Июль 2020'
    И Я проверяю полученные результаты
        И Я открываю навигационную ссылку "e1cib/list/РегистрНакопления.энргОбъемНачислений"
        Тогда открылось окно 'Объем начислений'
        #Июль20
      И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                   |Точка учета           |Способ начисления |Направление использования ТУ |Прибор учета |Тарифная зона   |Сумма    |Объем услуги |Объем потребленный |Объем услуги потери |Начало периода |Конец периода |
        |'25.07.2020 23:59:59' |'Миронова Мария Петровна' |'ввод_Электроэнергия' |'По нормативу'    |'Основное направление'       |''           |'Сутки'         |''       |''           |'133,200000'       |''                  |'26.06.2020'   |'14.07.2020'  |
      И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                   |Точка учета           |Способ начисления |Направление использования ТУ |Прибор учета |Тарифная зона   |Сумма    |Объем услуги |Объем потребленный |Объем услуги потери |Начало периода |Конец периода |
        |'25.07.2020 23:59:59' |'Миронова Мария Петровна' |'ввод_Электроэнергия' |'По нормативу'    |'Основное направление'       |''           |'Сутки'         |'568,76' |'133,200000' |''                 |''                  |'26.06.2020'   |'14.07.2020'  |
      И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                   |Точка учета           |Способ начисления |Направление использования ТУ |Прибор учета |Тарифная зона   |Сумма    |Объем услуги |Объем потребленный |Объем услуги потери |Начало периода |Конец периода |
        |'25.07.2020 23:59:59' |'Миронова Мария Петровна' |'ввод_Электроэнергия' |'По приборам'     |'Основное направление'       |'56656'      |'День (2 зоны)' |''       |''           |'40,000000'        |''                  |'14.07.2020'   |'26.07.2020'  |
      И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                   |Точка учета           |Способ начисления |Направление использования ТУ |Прибор учета |Тарифная зона   |Сумма    |Объем услуги |Объем потребленный |Объем услуги потери |Начало периода |Конец периода |
        |'25.07.2020 23:59:59' |'Миронова Мария Петровна' |'ввод_Электроэнергия' |'По приборам'     |'Основное направление'       |'56656'      |'Ночь (2 зоны)' |''       |''           |'20,000000'        |''                  |'14.07.2020'   |'26.07.2020'  |
      И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                   |Точка учета           |Способ начисления |Направление использования ТУ |Прибор учета |Тарифная зона   |Сумма    |Объем услуги |Объем потребленный |Объем услуги потери |Начало периода |Конец периода |
        |'25.07.2020 23:59:59' |'Миронова Мария Петровна' |'ввод_Электроэнергия' |'По приборам'     |'Основное направление'       |'56656'      |'День (2 зоны)' |'179,60' |'40,000000'  |''                 |''                  |'14.07.2020'   |'26.07.2020'  |
      И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                   |Точка учета           |Способ начисления |Направление использования ТУ |Прибор учета |Тарифная зона   |Сумма    |Объем услуги |Объем потребленный |Объем услуги потери |Начало периода |Конец периода |
        |'25.07.2020 23:59:59' |'Миронова Мария Петровна' |'ввод_Электроэнергия' |'По приборам'     |'Основное направление'       |'56656'      |'Ночь (2 зоны)' |'48,60'  |'20,000000'  |''                 |''                  |'14.07.2020'   |'26.07.2020'  |