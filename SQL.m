# Из каких подмножеств состоит SQL?
DDL (Data Definition Language, язык описания данных) — позволяет выполнять различные операции с базой данных, такие как 
CREATE (создание), ALTER (изменение) и DROP (удаление объектов).

DML (Data Manipulation Language, язык управления данными) — позволяет получать доступ к данным и 
манипулировать ими, например, вставлять, обновлять, удалять и извлекать данные из базы данных.

DCL (Data Control Language, язык контролирования данных) — позволяет контролировать доступ 
к базе данных. Пример — GRANT (предоставить права), REVOKE (отозвать права).

# В чем разница между операторами DELETE и TRUNCATE?
DELETE	Используется для удаления строки в таблице	
TRUNCATE Используется для удаления всех строк из таблицы
DELETE Вы можете восстановить данные после удаления	
TRUNCATE Вы не можете восстановить данные (прим. перевод.: операции логируются по разному, 
в SQL Server есть возможность сделать откат) транзакции)
DELETE DML-команда	
TRUNCATE DDL-команда
DELETE Медленнее, чем оператор TRUNCATE	Быстрее

# В чем разница между командами DROP и TRUNCATE?
Команда DROP удаляет саму таблицу, и нельзя сделать Rollback команды, тогда как 
команда TRUNCATE удаляет все строки из таблицы 
(в SQL Server Rollback нормально отработает и откатит DROP).

# БД?
Данные, хранящиеся в базе данных, могут быть изменены, извлечены и удалены. 
Они могут быть любых типов, таких как строки, числа, изображения и т. д.

Существует два типа СУБД:
*Реляционная система управления базами данных: данные хранятся в отношениях (таблицах). Пример — MySQL*.
*Нереляционная система управления базами данных: не существует понятия отношений, кортежей и атрибутов. Пример — Mongo*.

# Что подразумевается под таблицей и полем в SQL?
Таблица — организованный набор данных в виде строк и столбцов.  Таблица: Student_Information
Поле — это столбцы в таблице.                                   Поле: Stu_Id, Stu_Name, Stu_Marks  

# Что такое соединения в SQL?
Для соединения строк из двух или более таблиц на основе связанного между ними столбца 
используется оператор JOIN. 
Он используется для объединения двух таблиц или получения данных оттуда. 

В SQL есть 4 типа соединения:
Inner Join (Внутреннее соединение)
Right Join (Правое соединение)
Left Join (Левое соединение)
Full Join (Полное соединение)

# Перечислите типы соединений
Существуют различные типы соединений, которые используются для извлечения данных между таблицами. 
Принципиально они делятся на четыре типа, а именно:
Inner join (Внутреннее соединение): 
в MySQL является наиболее распространенным типом. 
Оно используется для возврата всех строк из нескольких таблиц, для которых выполняется условие соединения.

Left Join (Левое соединение): 
в MySQL используется для возврата всех строк из левой (первой) таблицы и 
только совпадающих строк из правой (второй) таблицы, для которых выполняется условие соединения.

Right Join (Правое соединение): 
в MySQL используется для возврата всех строк из правой (второй) таблицы и 
только совпадающих строк из левой (первой) таблицы, для которых выполняется условие соединения.

Full Join (Полное соединение): 
возвращает все записи, для которых есть совпадение в любой из таблиц. 
он возвращает все строки из левой таблицы и все строки из правой таблицы.

# Общая структура запроса SQL выглядит следующим образом:
SELECT ('столбцы или * для выбора всех столбцов; обязательно')
FROM ('таблица; обязательно')
WHERE ('условие/фильтрация, например, city = 'Moscow'; необязательно')
GROUP BY ('столбец, по которому хотим сгруппировать данные; необязательно')
HAVING ('условие/фильтрация на уровне сгруппированных данных; необязательно')
ORDER BY ('столбец, по которому хотим отсортировать вывод; необязательно')

Левое и правое соединения еще называют 'внешними'.
Главное их отличие от 'внутреннего' соединения в том, что 
строка из левой (для LEFT JOIN) 
или из правой таблицы (для RIGHT JOIN) 
попадет в результаты в любом случае.

SELECT
  Сотрудники.id,
  Сотрудники.Имя,
  Отделы.Наименование AS Отдел
