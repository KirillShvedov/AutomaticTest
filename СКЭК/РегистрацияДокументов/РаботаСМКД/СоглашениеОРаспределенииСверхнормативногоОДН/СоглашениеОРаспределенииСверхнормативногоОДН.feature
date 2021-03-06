language: ru
@tree
@ExportScenarios
Функционал: Проведение документа Обходной лист
 Как <Роль>
    Я хочу <проверить документ Обходной лист>
    Чтобы <бизнес-эффект>
"https://trello.com/c/vO8FoQue"
Контекст:
    Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: <СоглашениеОРаспределенииСверхнормативногоОДН>
    И я подготавливаю тестовые данные
        И я загружаю макет "СоглашениеОРаспределенииСверхнормативногоОДН.mxl"
    И я перепровожу загруженные данные
        И В командном интерфейсе я выбираю 'Работа с МКД' 'Операции с МКД'
        И в таблице 'Список' я выделяю все строки
        И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюПровести' на элементе формы с именем "Список"
    И я создаю новый документ
        И В командном интерфейсе я выбираю 'Работа с МКД' 'Соглашение о распределении сверхнормативного ОДН'
        Тогда открылось окно 'Соглашение о распределении сверхнормативного ОДН'
        И я нажимаю на кнопку с именем 'ФормаСоздать'
        Тогда открылось окно 'Соглашение о распределении сверхнормативного ОДН (создание)'
        И из выпадающего списка "МКД" я выбираю по строке '652420, Кемеровская область - Кузбасс, Березовский г., Ленина пр-кт, дом № 8'
        Тогда открылось окно 'Соглашение о распределении сверхнормативного ОДН (создание) *'
        И в таблице "Услуги" я перехожу к строке:
            | N | Распределять полностью | Услуга    |
            | 1 | Нет                    | Отопление |
        И в таблице "Услуги" я активизирую поле "Распределять полностью"
        И в таблице "Услуги" я изменяю флаг 'Распределять полностью'
        И в таблице "Услуги" я завершаю редактирование строки
    И я провожу документ
        И я нажимаю на кнопку 'Провести и закрыть'
        И я жду закрытия окна 'Соглашение о распределении сверхнормативного ОДН (создание) *' в течение 20 секунд

