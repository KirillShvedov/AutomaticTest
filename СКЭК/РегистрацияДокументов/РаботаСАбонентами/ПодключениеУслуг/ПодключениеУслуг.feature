    #language: ru
    @tree
    @card 'https://trello.com/c/53hz0O1y'
    Функционал: <описание фичи>
    Как <Роль>
    Я хочу <описание функционала>
    Чтобы <бизнес-эффект>

    Контекст:
    Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

    Сценарий: <ПодключениеУслуг>
    И я создаю документ 
        И В командном интерфейсе я выбираю 'Работа с абонентами' 'Подключение/отключение услуг'
        Тогда открылось окно 'Подключение/отключение услуг'
        И в таблице "Список" я нажимаю на кнопку с именем 'СписокСоздать'
        Тогда открылось окно 'Выбор вида операции'
        И в таблице "СписокОпераций" я перехожу к строке:
        | Значение             |
        | 'Подключение услуги' |
        И в таблице "СписокОпераций" я выбираю текущую строку
        Тогда открылось окно 'Подключение/отключение услуг (создание)'
        И в поле 'Дата' я ввожу текст '01.12.2020  0:00:00'
        И из выпадающего списка "Абонент" я выбираю по строке 'Шаева Ирина Сергеевна'
        Тогда значение поля "Территориальный орган" содержит текст "Ваганово СП Промышленновского р-на"
        Тогда значение поля "Строение" содержит текст "Ваганово с, Центральная ул, Дом № 2А"
        Тогда значение поля "Помещение" содержит текст "2"
    И я заполняю ТЧ "Услуги"
        И я перехожу к закладке "Услуги"
        И в таблице "ТочкиУчетаЕстьШкалыНетТарифныхЗон" я нажимаю на кнопку с именем 'ТочкиУчетаЕстьШкалыНетТарифныхЗонДобавитьУслугу'
        И в таблице "ТочкиУчетаЕстьШкалыНетТарифныхЗон" из выпадающего списка с именем "ТочкиУчетаЕстьШкалыНетТарифныхЗонУслуга" я выбираю по строке 'Горячее водоснабжение'
        И в таблице "ТочкиУчетаЕстьШкалыНетТарифныхЗон" из выпадающего списка с именем "ТочкиУчетаЕстьШкалыНетТарифныхЗонРасположение" я выбираю по строке 'кухня'
        И в таблице "ТочкиУчетаЕстьШкалыНетТарифныхЗон" из выпадающего списка с именем "ТочкиУчетаЕстьШкалыНетТарифныхЗонНаправлениеИспользованияТУ" я выбираю по строке 'Основное направление'
        И в таблице "ТочкиУчетаЕстьШкалыНетТарифныхЗон" из выпадающего списка с именем "ТочкиУчетаЕстьШкалыНетТарифныхЗонСтруктураСети" я выбираю по строке '1 котельная'
        И в таблице "ТочкиУчетаЕстьШкалыНетТарифныхЗон" из выпадающего списка с именем "ТочкиУчетаЕстьШкалыНетТарифныхЗонВидКанальности" я выбираю по строке 'Одноканальный ГВ'
        И в таблице "ТочкиУчетаЕстьШкалыНетТарифныхЗон" в поле 'Заводской номер' я ввожу текст '35735769'
        И в таблице "ТочкиУчетаЕстьШкалыНетТарифныхЗон" из выпадающего списка с именем "ТочкиУчетаЕстьШкалыНетТарифныхЗонТипПрибораУчета" я выбираю по строке 'КВУ'
        И в таблице "ТочкиУчетаЕстьШкалыНетТарифныхЗон" в поле 'Дата поверки счетчика' я ввожу текст '01.01.2025'
        И в таблице "ТочкиУчетаЕстьШкалыНетТарифныхЗон" в поле 'Дата выпуска' я ввожу текст '01.12.2020'
        И в таблице "ТочкиУчетаЕстьШкалыНетТарифныхЗон" в поле 'Номер пломбы' я ввожу текст '35963'
        И в таблице "ТочкиУчетаЕстьШкалыНетТарифныхЗон" в поле 'Дата установки пломбы' я ввожу текст '01.12.2020'
        И в таблице "ТочкиУчетаЕстьШкалыНетТарифныхЗон" я завершаю редактирование строки
        И в таблице "ШкалыПриборовУчетаЕстьШкалыНетТарифныхЗон" в поле 'Текущие показания' я ввожу текст '10,0000'
        И в таблице "ШкалыПриборовУчетаЕстьШкалыНетТарифныхЗон" я завершаю редактирование строки
    И я заполняю ТЧ "Площади"  
        И я перехожу к закладке "Площади"
        И в таблице "ЗначениеПлощадей" я нажимаю на кнопку с именем 'ЗначениеПлощадейДобавить'
        И в таблице "ЗначениеПлощадей" я нажимаю кнопку выбора у реквизита "Вид площади"
        И в таблице "ЗначениеПлощадей" из выпадающего списка "Вид площади" я выбираю по строке 'Площадь земельного участка'
        И в таблице "ЗначениеПлощадей" в поле 'Значение, м2' я ввожу текст '15,00'
        И в таблице "ЗначениеПлощадей" я завершаю редактирование строки
    И я заполняю ТЧ "Виды благоустройства, тарифные категории"
        И я перехожу к закладке "Виды благоустройства, тарифные категории"
        И в таблице "ВидыБлагоустройстваТарифныеКатегории" я выбираю текущую строку
        И в таблице "ВидыБлагоустройстваТарифныеКатегории" из выпадающего списка "Вид благоустройства индивидуальный" я выбираю по строке 'ХВ,ГВ,КАН раковина, мойка, унитаз +'
        И в таблице "ВидыБлагоустройстваТарифныеКатегории" из выпадающего списка "Тарифная категория" я выбираю по строке 'население ЧС'
    И я провожу документ
        И я нажимаю на кнопку 'Провести'
    И я проверяю текущие показания 
        И я перехожу к закладке "Услуги"
        И в таблице "ТочкиУчетаЕстьШкалыНетТарифныхЗон" я перехожу к строке:
        |Услуга                 | Поставщик | Наименование точки           | Направление использования | Заводской номер |
        |'Горячее водоснабжение'|'ОАО СКЭК' |'кухня_Горячее водоснабжение' |'Основное направление'     |'35735769'       | 
        И в таблице "ШкалыПриборовУчетаЕстьШкалыНетТарифныхЗон" я перехожу к строке:   
        |Шкала      |Текущие показания|
        |'Основная' |'10,0000'        |
    И я провожу и записываю документ
        И я нажимаю на кнопку 'Провести и закрыть'
        И я жду закрытия окна 'Подключение/отключение услуг (создание) *' в течение 20 секунд    


