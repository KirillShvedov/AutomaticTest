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
        И я загружаю макет "АктВыводаПУ"
    И я создаю новый документ    
        И В командном интерфейсе я выбираю 'Физические лица' 'Акт ввода/вывода/замены прибора учёта'
        Тогда открылось окно 'Акт ввода/вывода/замены прибора учёта'
        И в таблице "Список" я нажимаю на кнопку с именем 'СписокСоздать'
        Тогда открылось окно 'Выбор вида операции'
        И в таблице "СписокОпераций" я перехожу к строке:
            | Значение                 |
            | Акт вывода прибора учета |
        И в таблице "СписокОпераций" я выбираю текущую строку
        Тогда открылось окно 'Акт ввода/вывода/замены прибора учёта (создание)'
    И я заполняю форму открывшегося документа      
        И из выпадающего списка "Абонент" я выбираю точное значение 'Астраханцев Вячеслав Владимирович'
        Тогда открылось окно 'Акт ввода/вывода/замены прибора учёта (создание) *'
        И в таблице "ТочкиУчетаЕстьШкалыЕстьТарифныеЗоны" я перехожу к строке:
            | N | Группа измеряемых ресурсов | Ед.изм. | Прибор учета   | Точка учета                      | Услуга                       |
            | 1 | Одноканальный (М3)         | м3      | '3572'         | ТУ2_Холодное водоснабжение (ХВС) | Холодное водоснабжение (ХВС) |
        И в таблице "ТочкиУчетаЕстьШкалыЕстьТарифныеЗоны" я активизирую поле с именем "ТочкиУчетаЕстьШкалыЕстьТарифныеЗоныТочкаУчета"
        И в таблице "ТочкиУчетаЕстьШкалыЕстьТарифныеЗоны" я перехожу к строке:
            | N | Группа измеряемых ресурсов | Ед.изм. | Прибор учета   | Точка учета                      | Услуга                       |
            | 2 | Температура (Градусы)      | м3      | '3574'         | ТУ2_Холодное водоснабжение (ХВС) | Холодное водоснабжение (ХВС) |
        И в таблице 'ТочкиУчетаЕстьШкалыЕстьТарифныеЗоны' я удаляю строку
        И в таблице 'ТочкиУчетаЕстьШкалыЕстьТарифныеЗоны' я удаляю строку
        И в таблице 'ТочкиУчетаЕстьШкалыЕстьТарифныеЗоны' я удаляю строку
        И в таблице 'ТочкиУчетаЕстьШкалыЕстьТарифныеЗоны' я удаляю строку
        И в таблице 'ТочкиУчетаЕстьШкалыЕстьТарифныеЗоны' я удаляю строку
        И в таблице 'ТочкиУчетаЕстьШкалыЕстьТарифныеЗоны' я удаляю строку
        И в таблице 'ТочкиУчетаЕстьШкалыЕстьТарифныеЗоны' я удаляю строку
        И в таблице 'ТочкиУчетаЕстьШкалыЕстьТарифныеЗоны' я удаляю строку
        И в таблице 'ТочкиУчетаЕстьШкалыЕстьТарифныеЗоны' я удаляю строку
        И в таблице 'ТочкиУчетаЕстьШкалыЕстьТарифныеЗоны' я удаляю строку
        И в таблице 'ТочкиУчетаЕстьШкалыЕстьТарифныеЗоны' я удаляю строку
        И в таблице "ПоказанияПриборовУчетаЕстьШкалыЕстьТарифныеЗоны" я активизирую поле с именем "ПоказанияПриборовУчетаЕстьШкалыЕстьТарифныеЗоныТекущиеПоказания"
        И в таблице "ПоказанияПриборовУчетаЕстьШкалыЕстьТарифныеЗоны" я выбираю текущую строку
        И в таблице "ПоказанияПриборовУчетаЕстьШкалыЕстьТарифныеЗоны" в поле 'Текущие показания' я ввожу текст '305,0000'
    И я провожу документ     
        И я нажимаю на кнопку 'Провести и закрыть'
        И я жду закрытия окна 'Акт ввода/вывода/замены прибора учёта (создание) *' в течение 20 секунд