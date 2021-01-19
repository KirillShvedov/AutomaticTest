    #language: ru
    @tree
    @card 'https://trello.com/c/rVR7a1I1'
    Функционал: <описание фичи>
    Как <Роль>
    Я хочу <описание функционала>
    Чтобы <бизнес-эффект>

    Контекст:
    Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

    Сценарий: <РучнойПерерасчет>
    И я создаю документ
        И В командном интерфейсе я выбираю 'Расчет начислений' 'Перерасчет'
        Тогда открылось окно 'Перерасчет'
        И в таблице "Список" я нажимаю на кнопку с именем 'СписокСоздать'
        Тогда открылось окно 'Выбор вида операции'
        И в таблице "СписокОпераций" я перехожу к строке:
        | Значение            |
        | 'Ручной перерасчет' |
        И в таблице "СписокОпераций" я выбираю текущую строку
        Тогда открылось окно 'Перерасчет (создание)'
        И в поле 'от' я ввожу текст '01.01.2021  0:00:00'
        И из выпадающего списка "Абонент" я выбираю по строке 'Ходаковская'
        Тогда значение поля "Территориальный орган" содержит текст "Плотниковское СП Промышленновского р-на"
        Тогда значение поля "Строение" содержит текст "Плотниково п, Южный пер, Дом № 1"
        И в таблице "ДвиженияэнргОбъемНачислений" я нажимаю на кнопку с именем 'ДвиженияэнргОбъемНачисленийДобавить'
        И в таблице "ДвиженияэнргОбъемНачислений" в поле 'Расчетный период' я ввожу текст '01.01.2021'
        И в таблице "ДвиженияэнргОбъемНачислений" из выпадающего списка с именем "ДвиженияэнргОбъемНачисленийТочкаУчета" я выбираю по строке 'узел_Отопление'
        И в таблице "ДвиженияэнргОбъемНачислений" поле "ДвиженияэнргОбъемНачисленийУслуга" имеет значение "Отопление"
        И в таблице "ДвиженияэнргОбъемНачислений" поле "ДвиженияэнргОбъемНачисленийПоставщик" имеет значение "ОАО СКЭК"
        И в таблице "ДвиженияэнргОбъемНачислений" поле "ДвиженияэнргОбъемНачисленийНаправлениеИспользованияТУ" имеет значение "Основное направление"
        И в таблице "ДвиженияэнргОбъемНачислений" поле "Значение тарифа" имеет значение "1 046,920"
        И в таблице "ДвиженияэнргОбъемНачислений" поле "Значение тарифа РЭК" имеет значение "3 907,09"
        И в таблице "ДвиженияэнргОбъемНачислений" поле "Тарифная группа" имеет значение "население ЧС"
        И в таблице "ДвиженияэнргОбъемНачислений" я нажимаю кнопку выбора у реквизита "Способ начисления"
        И в таблице "ДвиженияэнргОбъемНачислений" из выпадающего списка с именем "ДвиженияэнргОбъемНачисленийСпособНачисления" я выбираю по строке 'Разовое начисления'
        И в таблице "ДвиженияэнргОбъемНачислений" в поле 'Объем услуги' я ввожу текст '0,400000'
        И в таблице "ДвиженияэнргОбъемНачислений" поле "Сумма" имеет значение "418,77"
        И в таблице "ДвиженияэнргОбъемНачислений" в поле 'Объем потребленный' я ввожу текст '0,400000'
    И я записываю документ
        И я нажимаю на кнопку 'Записать и закрыть'
        И я жду закрытия окна 'Перерасчет (создание) *' в течение 20 секунд  


