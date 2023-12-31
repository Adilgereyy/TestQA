﻿#language: ru

@tree

Функционал: Добавление услуги в заказ 
Как менеджер по закупкам я хочу добавить услугу в заказ и выбрать количество услуги

Контекст:
Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий
Сценарий: Добавление услуги в заказ 
И В командном интерфейсе я выбираю 'Продажи' 'Документы продаж'
Тогда открылось окно 'Документы продаж'
И я нажимаю на кнопку с именем 'ФормаСоздатьПоПараметруЗаказ'
Тогда открылось окно 'Заказ (создание)'
И из выпадающего списка с именем "Организация" я выбираю точное значение 'ООО "1000 мелочей"'
И я нажимаю кнопку выбора у поля с именем "Покупатель"
Тогда открылось окно 'Контрагенты'
И в таблице "Список" я перехожу к строке:
	| 'Код'       | 'Наименование'    |
	| '000000015' | 'Магазин "Обувь"' |
И в таблице "Список" я выбираю текущую строку
Тогда открылось окно 'Заказ (создание) *'
И из выпадающего списка с именем "Склад" я выбираю точное значение 'Малый'
И в таблице "Товары" я нажимаю на кнопку с именем 'ТоварыДобавить'
И в таблице "Товары" я нажимаю кнопку выбора у реквизита с именем "ТоварыТовар"
Тогда открылось окно 'Товары'
И в таблице "Список" я перехожу к строке:
	| 'Код'       | 'Наименование' |
	| '000000036' | 'Услуги'       |
И в таблице  "Список" я перехожу на один уровень вниз
И в таблице "Список" я выбираю текущую строку
Тогда таблица "Товары" стала равной:
	| 'Товар'    | 'Цена'   | 'Количество' | 'Сумма'  |
	| 'Доставка' | '300,00' | ''           | '300,00' |
И в таблице "Товары" в поле с именем 'ТоварыКоличество' я ввожу текст "1"
//




