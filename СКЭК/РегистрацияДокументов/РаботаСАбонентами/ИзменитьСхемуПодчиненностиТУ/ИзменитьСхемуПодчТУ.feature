    #language: ru
    @tree
    @card 'https://trello.com/c/B2fRSnJM'
    Функционал: <описание фичи>
    Как <Роль>
    Я хочу <описание функционала>
    Чтобы <бизнес-эффект>

    Контекст:
    Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

    Сценарий: <ИзменитьСхемуПодчТУ>
    И я создаю документ "Подключение услуги"
        И В командном интерфейсе я выбираю 'Работа с абонентами' 'Подключение/отключение услуг'
        Тогда открылось окно 'Подключение/отключение услуг'
        И в таблице "Список" я нажимаю на кнопку с именем 'СписокСоздать'
        Тогда открылось окно 'Выбор вида операции'
        И в таблице "СписокОпераций" я выбираю текущую строку
        Тогда открылось окно 'Подключение/отключение услуг (создание)'
        И в поле 'Дата' я ввожу текст '01.11.2020  0:00:00'
        И из выпадающего списка "Абонент" я выбираю по строке 'Эргардт Елена Александровна'
        И в таблице "ТочкиУчетаЕстьШкалыНетТарифныхЗон" я нажимаю на кнопку с именем 'ТочкиУчетаЕстьШкалыНетТарифныхЗонДобавитьУслугу'
        И в таблице "ТочкиУчетаЕстьШкалыНетТарифныхЗон" я активизирую поле с именем "ТочкиУчетаЕстьШкалыНетТарифныхЗонУслуга"
        И в таблице "ТочкиУчетаЕстьШкалыНетТарифныхЗон" из выпадающего списка с именем "ТочкиУчетаЕстьШкалыНетТарифныхЗонУслуга" я выбираю по строке 'Холодное водоснабжение'
        И в таблице "ТочкиУчетаЕстьШкалыНетТарифныхЗон" я завершаю редактирование строки
        И в таблице "ТочкиУчетаЕстьШкалыНетТарифныхЗон" я активизирую поле с именем "ТочкиУчетаЕстьШкалыНетТарифныхЗонРасположение"
        И в таблице "ТочкиУчетаЕстьШкалыНетТарифныхЗон" я выбираю текущую строку
        И в таблице "ТочкиУчетаЕстьШкалыНетТарифныхЗон" из выпадающего списка с именем "ТочкиУчетаЕстьШкалыНетТарифныхЗонРасположение" я выбираю по строке 'кухня'
        И я перехожу к следующему реквизиту
        И я перехожу к следующему реквизиту
        И в таблице "ТочкиУчетаЕстьШкалыНетТарифныхЗон" из выпадающего списка с именем "ТочкиУчетаЕстьШкалыНетТарифныхЗонНаправлениеИспользованияТУ" я выбираю по строке 'Основное направление'
        И я перехожу к следующему реквизиту
        И в таблице "ТочкиУчетаЕстьШкалыНетТарифныхЗон" из выпадающего списка с именем "ТочкиУчетаЕстьШкалыНетТарифныхЗонСтруктураСети" я выбираю по строке 'водовод жр Кедровка'
        И я перехожу к закладке "Площади"
        И в таблице "ТочкиУчетаЕстьШкалыНетТарифныхЗон" я завершаю редактирование строки
        И в таблице "ЗначениеПлощадей" я нажимаю на кнопку с именем 'ЗначениеПлощадейДобавить'
        И в таблице "ЗначениеПлощадей" я нажимаю кнопку выбора у реквизита "Вид площади"
        И в таблице "ЗначениеПлощадей" из выпадающего списка "Вид площади" я выбираю по строке 'Площадь земельного участка'
        И я перехожу к следующему реквизиту
        И в таблице "ЗначениеПлощадей" в поле 'Значение, м2' я ввожу текст '20,00'
        И я перехожу к закладке "Виды благоустройства, тарифные категории"
        И в таблице "ЗначениеПлощадей" я завершаю редактирование строки
        И в таблице "ВидыБлагоустройстваТарифныеКатегории" я активизирую поле "Вид благоустройства индивидуальный"
        И в таблице "ВидыБлагоустройстваТарифныеКатегории" я выбираю текущую строку
        И в таблице "ВидыБлагоустройстваТарифныеКатегории" из выпадающего списка "Вид благоустройства индивидуальный" я выбираю точное значение 'ХВ,ГВ,КАН, раковина, мойка +'
        И в таблице "ВидыБлагоустройстваТарифныеКатегории" я активизирую поле "Тарифная категория"
        И в таблице "ВидыБлагоустройстваТарифныеКатегории" из выпадающего списка "Тарифная категория" я выбираю по строке 'нет прописанных'
        И в таблице "ВидыБлагоустройстваТарифныеКатегории" я завершаю редактирование строки
    И я провожу документ    
        И я нажимаю на кнопку 'Провести и закрыть'
        И я жду закрытия окна 'Подключение/отключение услуг (создание) *' в течение 20 секунд
    И Я запускаю выполнение начислений по организации 'ОАО "СКЭК"' и району 'Кемеровский городской округ' и МКД '' с 'Ноябрь' '2020' по 'Ноябрь 2020'    
    И я создаю документ "Установить схему подчиненности точек учета"    
        И В командном интерфейсе я выбираю 'Работа с абонентами' 'Установить схему подчиненности точек учета'
        Тогда открылось окно 'Установить схему подчиненности точек учета'
        И в таблице "Список" я нажимаю на кнопку с именем 'СписокСоздать'
        Тогда открылось окно 'Установить схему подчиненности точек учета (создание)'
        И в поле 'Дата' я ввожу текст '05.11.2020  0:00:00'
        И из выпадающего списка "Абонент" я выбираю по строке 'Эргардт Елена Александровна'
        И в таблице "ТочкиУчетаЕстьШкалыНетТарифныхЗон" я перехожу к строке:
        |Точка учета                     |Услуга                   |Прибор учета |Техническая |
        |'+ввод_Холодное водоснабжение'  |'Холодное водоснабжение' |''           |'Нет'       |
        И в таблице "ТочкиУчетаЕстьШкалыНетТарифныхЗон" я разворачиваю строку:
        |Точка учета                     |Услуга                   |Прибор учета |Техническая |
        |'+ввод_Холодное водоснабжение'  |'Холодное водоснабжение' |''           |'Нет'       |
        И в таблице "ТочкиУчетаЕстьШкалыНетТарифныхЗон" я перехожу к строке:
        |Точка учета                     |Услуга                   |Прибор учета |Техническая |
        |'огород_Холодное водоснабжение' |'Холодное водоснабжение' |''           |'Нет'       |
        И в таблице "ТочкиУчетаЕстьШкалыНетТарифныхЗон" я перехожу к строке:
        |Точка учета                     |Услуга                   |Прибор учета |Техническая |
        |'кухня_Холодное водоснабжение' |'Холодное водоснабжение'  |''           |'Нет'       |
    И я провожу документ
        И я нажимаю на кнопку 'Провести и закрыть'
        И я жду закрытия окна 'Установить схему подчиненности точек учета (создание) *' в течение 20 секунд    