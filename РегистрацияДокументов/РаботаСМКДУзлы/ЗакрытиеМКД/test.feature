#language: ru
@tree
Функционал: <описание фичи>

Как <Роль>
Я хочу <описание функционала>
Чтобы <бизнес-эффект>

Контекст:
    Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: <описание сценария>
    И я подготавливаю тестовые данные
        И я загружаю макет "РегистрацияДокументов\РаботаСМКДУзлы\ЗакрытиеМКД\ИсходныеДанные.mxl"
    И я создаю новый документ          
        И В командном интерфейсе я выбираю 'Работа с МКД' 'Операции с МКД'
        Тогда открылось окно 'Операции с МКД'
        И в таблице "Список" я нажимаю на кнопку с именем 'СписокСоздать'
        Тогда открылось окно 'Выбор вида операции'
        И в таблице "СписокОпераций" я перехожу к строке:
        | Значение                       |
        | Закрытие многоквартирного дома |
        И в таблице "СписокОпераций" я выбираю текущую строку
        Тогда открылось окно 'Закрытие МКД: Операции с МКД (создание)'
    И я заполняю форму открывшегося документа      
        И в поле 'Дата' я ввожу текст '29.01.2020  0:00:00'
        И из выпадающего списка "МКД" я выбираю точное значение 'Глазов г., Кирова ул, Дом № 99А'
        И в таблице "ТочкиУчетаЕстьШкалыЕстьТарифныеЗоны" я перехожу к строке:
        | N | Группа измеряемых ресурсов | Ед.изм. | Прибор учета                                         | Точка учета                      | Услуга                       |
        | 1 | Температура (Градусы)      | м3      | '3574                                              ' | ТУ6_Холодное водоснабжение (ХВС) | Холодное водоснабжение (ХВС) |
        И в таблице "ТочкиУчетаЕстьШкалыЕстьТарифныеЗоны" я активизирую поле с именем "ТочкиУчетаЕстьШкалыЕстьТарифныеЗоныТочкаУчета"
        И в таблице "ПоказанияПриборовУчетаЕстьШкалыЕстьТарифныеЗоны" я перехожу к строке:
        | Коэффициент ПУ | Переворот | Состояние показаний | Тарифная зона |
        | '1,00'         | Нет       | Отклонены           | Без разбивки  |
        И в таблице "ПоказанияПриборовУчетаЕстьШкалыЕстьТарифныеЗоны" я активизирую поле с именем "ПоказанияПриборовУчетаЕстьШкалыЕстьТарифныеЗоныТекущиеПоказания"
        И в таблице "ПоказанияПриборовУчетаЕстьШкалыЕстьТарифныеЗоны" я выбираю текущую строку
        И в таблице "ПоказанияПриборовУчетаЕстьШкалыЕстьТарифныеЗоны" в поле 'Текущие показания' я ввожу текст '753,0000'
        И в таблице "ПоказанияПриборовУчетаЕстьШкалыЕстьТарифныеЗоны" я завершаю редактирование строки
        И в таблице "ТочкиУчетаЕстьШкалыЕстьТарифныеЗоны" я перехожу к строке:
        | N | Группа измеряемых ресурсов | Ед.изм. | Прибор учета                                         | Точка учета                      | Услуга                       |
        | 2 | Давление (кг/см2)          | м3      | '3573                                              ' | ТУ6_Холодное водоснабжение (ХВС) | Холодное водоснабжение (ХВС) |
        И в таблице "ПоказанияПриборовУчетаЕстьШкалыЕстьТарифныеЗоны" я перехожу к строке:
        | Коэффициент ПУ | Переворот | Состояние показаний | Тарифная зона |
        | '1,00'         | Нет       | Отклонены           | Без разбивки  |
        И в таблице "ПоказанияПриборовУчетаЕстьШкалыЕстьТарифныеЗоны" я выбираю текущую строку
        И в таблице "ПоказанияПриборовУчетаЕстьШкалыЕстьТарифныеЗоны" в поле 'Текущие показания' я ввожу текст '754,0000'
        И в таблице "ПоказанияПриборовУчетаЕстьШкалыЕстьТарифныеЗоны" я завершаю редактирование строки
        И в таблице "ТочкиУчетаЕстьШкалыЕстьТарифныеЗоны" я перехожу к строке:
        | N | Группа измеряемых ресурсов | Ед.изм. | Прибор учета                                         | Точка учета                      | Услуга                       |
        | 3 | Теплоноситель (м3)         | м3      | '3571                                              ' | ТУ6_Холодное водоснабжение (ХВС) | Холодное водоснабжение (ХВС) |
        И в таблице "ПоказанияПриборовУчетаЕстьШкалыЕстьТарифныеЗоны" я перехожу к строке:
        | Коэффициент ПУ | Переворот | Состояние показаний | Тарифная зона |
        | '1,00'         | Нет       | Отклонены           | Без разбивки  |
        И в таблице "ПоказанияПриборовУчетаЕстьШкалыЕстьТарифныеЗоны" я выбираю текущую строку
        И в таблице "ПоказанияПриборовУчетаЕстьШкалыЕстьТарифныеЗоны" в поле 'Текущие показания' я ввожу текст '755,0000'
        И в таблице "ПоказанияПриборовУчетаЕстьШкалыЕстьТарифныеЗоны" я завершаю редактирование строки
        И в таблице "ТочкиУчетаЕстьШкалыЕстьТарифныеЗоны" я перехожу к строке:
        | N | Группа измеряемых ресурсов | Ед.изм. | Прибор учета                                         | Точка учета                      | Услуга                       |
        | 4 | Одноканальный (М3)         | м3      | '3572                                              ' | ТУ6_Холодное водоснабжение (ХВС) | Холодное водоснабжение (ХВС) |
        И в таблице "ПоказанияПриборовУчетаЕстьШкалыЕстьТарифныеЗоны" я перехожу к строке:
        | Коэффициент ПУ | Переворот | Состояние показаний | Тарифная зона |
        | '1,00'         | Нет       | Отклонены           | Без разбивки  |
        И в таблице "ПоказанияПриборовУчетаЕстьШкалыЕстьТарифныеЗоны" я выбираю текущую строку
        И в таблице "ПоказанияПриборовУчетаЕстьШкалыЕстьТарифныеЗоны" в поле 'Текущие показания' я ввожу текст '756,0000'
        И в таблице "ПоказанияПриборовУчетаЕстьШкалыЕстьТарифныеЗоны" я завершаю редактирование строки
    И я провожу документ         
        И я нажимаю на кнопку 'Провести и закрыть'
        И я жду закрытия окна 'Закрытие МКД: Операции с МКД (создание) *' в течение 20 секунд