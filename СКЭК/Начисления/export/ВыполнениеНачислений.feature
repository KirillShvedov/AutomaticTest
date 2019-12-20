#language: ru
@ExportScenarios
Функционал: Проверка того что начисления выполнились

Как <Роль>
Я хочу чтобы начисления выполнялись без ошибок
Чтобы <бизнес-эффект>

Сценарий: Я запускаю выполнение начислений и проверяю что все выполнилось без ошибок
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