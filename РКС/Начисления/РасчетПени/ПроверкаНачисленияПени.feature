    @tree
    Функционал: <описание фичи>
    Как <Роль>
    Я хочу <проверить расчет расчет по показаниям>
    Чтобы <бизнес-эффект>
    Карточка ""

    Контекст:
    Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

    Сценарий: <ПроверкаНачисленияПени>
    И я подготавливаю тестовые данные
        И я загружаю макет "ПроверкаНачисленияПени"
    И я перепровожу загруженные данные
        И В командном интерфейсе я выбираю 'Работа с абонентами' 'Открытие/закрытие лс физического лица'
        Тогда открылось окно 'Открытие/закрытие лс физического лица'
        И в таблице 'Список' я выделяю все строки
        И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюПровести' на элементе формы с именем "Список"
        И Я запускаю выполнение начислений по организации 'ООО "РКС-энерго"' и району 'Волховский район' и МКД '' с 'Июнь' '2020' по 'Ноябрь 2020'
    И Я проверяю полученные результаты
        И Я открываю навигационную ссылку "e1cib/list/РегистрНакопления.энргВзаиморасчетыПоПени"
        Тогда открылось окно 'Задолженность по пени'
        И в таблице "Список" я перехожу к строке:
        |Период                |Организация        |Филиал             |Абонент                   |Услуга           |Период начисления |Сумма    |
        |'25.08.2020 23:59:59' |'ООО "РКС-энерго"' |'Волховский район' |'Миронова Мария Петровна' |'Электроэнергия' |'01.06.2020'      |'5,88'   |
        И в таблице "Список" я перехожу к строке:
        |Период                |Организация        |Филиал             |Абонент                   |Услуга           |Период начисления |Сумма    |
        |'25.09.2020 23:59:59' |'ООО "РКС-энерго"' |'Волховский район' |'Миронова Мария Петровна' |'Электроэнергия' |'01.06.2020'      |'17,63'  |
        И в таблице "Список" я перехожу к строке:
        |Период                |Организация        |Филиал             |Абонент                   |Услуга           |Период начисления |Сумма    |
        |'25.10.2020 23:59:59' |'ООО "РКС-энерго"' |'Волховский район' |'Миронова Мария Петровна' |'Электроэнергия' |'01.06.2020'      |'28,28'  |
        И в таблице "Список" я перехожу к строке:
        |Период                |Организация        |Филиал             |Абонент                   |Услуга           |Период начисления |Сумма    |
        |'25.11.2020 23:59:59' |'ООО "РКС-энерго"' |'Волховский район' |'Миронова Мария Петровна' |'Электроэнергия' |'01.06.2020'      |'-51,79' |
        И в таблице "Список" я перехожу к строке:
        |Период                |Организация        |Филиал             |Абонент                   |Услуга           |Период начисления |Сумма    |
        |'25.11.2020 23:59:59' |'ООО "РКС-энерго"' |'Волховский район' |'Миронова Мария Петровна' |'Электроэнергия' |'01.06.2020'      |'47,58'  |