FROM
  Сотрудники
  LEFT JOIN Отделы -- добавляем только left
    ON Сотрудники.Отдел = Отделы.id

запрос вернул все строки из левой таблицы «Сотрудники», дополнив их значениями из правой таблицы «Отделы». 
А вот строка для отдела «Администрация» не показана, т.к. для нее не нашлось совпадений слева.
-- пример для левого внешнего соединения. 

Для RIGHT JOIN будет все тоже самое, только вернутся все строки из таблицы «Отделы»

Еще один вид соединения, который осталось рассмотреть – полное внешнее соединение. 
FULL JOIN Этот вид джойна вернет все строки из всех таблиц, участвующих в соединении, 
соединив между собой те, которые подошли под условие

SELECT
  Сотрудники.id,
  Сотрудники.Имя,
  Отделы.Наименование AS Отдел
FROM
  Сотрудники
  FULL JOIN Отделы
    ON Сотрудники.Отдел = Отделы.id
id	Имя	Отдел

SELECT, FROM — обязательные элементы запроса, которые определяют выбранные столбцы, их порядок и источник данных.

Выбрать все (обозначается как звёздочка *) из таблицы Customers:
SELECT * FROM Customers

Выбрать столбцы CustomerID, CustomerName из таблицы Customers:
SELECT CustomerID, CustomerName FROM Customers

WHERE — необязательный элемент запроса, который используется, когда нужно отфильтровать данные по нужному условию. 
Очень часто внутри элемента where используются IN / NOT IN для фильтрации столбца по нескольким значениям, 
AND / OR для фильтрации таблицы по нескольким столбцам.

Фильтрация по одному условию и одному значению:
select * from Customers
WHERE City = 'London'

Фильтрация по одному условию и нескольким значениям с применением IN (включение) или NOT IN (исключение):
select * from Customers
where City IN ('London', 'Berlin')

select * from Customers
where City NOT IN ('Madrid', 'Berlin','Bern')

Фильтрация по нескольким условиям с применением AND (выполняются все условия) 
или OR (выполняется хотя бы одно условие) и нескольким значениям:
select * from Customers
where Country = 'Germany' AND City not in ('Berlin', 'Aachen') AND CustomerID > 15

select * from Customers
where City in ('London', 'Berlin') OR CustomerID > 4

GROUP BY — необязательный элемент запроса, с помощью которого можно 
задать агрегацию по нужному столбцу 
(например, если нужно узнать какое количество клиентов живет в каждом из городов).

При использовании GROUP BY обязательно:
1.	перечень столбцов, по которым делается разрез, был одинаковым внутри SELECT и внутри GROUP BY,
2.	агрегатные функции (SUM, AVG, COUNT, MAX, MIN) должны быть также указаны внутри SELECT с указанием столбца, к которому такая функция применяется.

Группировка количества клиентов по городу:
select City, count(CustomerID) from Customers
GROUP BY City

Группировка количества клиентов по стране и городу:
select Country, City, count(CustomerID) from Customers
GROUP BY Country, City

Группировка продаж по ID товара с разными агрегатными функциями: 
количество заказов с данным товаром и количество проданных штук товара:
select ProductID, COUNT(OrderID), SUM(Quantity) from OrderDetails
GROUP BY ProductID

Группировка продаж с фильтрацией исходной таблицы. 
В данном случае на выходе будет таблица с количеством клиентов по городам Германии:
select City, count(CustomerID) from Customers
WHERE Country = 'Germany'
GROUP BY City

Переименование столбца с агрегацией с помощью оператора AS. 
По умолчанию название столбца с агрегацией равно примененной агрегатной функции, 
что далее может быть не очень удобно для восприятия.
select City, count(CustomerID) AS Number_of_clients from Customers
group by City

HAVING — необязательный элемент запроса, который отвечает за фильтрацию на уровне сгруппированных данных 
(по сути, WHERE, но только на уровень выше).

Фильтрация агрегированной таблицы с количеством клиентов по городам, 
в данном случае оставляем в выгрузке только те города, в которых не менее 5 клиентов:
select City, count(CustomerID) from Customers
group by City
HAVING count(CustomerID) >= 5 

