﻿//начало текста модуля

///////////////////////////////////////////////////
//Служебные функции и процедуры
///////////////////////////////////////////////////

&НаКлиенте
// контекст фреймворка Vanessa-Behavior
Перем Ванесса;
 
&НаКлиенте
// Структура, в которой хранится состояние сценария между выполнением шагов. Очищается перед выполнением каждого сценария.
Перем Контекст Экспорт;
 
&НаКлиенте
// Структура, в которой можно хранить служебные данные между запусками сценариев. Существует, пока открыта форма Vanessa-Behavior.
Перем КонтекстСохраняемый Экспорт;

&НаКлиенте
// Функция экспортирует список шагов, которые реализованы в данной внешней обработке.
Функция ПолучитьСписокТестов(КонтекстФреймворкаBDD) Экспорт
	Ванесса = КонтекстФреймворкаBDD;
	
	ВсеТесты = Новый Массив;

	//описание параметров
	//Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,Снипет,ИмяПроцедуры,ПредставлениеТеста,Транзакция,Параметр);

	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"КадруЛетИВГодуМесяцев(Парам01,Парам02)","КадруЛетИВГодуМесяцев","Допустим кадру 20 лет и в году 12 месяцев");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"Кадру5ЛетИВГодуМесяцев(Парам01,Парам02)","Кадру5ЛетИВГодуМесяцев","Допустим кадру 30,5 лет и в году 12 месяцев");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"КадруЛет(Парам01)","КадруЛет","Допустим кадру 20 лет");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"РезультатУмноженияБудетРавен(Парам01)","РезультатУмноженияБудетРавен","Тогда результат умножения будет равен 240");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"Кадру5Лет(Парам01)","Кадру5Лет","Допустим кадру 30,5 лет");

	Возврат ВсеТесты;
КонецФункции
	
&НаСервере
// Служебная функция.
Функция ПолучитьМакетСервер(ИмяМакета)
	ОбъектСервер = РеквизитФормыВЗначение("Объект");
	Возврат ОбъектСервер.ПолучитьМакет(ИмяМакета);
КонецФункции
	
&НаКлиенте
// Служебная функция для подключения библиотеки создания fixtures.
Функция ПолучитьМакетОбработки(ИмяМакета) Экспорт
	Возврат ПолучитьМакетСервер(ИмяМакета);
КонецФункции



///////////////////////////////////////////////////
//Работа со сценариями
///////////////////////////////////////////////////

&НаКлиенте
// Процедура выполняется перед началом каждого сценария
Процедура ПередНачаломСценария() Экспорт
	
КонецПроцедуры

&НаКлиенте
// Процедура выполняется перед окончанием каждого сценария
Процедура ПередОкончаниемСценария() Экспорт
	
КонецПроцедуры



///////////////////////////////////////////////////
//Реализация шагов
///////////////////////////////////////////////////

&НаКлиенте
//Допустим кадру 20 лет и в году 12 месяцев
//@КадруЛетИВГодуМесяцев(Парам01,Парам02)
Процедура КадруЛетИВГодуМесяцев(Парам01,Парам02) Экспорт
	//Ванесса.ПосмотретьЗначение(Парам01,Истина);
	ВызватьИсключение "Не реализовано.";
КонецПроцедуры

&НаКлиенте
//Тогда результат умножения будет равен 240
//@РезультатУмноженияБудетРавен(Парам01)
Процедура РезультатУмноженияБудетРавен(Парам01) Экспорт
	//Ванесса.ПосмотретьЗначение(Парам01,Истина);
	ВызватьИсключение "Не реализовано.";
КонецПроцедуры

&НаКлиенте
//Допустим кадру 30,5 лет и в году 12 месяцев
//@Кадру5ЛетИВГодуМесяцев(Парам01,Парам02)
Процедура Кадру5ЛетИВГодуМесяцев(Парам01,Парам02) Экспорт
	//Ванесса.ПосмотретьЗначение(Парам01,Истина);
	ВызватьИсключение "Не реализовано.";
КонецПроцедуры

//окончание текста модуля

&НаКлиенте
//Допустим кадру 20 лет
//@КадруЛет(Парам01)
Процедура КадруЛет(Парам01) Экспорт
	//Ванесса.ПосмотретьЗначение(Парам01,Истина);
	ВызватьИсключение "Не реализовано.";
КонецПроцедуры

&НаКлиенте
//Допустим кадру 30,5 лет
//@Кадру5Лет(Парам01)
Процедура Кадру5Лет(Парам01) Экспорт
	//Ванесса.ПосмотретьЗначение(Парам01,Истина);
	ВызватьИсключение "Не реализовано.";
КонецПроцедуры
