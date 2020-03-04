#language: ru
@tree
Функционал: <описание фичи>
Как <Роль>
Я хочу <проверить расчет подчиненных услуг при наличии простых услуг>
Чтобы <бизнес-эффект>

Контекст:
    Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: <РасчетПодчиненныхУслугПоНормативуПриНаличииПолива>
    И я подготавливаю тестовые данные
        И я загружаю макет "РасчетПодчиненныхУслугПоНормативуПриНаличииПолива"
        И я перепровожу загруженные данные
            И В командном интерфейсе я выбираю 'Администрирование' 'Ввод начальных остатков'
            Тогда открылось окно 'Ввод начальных остатков'
            И в таблице 'Список' я выделяю все строки
            И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюПровести' на элементе формы с именем "Список"
            И В командном интерфейсе я выбираю 'Работа с абонентами' 'Регистрация показаний абонента'
            Тогда открылось окно 'Регистрация показаний абонента'
            И в таблице 'Список' я выделяю все строки
            И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюПровести' на элементе формы с именем "Список"
    И Я запускаю выполнение начислений по организации 'ООО "Тайгинское ВКХ"' и району 'Тайгинский городской округ' и МКД '' с 'Июль' '2019' по 'Сентябрь 2019'
    И я проверяю полученные результаты
        И Я открываю навигационную ссылку "e1cib/list/РегистрНакопления.энргОбъемНачислений"
        Тогда открылось окно 'Объем начислений'
        Тогда в таблице "Список" количество строк "равно" 7
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                         |Точка учета                     |Способ начисления |Направление использования ТУ |Прибор учета |
        |'30.09.2019 23:59:59' |'Лелюхина Светлана Анатольевна' |'ввод_Холодное водоснабжение'   |'Расчетный'       |'Основное направление'       |'0606292М18' |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'0,096000'   |''                 |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                         |Точка учета                     |Способ начисления |Направление использования ТУ |Прибор учета |
        |'30.09.2019 23:59:59' |'Лелюхина Светлана Анатольевна' |'ввод_Холодное водоснабжение'   |'Расчетный'       |'Основное направление'       |'0606292М18' |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |'74,289300'  |''                 |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                         |Точка учета                     |Способ начисления |Направление использования ТУ |Прибор учета |
        |'30.09.2019 23:59:59' |'Лелюхина Светлана Анатольевна' |'баня_Холодное водоснабжение'   |'По нормативу'    |'мытье в бане'               |''           |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |''           |'0,013333'         |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                         |Точка учета                     |Способ начисления |Направление использования ТУ |Прибор учета |
        |'30.09.2019 23:59:59' |'Лелюхина Светлана Анатольевна' |'ввод_Холодное водоснабжение'   |'По нормативу'    |'Основное направление'       |''           |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |''           |'0,082667'         |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                         |Точка учета                     |Способ начисления |Направление использования ТУ |Прибор учета |
        |'30.09.2019 23:59:59' |'Лелюхина Светлана Анатольевна' |'баня_Холодное водоснабжение'   |'По нормативу'    |'мытье в бане'               |''           |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |''           |'0,386667'         |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                         |Точка учета                     |Способ начисления |Направление использования ТУ |Прибор учета |
        |'30.09.2019 23:59:59' |'Лелюхина Светлана Анатольевна' |'огород_Холодное водоснабжение' |'По нормативу'    |'полив из водопровода'       |''           |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |''           |'71,505300'        |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                         |Точка учета                     |Способ начисления |Направление использования ТУ |Прибор учета |
        |'30.09.2019 23:59:59' |'Лелюхина Светлана Анатольевна' |'ввод_Холодное водоснабжение'   |'По нормативу'    |'Основное направление'       |''           |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный |
        |''           |'2,397333'         |