В случае с переименованным столбцом внутри HAVING можно указать как и саму агрегирующую конструкцию count(CustomerID), так и новое название столбца number_of_clients:
select City, count(CustomerID) as number_of_clients from Customers
group by City
HAVING number_of_clients >= 5
Пример запроса, содержащего WHERE и HAVING. 
В данном запросе сначала фильтруется исходная таблица по пользователям, 
рассчитывается количество клиентов по городам и остаются только те города, где количество клиентов не менее 5:
select City, count(CustomerID) as number_of_clients from Customers
WHERE CustomerName not in ('Around the Horn','Drachenblut Delikatessend')
group by City
HAVING number_of_clients >= 5

ORDER BY — необязательный элемент запроса, который отвечает за сортировку таблицы.
Простой пример сортировки по одному столбцу. 
В данном запросе осуществляется сортировка по городу, который указал клиент:
select * from Customers
ORDER BY City

Осуществлять сортировку можно и по нескольким столбцам, 
в этом случае сортировка происходит по порядку указанных столбцов:
select * from Customers
ORDER BY Country, City

По умолчанию сортировка происходит по возрастанию для чисел и в алфавитном порядке для текстовых значений. 
Если нужна обратная сортировка, то в конструкции ORDER BY после названия столбца надо добавить DESC:
select * from Customers
order by CustomerID DESC

Обратная сортировка по одному столбцу и сортировка по умолчанию по второму:
select * from Customers
order by Country DESC, City

JOIN — необязательный элемент, используется для объединения таблиц по ключу, 
который присутствует в обоих таблицах. Перед ключом ставится оператор ON.

Запрос, в котором соединяем таблицы Order и Customer по ключу CustomerID, 
при этом перед названиям столбца ключа добавляется название таблицы через точку:
select * from Orders
JOIN Customers ON Orders.CustomerID = Customers.CustomerID

Нередко может возникать ситуация, когда надо промэппить одну таблицу 
значениями из другой. В зависимости от задачи, могут использоваться разные типы присоединений. 

INNER JOIN — пересечение, RIGHT/LEFT JOIN для мэппинга одной таблицы знаениями из другой,
select * from Orders
join Customers on Orders.CustomerID = Customers.CustomerID
where Customers.CustomerID >10

Внутри всего запроса JOIN встраивается после элемента from до элемента where

Другие типы JOIN'ов можно увидеть на замечательной картинке here: 

![] https://github.com/LaraEvdokimova/-bot-alex/blob/master/JOIN.png

