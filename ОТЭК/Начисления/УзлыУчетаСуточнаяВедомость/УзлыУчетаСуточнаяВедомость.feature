#language: ru
@tree
Функционал: <расчет по узлам учета физических лиц, пости>
о суточной ведом
Как <Роль>
Я хочу <проверить расчет по узлам учета физических лиц, расход по прибору>
Чтобы <бизнес-эффект>

Контекст:
    Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: <расчет по узлам учета физических лиц, по суточной ведомости>
    И я подготавливаю тестовые данные
        И я загружаю макет "ОТЭК\Начисления\УзлыУчетаСуточнаяВедомость\ИсходныеДанные\УзлыУчетаСуточнаяВедомостьИсходныеДанные"
        И я перепровожу загруженные данные
            И В командном интерфейсе я выбираю 'Физические лица' 'Открытие/закрытие лс физического лица'
            Тогда открылось окно 'Открытие/закрытие лс физического лица'
            И в таблице 'Список' я выделяю все строки
            И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюПровести' на элементе формы с именем "Список"
            И Я открываю навигационную ссылку "e1cib/list/Документ.энргСуточнаяВедомостьАбонента"
            Тогда открылось окно 'Суточная ведомость абонента'
            И в таблице 'Список' я выделяю все строки
            И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюПровести' на элементе формы с именем "Список"
    И Я запускаю выполнение начислений ОТЭК по организации 'Филиал АО "ОТЭК в г. Северске' и району 'Северск' и МКД '' с 'Октябрь' '2019' по 'Октябрь 2019'    
    И я проверяю полученные результаты
        И Я открываю навигационную ссылку "e1cib/list/РегистрНакопления.энргОбъемНачислений"
        Тогда открылось окно 'Объем начислений'
        И в таблице "Список" я перехожу к строке:
        |Период                |Услуга                              |Точка учета                    |Вид начисления |Способ начисления      |Направление использования ТУ |
        |'31.10.2019 23:59:59' |'Отопление'                         |'Прочее_Отопление + ГВС'       |'Начисление'   |'По приборам'          |'Основное направление'       |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный   |
        |'20,000000'  |'20,000000'          |
        И в таблице "Список" я перехожу к строке:
        |Период                |Услуга                              |Точка учета                    |Вид начисления |Способ начисления      |Направление использования ТУ |
        |'31.10.2019 23:59:59' |'Компонент тепловая энергия (ГВС)'  |'Прочее_Отопление + ГВС'       |'Начисление'   |'По приборам'          |'Основное направление'       |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный   |
        |'3,000000'  |'3,000000'            |
        И в таблице "Список" я перехожу к строке:
        |Период                |Услуга                              |Точка учета                    |Вид начисления |Способ начисления      |Направление использования ТУ |
        |'31.10.2019 23:59:59' |'Компонент теплоноситель (ГВС)'     |'Прочее_Отопление + ГВС'       |'Начисление'   |'По приборам'          |'Основное направление'       |
        И в таблице "Список" текущая строка равна:
        |Объем услуги |Объем потребленный   |
        |'8,206391'  |'8,206391'            |