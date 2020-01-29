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
        И я загружаю макет "РегистрацияДокументов\РаботаСАбонентамиУзлы\ИзменениеКоличестваПрописанных\ИсходныеДанные.mxl"
    И я создаю новый документ 
        И В командном интерфейсе я выбираю 'Физические лица' 'Изменение количества прописанных'
        Тогда открылось окно 'Изменение количества прописанных'
        И в таблице "Список" я нажимаю на кнопку с именем 'СписокСоздать'
        Тогда открылось окно 'Изменение количества прописанных (создание)'
    И я заполняю форму открывшегося документа     
        И из выпадающего списка "Абонент" я выбираю точное значение 'Астраханцев Вячеслав Владимирович'
        Тогда открылось окно 'Изменение количества прописанных (создание) *'
        И в поле 'Количество' я ввожу текст '4'
    И я провожу документ     
        И я нажимаю на кнопку 'Провести и закрыть'
        И я жду закрытия окна 'Изменение количества прописанных (создание) *' в течение 20 секунд