![Иллюстрация к проекту](https://github.com/jon/coolproject/raw/master/image/image.png)
![Image alt](https://github.com/{username}/{repository}/raw/{branch}/{path}/image.png)
{username} — ваш ник на ГитХабе;
{repository} — репозиторий где хранятся картинки;
{branch} — ветка репозитория;
{path} — путь к месту нахождения картинки.

# В чем разница между перекрестным (cross join) и естественным (natural join) соединением?
Перекрестное соединение создает перекрестное или декартово произведение двух таблиц, 
тогда как естественное соединение основано на всех столбцах, имеющих 
одинаковое имя и типы данных в обеих таблицах.

# Перечислите способы получить количество записей в таблице?
Для подсчета количества записей в таблице вы можете использовать следующие команды:
SELECT * FROM table1
SELECT COUNT(*) FROM table1
SELECT rows FROM sysindexes WHERE id = OBJECT_ID(table1) AND indid < 2

# В чем разница между типом данных CHAR и VARCHAR в SQL?
И Char, и Varchar служат символьными типами данных, 
varchar используется для строк символов переменной длины -- 
varchar(10) может хранить строку любой длины до 10, т.е. например 6, 8 или 2.
тогда как 
Char используется для строк фиксированной длины -- 
char(10) может хранить только 10 символов 
и не сможет хранить строку любой другой длины

# Что такое первичный ключ (Primary key)?
Первичный ключ — столбец или набор столбцов, которые однозначно идентифицируют каждую строку в таблице.
Однозначно идентифицирует одну строку в таблице.
Нулевые (Null) значения не допускаются.
Stu_Id ; Stu_Name -- Stu_ID является первичным ключом.

# Что такое ограничения (Constraints)?
Ограничения (constraints) используются для указания ограничения на тип данных таблицы. 
Они могут быть указаны при создании или изменении таблицы. 
Пример ограничений:
NOT NULL
CHECK
DEFAULT
UNIQUE
PRIMARY KEY
FOREIGN KEY

# В чем разница между SQL и MySQL?
SQL — стандартный язык структурированных запросов (Structured Query Language) на основе английского языка, тогда как 
MySQL — система управления базами данных. 
SQL — язык реляционной базы данных, который используется для доступа и управления данными, 
MySQL — реляционная СУБД (система управления базами данных), также как и SQL Server, Informix и т. д.

# Что такое уникальный ключ (Unique key)?
Однозначно идентифицирует одну строку в таблице.
Допустимо множество уникальных ключей в одной таблице.
Допустимы NULL-значения 
(зависит от СУБД, в SQL Server значение NULL может быть добавлено только один раз в поле с UNIQUE KEY).

# Что такое внешний ключ (Foreign key)?
Внешний ключ поддерживает ссылочную целостность, обеспечивая связь между данными в двух таблицах.
Внешний ключ в дочерней таблице ссылается на первичный ключ в родительской таблице.
Ограничение внешнего ключа предотвращает действия, которые разрушают связи между дочерней и родительской таблицами.

# Что подразумевается под целостностью данных?
Целостность данных определяет точность, а также согласованность данных, хранящихся в базе данных. 
Она также определяет ограничения целостности для обеспечения соблюдения бизнес-правил для данных, когда 
они вводятся в приложение или базу данных.

# В чем разница между кластеризованным и некластеризованным индексами в SQL?
Различия между кластеризованным и некластеризованным индексами в SQL:
Кластерный индекс используется для простого и быстрого извлечения данных из базы данных, тогда как 
чтение из некластеризованного индекса происходит относительно медленнее.

Кластеризованный индекс изменяет способ хранения записей в базе данных — 
он сортирует строки по столбцу, который установлен как кластеризованный индекс, тогда как 
в некластеризованном индексе он не меняет способ хранения, но 
создает отдельный объект внутри таблицы, который указывает на исходные строки таблицы при поиске.

Одна таблица может иметь только один кластеризованный индекс, тогда как 
некластеризованных у нее может быть много.

# Напишите SQL-запрос для отображения текущей даты.
В SQL есть встроенная функция GetDate (), 
которая помогает возвращать текущий timestamp/дату.

# Что вы подразумеваете под денормализацией?
Денормализация — техника, которая используется для преобразования из высших к низшим нормальным формам. 
Она помогает разработчикам баз данных повысить производительность всей инфраструктуры, поскольку вносит избыточность в таблицу. 
Она добавляет избыточные данные в таблицу, учитывая частые запросы к базе данных, 
которые объединяют данные из разных таблиц в одну таблицу.

# Сущности
человек, место или объект в реальном мире, данные о которых могут храниться в базе данных. 
В таблицах хранятся данные, которые представляют один тип сущности. 
Например — база данных банка имеет таблицу клиентов для хранения информации о клиентах. 
Таблица клиентов хранит эту информацию в виде набора атрибутов (столбцы в таблице) для каждого клиента.

# Отношения
отношения или связи между сущностями, которые имеют какое-то отношение друг к другу. 
Например — имя клиента связано с номером учетной записи клиента и контактной информацией, 
которая может быть в той же таблице. Также могут быть отношения между отдельными таблицами (например, клиент к счетам).

# Что такое индекс?
Индексы относятся к методу настройки производительности, 
позволяющему быстрее извлекать записи из таблицы. 
Индекс создает отдельную структуру для индексируемого поля 
и, следовательно, позволяет быстрее получать данные.

# Опишите различные типы индексов
Есть три типа индексов, а именно:
Уникальный индекс (Unique Index): 
этот индекс не позволяет полю иметь повторяющиеся значения, если столбец индексируется уникально. 
Если первичный ключ определен, уникальный индекс может быть применен автоматически.
Кластеризованный индекс (Clustered Index): этот индекс меняет физический порядок таблицы 
и выполняет поиск на основе значений ключа. 
Каждая таблица может иметь только один кластеризованный индекс.
Некластеризованный индекс (Non-Clustered Index): 
не изменяет физический порядок таблицы и поддерживает логический порядок данных. 
Каждая таблица может иметь много некластеризованных индексов.

# Что такое нормализация и каковы ее преимущества?
Нормализация — процесс организации данных, 
цель которого избежать дублирования и избыточности. 

Некоторые из преимуществ:
Лучшая организация базы данных
Больше таблиц с небольшими строками
Эффективный доступ к данным
Большая гибкость для запросов
Быстрый поиск информации
Проще реализовать безопасность данных
Позволяет легко модифицировать
Сокращение избыточных и дублирующихся данных
Более компактная база данных
Обеспечивает согласованность данных после внесения изменений

# Объясните различные типы нормализации
Существует много последовательных уровней нормализации. 
Это так называемые нормальные формы. 
Каждая последующая нормальная форма включает предыдущую. 
Первых трех нормальных форм обычно достаточно.

Первая нормальная форма (1NF) — нет повторяющихся групп в строках
Вторая нормальная форма (2NF) — каждое неключевое (поддерживающее) значение столбца зависит от всего первичного ключа
Третья нормальная форма (3NF) — каждое неключевое значение зависит только от первичного ключа и не имеет 
зависимости от другого неключевого значения столбца

# Что такое свойство ACID в базе данных?
ACID означает атомарность (Atomicity), 
согласованность (Consistency), 
изолированность (Isolation), 
долговечность (Durability). 
Он используется для обеспечения надежной обработки транзакций данных в системе базы данных.

Атомарность. 
Гарантирует, что транзакция будет полностью выполнена или потерпит неудачу, 
где транзакция представляет одну логическую операцию данных. 
Это означает, что при сбое одной части любой транзакции происходит сбой 
всей транзакции и состояние базы данных остается неизменным.

Согласованность. 
Гарантирует, что данные должны соответствовать всем правилам валидации. 
Проще говоря, вы можете сказать, что ваша транзакция никогда не оставит 
вашу базу данных в недопустимом состоянии.

Изолированность. Основной целью изолированности является 
контроль механизма параллельного изменения данных.

Долговечность. 
Долговечность подразумевает, что если транзакция 
была подтверждена (COMMIT), произошедшие в рамках транзакции 
изменения сохранятся независимо от того, что может встать 
у них на пути (например, потеря питания, сбой или ошибки любого рода).

# Что вы подразумеваете под «триггером» в SQL?
Триггер в SQL — особый тип хранимых процедур, которые 
предназначены для автоматического выполнения 
в момент или после изменения данных. 
Это позволяет вам выполнить пакет кода, 
когда вставка, обновление или любой другой запрос 
выполняется к определенной таблице.

# Какие операторы доступны в SQL?
В SQL доступно три типа оператора, а именно:
Арифметические Операторы
Логические Операторы
Операторы сравнения

# Совпадают ли значения NULL со значениями нуля или пробела?
Значение NULL вовсе не равно нулю или пробелу. 
Значение NULL представляет значение, которое недоступно, неизвестно, присвоено или неприменимо, 
тогда как ноль — это число, а пробел — символ.

# Что такое подзапрос в SQL?
Подзапрос — это запрос внутри другого запроса, в котором 
определен запрос для извлечения данных или информации из базы данных. 
В подзапросе внешний запрос называется основным запросом, тогда как 
внутренний запрос называется подзапросом. 
Подзапросы всегда выполняются первыми, а результат подзапроса 
передается в основной запрос. 
Он может быть вложен в SELECT, UPDATE или любой другой запрос. 
Подзапрос также может использовать любые операторы сравнения, такие как >, < или =.

# Какие бывают типы подзапросов?
Существует два типа подзапросов, а именно: 
коррелированные и некоррелированные.

Коррелированный подзапрос: 
это запрос, который выбирает данные из таблицы со ссылкой на внешний запрос. 
Он не считается независимым запросом, поскольку ссылается на другую таблицу или столбец в таблице.
Некоррелированный подзапрос: 
этот запрос является независимым запросом, в котором 
выходные данные подзапроса подставляются в основной запрос.
