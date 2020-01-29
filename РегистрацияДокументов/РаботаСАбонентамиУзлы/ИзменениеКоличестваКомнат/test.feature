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
        И я загружаю макет "РегистрацияДокументов\РаботаСАбонентамиУзлы\ИзменениеКоличестваКомнат\ИсходныеДанные.mxl"
    И я создаю новый документ     
        И В командном интерфейсе я выбираю 'Физические лица' 'Изменение количества комнат'
        Тогда открылось окно 'Изменение количества комнат'
        И в таблице "Список" я нажимаю на кнопку с именем 'СписокСоздать'
        Тогда открылось окно 'Установить количество комнат: Изменение количества комнат (создание)'
    И я заполняю форму открывшегося документа     
        И из выпадающего списка "Абонент" я выбираю точное значение 'Астраханцев Вячеслав Владимирович'
        Тогда открылось окно 'Установить количество комнат: Изменение количества комнат (создание) *'
        И в поле 'Количество' я ввожу текст '8'
    И я провожу документ     
        И я нажимаю на кнопку 'Провести и закрыть'
        И я жду закрытия окна 'Установить количество комнат: Изменение количества комнат (создание) *' в течение 20 секунд
