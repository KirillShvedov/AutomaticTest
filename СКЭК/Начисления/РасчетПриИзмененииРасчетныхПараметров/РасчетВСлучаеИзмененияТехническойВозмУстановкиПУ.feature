#language: ru
@tree
Функционал: <описание фичи>

    Как <Роль>
    Я хочу <проверить расчет в случае изменения технической возможности установки ПУ. Абонент Туманова Светлана>
    Чтобы <бизнес-эффект>

Контекст:
    Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: <РасчетВСлучаеИзмененияТехническойВозмУстановкиПУ>
    И я подготавливаю тестовые данные
        И я загружаю макет "РасчетВСлучаеИзмененияТехническойВозмУстановкиПУ.mxl"
    И я перепровожу загруженные данные
        И В командном интерфейсе я выбираю 'Администрирование' 'Ввод начальных остатков'
        Тогда открылось окно 'Ввод начальных остатков'
        И в таблице 'Список' я выделяю все строки
        И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюПровести' на элементе формы с именем "Список"
        И В командном интерфейсе я выбираю 'Работа с абонентами' 'Изменить техническую возможность установки ПУ'
        Тогда открылось окно 'Изменить техническую возможность установки ПУ'
        И в таблице 'Список' я выделяю все строки
        И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюПровести' на элементе формы с именем "Список"
    И Я запускаю выполнение начислений по организации 'ООО "ПКС"' и району 'Плотниковское СП Промышленновского р-на' и МКД '' с 'Июль' '2019' по 'Август 2019'
    И я проверяю полученные результаты
        И Я открываю навигационную ссылку "e1cib/list/РегистрНакопления.энргОбъемНачислений"
        Тогда открылось окно 'Объем начислений'
        И я нажимаю на кнопку 'Настроить список...'
        Тогда открылось окно 'Настройка списка'
        И в таблице "КомпоновщикНастроекПользовательскиеНастройкиЭлемент0Отбор" я нажимаю на кнопку с именем 'КомпоновщикНастроекПользовательскиеНастройкиЭлемент0ОтборДобавитьЭлементОтбора'
        И в таблице "КомпоновщикНастроекПользовательскиеНастройкиЭлемент0Отбор" я выбираю текущую строку
        И в таблице "КомпоновщикНастроекПользовательскиеНастройкиЭлемент0Отбор" из выпадающего списка с именем "КомпоновщикНастроекПользовательскиеНастройкиЭлемент0ОтборЛевоеЗначение" я выбираю по строке 'абонент'
        И в таблице "КомпоновщикНастроекПользовательскиеНастройкиЭлемент0Отбор" я активизирую поле "Значение"
        И в таблице "КомпоновщикНастроекПользовательскиеНастройкиЭлемент0Отбор" в поле 'Значение' я ввожу текст 'Демидова Лидия Алексеевна'
        И в таблице "КомпоновщикНастроекПользовательскиеНастройкиЭлемент0Отбор" я завершаю редактирование строки
        И я нажимаю на кнопку 'Завершить редактирование'
        Тогда в таблице "Список" количество строк "равно" 8  
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                     |Услуга                   |Точка учета                     |Способ начисления |Направление использования ТУ |Измеритель        |
        |'31.07.2019 23:59:59' |'Демидова Лидия Алексеевна' |'Холодное водоснабжение' |'ввод_ХВС + водоотведение'      |'По нормативу'    |'Основное направление'       |''                |
        И в таблице "Список" текущая строка равна:
        |Сумма    |Объем услуги |Объем потребленный |
        |'294,69' |'9,400000'   |'9,400000'         |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                     |Услуга                   |Точка учета                     |Способ начисления |Направление использования ТУ |Измеритель        |
        |'31.07.2019 23:59:59' |'Демидова Лидия Алексеевна' |'Холодное водоснабжение' |'огород_Холодное водоснабжение' |'По нормативу'    |'полив из водопровода'       |''                |
        И в таблице "Список" текущая строка равна:
        |Сумма    |Объем услуги |Объем потребленный |
        |''       |''           |''                 |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                     |Услуга                   |Точка учета                     |Способ начисления |Направление использования ТУ |Измеритель        |
        |'31.07.2019 23:59:59' |'Демидова Лидия Алексеевна' |'Холодное водоснабжение' |'баня_Холодное водоснабжение'   |'По нормативу'    |'мытье в бане'               |'кол-во мойщиков' |
        И в таблице "Список" текущая строка равна:
        |Сумма    |Объем услуги |Объем потребленный |
        |'8,36'   |'0,400000'   |'0,400000'         |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                     |Услуга                   |Точка учета                     |Способ начисления |Направление использования ТУ |Измеритель        |
        |'31.07.2019 23:59:59' |'Демидова Лидия Алексеевна' |'Водоотведение'          |'ввод_ХВС + водоотведение'      |'По нормативу'    |'Основное направление'       |''                |
        И в таблице "Список" текущая строка равна:
        |Сумма    |Объем услуги |Объем потребленный |
        |'121,54' |'9,400000'   |'9,400000'         |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                     |Услуга                   |Точка учета                     |Способ начисления |Направление использования ТУ |Измеритель        |
        |'31.08.2019 23:59:59' |'Демидова Лидия Алексеевна' |'Холодное водоснабжение' |'ввод_ХВС + водоотведение'      |'По нормативу'    |'Основное направление'       |''                |
        И в таблице "Список" текущая строка равна:
        |Сумма    |Объем услуги |Объем потребленный |
        |'196,46' |'9,400000'   |'9,400000'         |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                     |Услуга                   |Точка учета                     |Способ начисления |Направление использования ТУ |Измеритель        |
        |'31.08.2019 23:59:59' |'Демидова Лидия Алексеевна' |'Холодное водоснабжение' |'огород_Холодное водоснабжение' |'По нормативу'    |'полив из водопровода'       |''                |
        И в таблице "Список" текущая строка равна:
        |Сумма    |Объем услуги |Объем потребленный |
        |'319,51' |'15,287340'  |'15,287340'        |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                     |Услуга                   |Точка учета                     |Способ начисления |Направление использования ТУ |Измеритель        |
        |'31.08.2019 23:59:59' |'Демидова Лидия Алексеевна' |'Холодное водоснабжение' |'баня_Холодное водоснабжение'   |'По нормативу'    |'мытье в бане'               |''                |
        И в таблице "Список" текущая строка равна:
        |Сумма    |Объем услуги |Объем потребленный |
        |''       |'0,400000'   |'0,400000'         |
        И в таблице "Список" я перехожу к строке:
        |Период                |Абонент                     |Услуга                   |Точка учета                     |Способ начисления |Направление использования ТУ |Измеритель        |
        |'31.08.2019 23:59:59' |'Демидова Лидия Алексеевна' |'Водоотведение'          |'ввод_ХВС + водоотведение'      |'По нормативу'    |'Основное направление'       |''                |
        И в таблице "Список" текущая строка равна:
        |Сумма    |Объем услуги |Объем потребленный |
        |'121,54' |'9,400000'   |'9,400000'         |