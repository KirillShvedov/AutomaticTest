    #language: ru
    @tree
    Функционал: <описание фичи>
    Как <Роль>
    Я хочу <проверить расчет расчет по показаниям>
    Чтобы <бизнес-эффект>
    Карточка "https://trello.com/c/ToSVFzI7"

    Контекст:
    Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

    Сценарий: <РасчетПоНаправлениямИспользованияТУ>
    И я подготавливаю тестовые данные
        И я загружаю макет "РасчетПоНаправлениямИспользованияТУ.mxl"
    И я перепровожу загруженные данные
        И В командном интерфейсе я выбираю 'Работа с абонентами' 'Открытие/закрытие лс физического лица'
	    Тогда открылось окно 'Открытие/закрытие лс физического лица'
        И в таблице 'Список' я выделяю все строки
        И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюПровести' на элементе формы с именем "Список"
    И Я запускаю выполнение начислений по организации 'ОАО "СКЭК"' и району 'Кемеровский муниципальный район' и МКД '' с 'Июнь' '2020' по 'Июнь 2020'
    И я проверяю полученные результаты
        И Я открываю навигационную ссылку "e1cib/list/РегистрНакопления.энргОбъемНачислений"
        Тогда открылось окно 'Объем начислений'
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                       |Услуга                   |Точка учета                    |Вид начисления |Способ начисления |Направление использования ТУ |Измеритель        |Значение тарифа |Период расчета |Период начисления |Сверх норматива |Сумма       |Объем услуги |Объем потребленный |Сумма по повышенному коэффициенту |
        |'30.06.2020 23:59:59' |'Поздняков Иван Владимирович' |'Холодное водоснабжение' |'ввод_Холодное водоснабжение'  |'Начисление'   |'По нормативу'    |'Основное направление'       |''                |'25,130'        |'01.06.2020'   |'01.06.2020'      |'Нет'           |'266,88'    |'7,080000'   |''                 |'88,96'                           |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                       |Услуга                   |Точка учета                    |Вид начисления |Способ начисления |Направление использования ТУ |Измеритель        |Значение тарифа |Период расчета |Период начисления |Сверх норматива |Сумма       |Объем услуги |Объем потребленный |Сумма по повышенному коэффициенту |
        |'30.06.2020 23:59:59' |'Поздняков Иван Владимирович' |'Холодное водоснабжение' |'ввод_Холодное водоснабжение'  |'Начисление'   |'По нормативу'    |'Основное направление'       |''                |'25,130'        |'01.06.2020'   |'01.06.2020'      |'Нет'           |''          |''           |'7,080000'         |''                                |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                       |Услуга                   |Точка учета                    |Вид начисления |Способ начисления |Направление использования ТУ |Измеритель        |Значение тарифа |Период расчета |Период начисления |Сверх норматива |Сумма       |Объем услуги |Объем потребленный |Сумма по повышенному коэффициенту |
        |'30.06.2020 23:59:59' |'Поздняков Иван Владимирович' |'Холодное водоснабжение' |'полив_Холодное водоснабжение' |'Начисление'   |'По нормативу'    |'полив из водопровода'       |''                |'25,130'        |'01.06.2020'   |'01.06.2020'      |'Нет'           |'10 408,95' |'414,204000' |''                 |''                                |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                       |Услуга                   |Точка учета                    |Вид начисления |Способ начисления |Направление использования ТУ |Измеритель        |Значение тарифа |Период расчета |Период начисления |Сверх норматива |Сумма       |Объем услуги |Объем потребленный |Сумма по повышенному коэффициенту |
        |'30.06.2020 23:59:59' |'Поздняков Иван Владимирович' |'Холодное водоснабжение' |'полив_Холодное водоснабжение' |'Начисление'   |'По нормативу'    |'полив из водопровода'       |''                |'25,130'        |'01.06.2020'   |'01.06.2020'      |'Нет'           |''          |''           |'414,204000'       |''                                |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                       |Услуга                   |Точка учета                    |Вид начисления |Способ начисления |Направление использования ТУ |Измеритель        |Значение тарифа |Период расчета |Период начисления |Сверх норматива |Сумма       |Объем услуги |Объем потребленный |Сумма по повышенному коэффициенту |
        |'30.06.2020 23:59:59' |'Поздняков Иван Владимирович' |'Холодное водоснабжение' |'баня_Холодное водоснабжение'  |'Начисление'   |'По нормативу'    |'мытье в бане'               |'кол-во мойщиков' |'25,130'        |'01.06.2020'   |'01.06.2020'      |'Нет'           |'15,08'     |'0,600000'   |''                 |''                                |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                       |Услуга                   |Точка учета                    |Вид начисления |Способ начисления |Направление использования ТУ |Измеритель        |Значение тарифа |Период расчета |Период начисления |Сверх норматива |Сумма       |Объем услуги |Объем потребленный |Сумма по повышенному коэффициенту |
        |'30.06.2020 23:59:59' |'Поздняков Иван Владимирович' |'Холодное водоснабжение' |'баня_Холодное водоснабжение'  |'Начисление'   |'По нормативу'    |'мытье в бане'               |'кол-во мойщиков' |'25,130'        |'01.06.2020'   |'01.06.2020'      |'Нет'           |''          |''           |'0,600000'         |''                                |
