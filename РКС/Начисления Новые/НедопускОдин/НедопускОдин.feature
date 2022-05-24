 @tree
    Функционал: <описание фичи>
    Как <Роль>
    Я хочу <описание функционала>
    Чтобы <бизнес-эффект>

    Контекст:
    Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

    Сценарий: <РасчетПоНормативуПростойУслуги>
    И я подготавливаю тестовые данные
        И я загружаю макет "РасчетПоНормативу.mxl"
    И я перепровожу загруженные документы
        И В командном интерфейсе я выбираю 'Работа с абонентами' 'Открытие/закрытие лс физического лица'    
        Тогда открылось окно 'Открытие/закрытие лс физического лица'
        И в таблице 'Список' я выделяю все строки
        И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюПровести' на элементе формы с именем "Список"
        И В командном интерфейсе я выбираю 'Работа с абонентами' 'Актирование недопуска/допуска в помещение'
        Тогда открылось окно 'Актирование недопуска/допуска в помещение'
        И в таблице 'Список' я выделяю все строки
        И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюПровести' на элементе формы с именем "Список"
        И В командном интерфейсе я выбираю 'Работа с абонентами' 'Регистрация показаний абонента'
        Тогда открылось окно 'Регистрация показаний абонента'
        И в таблице 'Список' я выделяю все строки
        И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюПровести' на элементе формы с именем "Список"
    И Я запускаю выполнение начислений по организации 'ОАО "СКЭК"' и району 'Верх-Чебулинский городкой округ' и МКД '' с 'Сентябрь' '2021' по 'Январь 2022'
        И я проверяю полученные результаты
         И Я открываю навигационную ссылку "e1cib/list/РегистрНакопления.энргОбъемНачислений"
            Тогда открылось окно 'Объем начислений'