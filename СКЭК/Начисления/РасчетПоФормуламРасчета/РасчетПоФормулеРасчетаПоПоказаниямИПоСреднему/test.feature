#language: ru
@tree
Функционал: <описание фичи>

Как <Роль>
Я хочу <Проверка расчет по формуле расчета по показаниям, по среднему>
Чтобы <бизнес-эффект>

Контекст:
    Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: <описание сценария>
    И я подготавливаю тестовые данные
        И я загружаю макет "СКЭК\Начисления\РасчетПоФормуламРасчета\РасчетПоФормулеРасчетаПоПоказаниямИПоСреднему\ИсходныеДанные.mxl"
        И я перепровожу загруженные данные
            И В командном интерфейсе я выбираю 'Работа с абонентами' 'Открытие/закрытие лс физического лица'
            Тогда открылось окно 'Открытие/закрытие лс физического лица'
            И в таблице 'Список' я выделяю все строки
            И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюПровести' на элементе формы с именем "Список"
            И В командном интерфейсе я выбираю 'Работа с абонентами' 'Регистрация показаний абонента'
            Тогда открылось окно 'Регистрация показаний абонента'
            И в таблице 'Список' я выделяю все строки
            И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюПровести' на элементе формы с именем "Список"
    И Я запускаю выполнение начислений по организации 'ОАО "СКЭК"' и району 'Березовский городской округ' с 'Август' '2019' по 'Март 2020'    
    И я проверяю полученные результаты
        И Я открываю навигационную ссылку "e1cib/list/РегистрНакопления.энргОбъемНачислений"
        Тогда открылось окно 'Объем начислений'
        И я нажимаю на кнопку с именем 'ФормаУстановитьИнтервал'
        Тогда открылось окно 'Выберите период'
        И в поле 'DateBegin' я ввожу текст '01.01.2020'
        И в поле 'DateEnd' я ввожу текст '31.12.2020'
        И я перехожу к следующему реквизиту
        И я нажимаю на кнопку 'Выбрать'
        И в таблице "Список" я перехожу к строке:
        | Период                | Организация   | Филиал                        | Строение                              | Абонент       | Услуга                    | Точка учета                   |
        | 31.03.2020 23:59:59   | ОАО "СКЭК"    | Березовский городской округ   | Березовский г., Вишневая ул, Дом 7    | Никифоров С А | Холодное водоснабжение    | огород_Холодное водоснабжение |
        И в таблице "Список" текущая строка равна:
        | Способ начисления         | Объем услуги  |
        | Начисление по среднему    | '1,000000'    |
    И я выполняю очистку после теста
        И я закрываю сеанс TESTCLIENT
        И я выполняю код встроенного языка на сервере "УстановитьМонопольныйРежим(Истина)"
        И я выполняю код встроенного языка на сервере "УдалитьДанныеИнформационнойБазы()"
        И я выполняю код встроенного языка на сервере "УстановитьМонопольныйРежим(Ложь)"

