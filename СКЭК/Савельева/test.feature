            #language: ru

            Функционал: <описание фичи>

            Как <Роль>
            Я хочу <описание функционала>
            Чтобы <бизнес-эффект>

            Контекст:
            Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий


            Сценарий: <описание сценария>
            И я загружаю макет "СКЭК\Савельева\ИсходныеДанные.mxl"
            И В командном интерфейсе я выбираю 'Работа с абонентами' 'Открытие/закрытие лс физического лица'
            Тогда открылось окно 'Открытие/закрытие лс физического лица'
            И в таблице 'Список' я выделяю все строки
            И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюПровести' на элементе формы с именем "Список"
            И В командном интерфейсе я выбираю 'Работа с абонентами' 'Акт ввода/вывода/замены прибора учёта'
            Тогда открылось окно 'Акт ввода/вывода/замены прибора учёта'
            И в таблице 'Список' я выделяю все строки
            И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюПровести' на элементе формы с именем "Список"
            И В командном интерфейсе я выбираю 'Расчет начислений' 'Выполнение начислений'
            Тогда открылось окно 'Выполнение начислений: Выполнение начислений'
            И я нажимаю кнопку выбора у поля "Месяц с"
            Тогда открылось окно 'Выбор периода'
            И в поле 'ВыбираемыйПериод' я ввожу текст '2019'
            И я перехожу к следующему реквизиту
            # Октябрь 2019
            И я нажимаю на кнопку 'Октябрь'
            И я нажимаю на кнопку 'Выбрать'
            Тогда открылось окно 'Выполнение начислений: Выполнение начислений'
            И из выпадающего списка "Организация" я выбираю по строке 'ОАО "СКЭК"'
            И из выпадающего списка "Территориальный орган" я выбираю по строке 'Кемеровский городской округ'
            И я изменяю флаг 'ОтборПоДому'
            И я нажимаю на кнопку 'Выполнить все операции'
            И поле с именем "ОшибкиЗаполнениеНачальныхОстатковМКД" имеет заголовок "Нет Ошибок"
            И поле с именем "ОшибкиВосстановлениеПоследовательностиДокументовМКД" имеет заголовок "Нет Ошибок"
            И поле с именем "ОшибкиВосстановлениеПоследовательностиПоказанийМКД" имеет заголовок "Нет Ошибок"
            И поле с именем "ОшибкиЗаполнениеНачальныхОстатков" имеет заголовок "Нет Ошибок"
            И поле с именем "ОшибкиВосстановлениеПоследовательностиДокументов" имеет заголовок "Нет Ошибок"
            И поле с именем "ОшибкиВосстановлениеПоследовательностиПоказанийПУ" имеет заголовок "Нет Ошибок"
            И поле с именем "ОшибкиЗаполнениеНачальныхОстатковНП" имеет заголовок "Нет Ошибок"
            И поле с именем "ОшибкиВосстановлениеПоследовательностиДокументовНП" имеет заголовок "Нет Ошибок"
            И поле с именем "ОшибкиВосстановлениеПоследовательностиПоказанийПУНП" имеет заголовок "Нет Ошибок"
            И поле с именем "ОшибкиПерерасчетСреднихНачисленийМКД" имеет заголовок "Нет Ошибок"
            И поле с именем "ОшибкиРасчетНачисленийНаМКД" имеет заголовок "Нет Ошибок"
            И поле с именем "ОшибкиКорректировкаПотребленияСезонныхУслугМКД" имеет заголовок "Нет Ошибок"
            И поле с именем "ОшибкиИндивидуальныеНачисления" имеет заголовок "Нет Ошибок"
            И поле с именем "ОшибкиПерерасчетСреднихНачислений" имеет заголовок "Нет Ошибок"
            И поле с именем "ОшибкиКорректировкаПотребленияСезонныхУслуг" имеет заголовок "Нет Ошибок"
            И поле с именем "ОшибкиНачислениеПроцентовРассрочки" имеет заголовок "Нет Ошибок"
            И поле с именем "ОшибкиНачислениеПени" имеет заголовок "Нет Ошибок"
            И поле с именем "ОшибкиРасчетЛьгот" имеет заголовок "Нет Ошибок"
            И поле с именем "ОшибкиПерерасчетСреднихНачисленийНП" имеет заголовок "Нет Ошибок"
            И поле с именем "ОшибкиИндивидуальныеНачисленияНП" имеет заголовок "Нет Ошибок"
            И поле с именем "ОшибкиНачисленияПоДолевымСхемам" имеет заголовок "Нет Ошибок"
            И поле с именем "ОшибкиРаспределениеОбъемаМКД" имеет заголовок "Нет Ошибок"
            И поле с именем "ОшибкиВосстановлениеПоследовательностиВзаиморасчетов" имеет заголовок "Нет Ошибок"
            # Ноябрь 2019
            И в поле "Месяц с" я увеличиваю значение
            И я нажимаю на кнопку 'Выполнить все операции'
            И поле с именем "ОшибкиЗаполнениеНачальныхОстатковМКД" имеет заголовок "Нет Ошибок"
            И поле с именем "ОшибкиВосстановлениеПоследовательностиДокументовМКД" имеет заголовок "Нет Ошибок"
            И поле с именем "ОшибкиВосстановлениеПоследовательностиПоказанийМКД" имеет заголовок "Нет Ошибок"
            И поле с именем "ОшибкиЗаполнениеНачальныхОстатков" имеет заголовок "Нет Ошибок"
            И поле с именем "ОшибкиВосстановлениеПоследовательностиДокументов" имеет заголовок "Нет Ошибок"
            И поле с именем "ОшибкиВосстановлениеПоследовательностиПоказанийПУ" имеет заголовок "Нет Ошибок"
            И поле с именем "ОшибкиЗаполнениеНачальныхОстатковНП" имеет заголовок "Нет Ошибок"
            И поле с именем "ОшибкиВосстановлениеПоследовательностиДокументовНП" имеет заголовок "Нет Ошибок"
            И поле с именем "ОшибкиВосстановлениеПоследовательностиПоказанийПУНП" имеет заголовок "Нет Ошибок"
            И поле с именем "ОшибкиПерерасчетСреднихНачисленийМКД" имеет заголовок "Нет Ошибок"
            И поле с именем "ОшибкиРасчетНачисленийНаМКД" имеет заголовок "Нет Ошибок"
            И поле с именем "ОшибкиКорректировкаПотребленияСезонныхУслугМКД" имеет заголовок "Нет Ошибок"
            И поле с именем "ОшибкиИндивидуальныеНачисления" имеет заголовок "Нет Ошибок"
            И поле с именем "ОшибкиПерерасчетСреднихНачислений" имеет заголовок "Нет Ошибок"
            И поле с именем "ОшибкиКорректировкаПотребленияСезонныхУслуг" имеет заголовок "Нет Ошибок"
            И поле с именем "ОшибкиНачислениеПроцентовРассрочки" имеет заголовок "Нет Ошибок"
            И поле с именем "ОшибкиНачислениеПени" имеет заголовок "Нет Ошибок"
            И поле с именем "ОшибкиРасчетЛьгот" имеет заголовок "Нет Ошибок"
            И поле с именем "ОшибкиПерерасчетСреднихНачисленийНП" имеет заголовок "Нет Ошибок"
            И поле с именем "ОшибкиИндивидуальныеНачисленияНП" имеет заголовок "Нет Ошибок"
            И поле с именем "ОшибкиНачисленияПоДолевымСхемам" имеет заголовок "Нет Ошибок"
            И поле с именем "ОшибкиРаспределениеОбъемаМКД" имеет заголовок "Нет Ошибок"
            И поле с именем "ОшибкиВосстановлениеПоследовательностиВзаиморасчетов" имеет заголовок "Нет Ошибок"
            # Декабрь 2019
            И в поле "Месяц с" я увеличиваю значение
            И я нажимаю на кнопку 'Выполнить все операции'
            И поле с именем "ОшибкиЗаполнениеНачальныхОстатковМКД" имеет заголовок "Нет Ошибок"
            И поле с именем "ОшибкиВосстановлениеПоследовательностиДокументовМКД" имеет заголовок "Нет Ошибок"
            И поле с именем "ОшибкиВосстановлениеПоследовательностиПоказанийМКД" имеет заголовок "Нет Ошибок"
            И поле с именем "ОшибкиЗаполнениеНачальныхОстатков" имеет заголовок "Нет Ошибок"
            И поле с именем "ОшибкиВосстановлениеПоследовательностиДокументов" имеет заголовок "Нет Ошибок"
            И поле с именем "ОшибкиВосстановлениеПоследовательностиПоказанийПУ" имеет заголовок "Нет Ошибок"
            И поле с именем "ОшибкиЗаполнениеНачальныхОстатковНП" имеет заголовок "Нет Ошибок"
            И поле с именем "ОшибкиВосстановлениеПоследовательностиДокументовНП" имеет заголовок "Нет Ошибок"
            И поле с именем "ОшибкиВосстановлениеПоследовательностиПоказанийПУНП" имеет заголовок "Нет Ошибок"
            И поле с именем "ОшибкиПерерасчетСреднихНачисленийМКД" имеет заголовок "Нет Ошибок"
            И поле с именем "ОшибкиРасчетНачисленийНаМКД" имеет заголовок "Нет Ошибок"
            И поле с именем "ОшибкиКорректировкаПотребленияСезонныхУслугМКД" имеет заголовок "Нет Ошибок"
            И поле с именем "ОшибкиИндивидуальныеНачисления" имеет заголовок "Нет Ошибок"
            И поле с именем "ОшибкиПерерасчетСреднихНачислений" имеет заголовок "Нет Ошибок"
            И поле с именем "ОшибкиКорректировкаПотребленияСезонныхУслуг" имеет заголовок "Нет Ошибок"
            И поле с именем "ОшибкиНачислениеПроцентовРассрочки" имеет заголовок "Нет Ошибок"
            И поле с именем "ОшибкиНачислениеПени" имеет заголовок "Нет Ошибок"
            И поле с именем "ОшибкиРасчетЛьгот" имеет заголовок "Нет Ошибок"
            И поле с именем "ОшибкиПерерасчетСреднихНачисленийНП" имеет заголовок "Нет Ошибок"
            И поле с именем "ОшибкиИндивидуальныеНачисленияНП" имеет заголовок "Нет Ошибок"
            И поле с именем "ОшибкиНачисленияПоДолевымСхемам" имеет заголовок "Нет Ошибок"
            И поле с именем "ОшибкиРаспределениеОбъемаМКД" имеет заголовок "Нет Ошибок"
            И поле с именем "ОшибкиВосстановлениеПоследовательностиВзаиморасчетов" имеет заголовок "Нет Ошибок"            
            И Я открываю навигационную ссылку "e1cib/list/РегистрНакопления.энргОбъемНачислений"
            Тогда открылось окно 'Объем начислений'
            И я нажимаю на кнопку с именем 'ФормаУстановитьИнтервал'
            Тогда открылось окно 'Выберите период'
            И в поле 'DateBegin' я ввожу текст '01.01.2019'
            И в поле 'DateEnd' я ввожу текст '31.12.2019'
            И я перехожу к следующему реквизиту
            И я нажимаю на кнопку 'Выбрать'
            И в таблице "Список" я перехожу к строке:
            | Период        | Организация | Филиал                                         | Строение                                            | Абонент           | Услуга                                | Точка учета                                    |
            | 30.11.2019 23:59:59 | ОАО "СКЭК"      | Кемеровский городской округ | 650002, Кемеровская область - Кузбасс, Кемерово г, Авроры ул, дом № 14 | Савельева Наталья Васильевна | Холодное водоснабжение | ввод_ХВС + водоотведение |
            И в таблице "Список" текущая строка равна:
            | Способ начисления    | Объем услуги |
            | Среднее по нормативу | '4,700000'   |
             И в таблице "Список" я перехожу к строке:
            | Период        | Организация | Филиал                                         | Строение                                            | Абонент           | Услуга                                | Точка учета                                    |
            | 30.11.2019 23:59:59 | ОАО "СКЭК"      | Кемеровский городской округ | 650002, Кемеровская область - Кузбасс, Кемерово г, Авроры ул, дом № 14 | Савельева Наталья Васильевна | Водоотведение | ввод_ХВС + водоотведение |
            И в таблице "Список" текущая строка равна:
            | Способ начисления    | Объем услуги |
            | Среднее по нормативу | '3,060000'   |
# Среднее рассчитывается
И я закрываю сеанс TESTCLIENT
И я выполняю код встроенного языка на сервере "УстановитьМонопольныйРежим(Истина)"
И я выполняю код встроенного языка на сервере "УдалитьДанныеИнформационнойБазы()"
И я выполняю код встроенного языка на сервере "УстановитьМонопольныйРежим(Ложь)"

