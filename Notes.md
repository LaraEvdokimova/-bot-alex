*Что такое ООП?*
Объектно-ориентированное программирование (ООП) — методология программирования, основанная на представлении программы в виде совокупности объектов, 
каждый из которых является экземпляром определенного класса, 
классы образуют иерархию наследования.

объектно-ориентированное программирование использует в качестве основных логических конструктивных элементов объекты, а не алгоритмы;
'каждый объект является экземпляром определенного класса'
'классы образуют иерархии'

*Design pattern Singleton*

Singleton pattern is one of the simplest design patterns in Java.
This type of design pattern comes under creational pattern as this pattern provides one of the best ways to create an object.
This pattern involves a single class which is responsible to create an object = only single object gets created.
This class provides a way to access its only object which can be accessed directly.

We are going to create a SingleObject class.
SingleObject class have its constructor as private and have a static instance of itself.
SingleObject class provides a static method to get its static instance to outside world.

Step 1

Create a Singleton Class.

SingleObject.java

public class SingleObject {

   //create an object of SingleObject
   private static SingleObject instance = new SingleObject();

   //make the constructor private so that this class cannot be
   //instantiated
   private SingleObject(){}

   //Get the only object available
   public static SingleObject getInstance(){
      return instance;
   }

   public void showMessage(){
      System.out.println("Hello World!");
   }
}

Step 2

Get the only object from the singleton class.

SingletonPatternDemo.java

public class SingletonPatternDemo {
   public static void main(String[] args) {

      //illegal construct
      //Compile Time Error: The constructor SingleObject() is not visible
      //SingleObject object = new SingleObject();

      //Get the only object available
      SingleObject object = SingleObject.getInstance();

      //show the message
      object.showMessage();
   }
}
Step 3
Verify the output.

Hello World!

*Selenium*
Это инструмент для автоматизации действий веб-браузера. 
В большинстве случаев используется для тестирования Web-приложений, но этим не ограничивается. 
В частности, он может быть использован для решения рутинных задач администрирования сайта или 
регулярного получения данных из различных источников.

Selenium 2 Webdriver — в пакете инструментов Selenium для автоматизации. 
По сравнению с Selenium RC, Webdriver использует совершенно иной способ взаимодействия с браузерами. 
Он напрямую вызывает команды браузера, используя родной для каждого конкретного браузера API. 
Как совершаются эти вызовы и какие функции они выполняют зависит от конкретного браузера. 
В то же время Selenium RC внедрял код JavaScript в браузер при запуске и использовал его для управления веб-приложением. 

Тест в Selenium 3.x взаимодействует с браузером в конечном узле (end node) по протоколу JSON wire 
в локальной конечной точке (local end). 
Такой подход требует кодирования и декодирования запросов API.

Test - Selenium Driver/Node - Grid/Node - Driver/Node - Browser/Node

Selenium 4 WebDriver будет полностью стандартизирован W3C. 
API WebDriver стало актуальным и за пределами Selenium и используется в различных инструментах для автоматизации. 
Например, на нем основываются такие мобильные инструменты для тестирования, как Appium и iOS Driver. 
Стандарт W3C также отвечает за совместимость между различными программными приложениями с WebDriver API.

*Selenium Java*

Hello World - просто открыть страничку и заассертить там что-то

import org.junit.BeforeClass

public class Example {
    BeforeClass public static void onlyOnce() {
   // put init logic here
  }
}

Или
@ Before
public void setUp() throws Exception {
  // put init logic here
}

чтобы откатить что-то или высвободить ресурсы можно добавить:

@ After
public void release() throws Exception {
  // put release logic here
}

*Gradle*
Система автоматической сборки, построенная на принципах Apache Ant и Apache Maven, но предоставляющая DSL на языках Groovy и Kotlin вместо традиционной XML-образной формы представления конфигурации проекта.
Платформа: Java Virtual Machine

*DSL*
Цифровая абонентская линия (DSL) — это технология высокоскоростного Интернета, которая позволяет передавать цифровые данные по проводам телефонной сети. 
DSL не мешает телефонной линии; одна и та же линия может использоваться как для Интернет, так и для обычных телефонных служб. 
Скорость загрузки DSL колеблется между 384 Кбит/с и 20 Мбит/с. 
Самой популярной реализацией DSL сегодня является Асимметричная цифровая абонентская линия (ADSL).

*Jenkins*
Jenkins – инструмент автоматизации с открытым исходным кодом, написанный на Java, с плагинами, созданными для непрерывной интеграции.
Jenkins будет установлен на сервере, где будет происходить центральная сборка.
Jenkins используется для непрерывной сборки и тестирования программных проектов, что облегчает разработчикам интеграцию изменений в проект и облегчает пользователям получение новой сборки.
Платформа: Java Virtual Machine

*REST-Assured*
REST Assured — DSL для тестирования REST-сервисов, который встраивается в тесты на Java.

*Akita* -- BDD framework combined Cucumber + Rest-assured for Automated Testing.

*Cucumber* 
Cucumber-проект состоит из двух частей – это текстовые файлы с описанием сценариев (*.feature) и файлы с реализацией шагов на языке программирования (в нашем случае — файлы *.java). 
Для создания проекта будем использовать систему автоматизации сборки проектов Apache Maven. 
Первым делом добавим cucumber в зависимости Maven.

*SOAP Rest*
SOAP UI
SOAP -- Simple Object Access Protocol — простой протокол доступа к объектам/протокол обмена структурированными сообщениями в распределённой вычислительной среде. 
Первоначально SOAP предназначался в основном для реализации удалённого вызова процедур (RPC). 
Сейчас протокол используется для обмена произвольными сообщениями в формате XML, а не только для вызова процедур. 
Официальная спецификация последней версии 1.2 протокола никак не расшифровывает название SOAP. 
SOAP является расширением протокола XML-RPC.
SOAP может использоваться с любым протоколом прикладного уровня: SMTP, FTP, HTTP, HTTPS и др. 
Однако его взаимодействие с каждым из этих протоколов имеет свои особенности, которые должны быть определены отдельно. 
Чаще всего SOAP используется поверх HTTP.
SOAP является одним из стандартов, на которых базируются технологии веб-служб.

*Сообщение SOAP выглядит так*:
Envelope – Корневой элемент, который определяет сообщение и пространство имен, использованное в документе.
Header – Содержит атрибуты сообщения, например: информация о безопасности или о сетевой маршрутизации.
Body – Содержит сообщение, которым обмениваются приложения. 
Fault – Необязательный элемент, который предоставляет информацию об ошибках, которые произошли при обработке сообщений. 

*Пример SOAP-запроса на сервер интернет-магазина*:
<?xml version="1.0" encoding="utf-8"?>
<soap:Envelope xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:soap="http://schemas.xmlsoap.org/soap/envelope/">
   <soap:Body>
     <getProductDetails xmlns="http://warehouse.example.com/ws">
       <productID>12345</productID>
     </getProductDetails>
   </soap:Body>
</soap:Envelope>

*Пример ответа*:
<?xml version="1.0" encoding="utf-8"?>
<soap:Envelope xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:soap="http://schemas.xmlsoap.org/soap/envelope/">
   <soap:Body>
     <getProductDetailsResponse xmlns="http://warehouse.example.com/ws">
       <getProductDetailsResult>
         <productID>12345</productID>
         <productName>Стакан граненый</productName>
         <description>Стакан граненый. 250 мл.</description>
         <price>9.95</price>
         <currency>
             <code>840</code>
             <alpha3>USD</alpha3>
             <sign>$</sign>
             <name>US dollar</name>
             <accuracy>2</accuracy>
         </currency>
         <inStock>true</inStock>
       </getProductDetailsResult>
     </getProductDetailsResponse>
   </soap:Body>
</soap:Envelope>

Использование SOAP для передачи сообщений увеличивает их объём и снижает скорость обработки. 
В системах, где скорость важна, чаще используется пересылка XML-документов через HTTP напрямую, где параметры запроса передаются как обычные HTTP-параметры.

*REST*
REST -- Representational State Transfer — «передача состояния представления»/ архитектурный стиль взаимодействия компонентов распределённого приложения в сети. 
REST представляет собой согласованный набор ограничений, учитываемых при проектировании распределённой гипермедиа-системы. 
В определённых случаях (интернет-магазины, поисковые системы, прочие системы, основанные на данных) это приводит к повышению производительности и упрощению архитектуры. 
компоненты в REST взаимодействуют наподобие взаимодействия клиентов и серверов во Всемирной паутине. 
REST является альтернативой RPC.
В сети Интернет вызов удалённой процедуры может представлять собой обычный HTTP-запрос 
(обычно «GET» или «POST»; такой запрос называют «REST-запрос»), а 
необходимые данные передаются в качестве параметров запроса.
Для веб-служб, построенных с учётом REST (то есть не нарушающих накладываемых им ограничений), 
применяют термин «RESTful».

В отличие от веб-сервисов (веб-служб) на основе SOAP, не существует «официального» стандарта для RESTful веб-API. 
Дело в том, что REST является архитектурным стилем, в то время как SOAP является протоколом. 
Несмотря на то, что REST не является стандартом сам по себе, большинство RESTful-реализаций используют такие стандарты, как HTTP, URL, JSON и XML.

REST примерно следующее:
•	Все является ресурсами с уникальным идентификатором (URL)
•	Все операции клиента с сервером stateless, т.е. сервер не должен хранить вообще никакой информации о клиенте – никакой сессии
•	Все запросы можно поделить на 4 типа в соответствии с CRUD -- Create, read, update and delete, причем каждому типу сопоставляется HTTP метод – Post, Get, Put и Delete
•	Вся логика крутится вокруг ресурсов, а не операций

REST (REpresentational State Transfer) в качестве названия группы принципов построения веб-приложений. 
REST можно применять и в других сетях с другими протоколами. 
REST описывает принципы взаимодействия клиента и сервера, 
основанные на понятиях «ресурса» и «глагола» (можно понимать их как подлежащее и сказуемое). 
В случае HTTP ресурс определяется своим UrI, а глагол — это HTTP-метод.

REST предлагает отказаться от использования одинаковых UrI для разных ресурсов 
(то есть адреса двух разных статей вроде /index.php?article_id=10 и /index.php?article_id=20 — это не REST-way) 
и использовать разные HTTP-методы для разных действий. 

То есть веб-приложение, написанное с использованием REST подхода будет удалять ресурс при обращении к нему с HTTP-методом DELETE (разумеется, это не значит, что надо давать возможность удалить всё и вся, но любой запрос на удаление в приложении должен использовать HTTP-метод DELETE).

REST дает программистам возможность писать стандартизованные и чуть более красивые веб-приложения, чем раньше. 
Используя REST, UrI для добавления нового юзера будет не /user.php?action=create (метод GET/POST), а просто /user.php (метод строго POST).

Интерфейс servlet, класс HttpServlet: пакеты сервлетов определяют два абстрактных класса, которые реализуют интерфейс Servlet: 
класс GenericServlet (из пакета javax.servlet) и класс HttpServlet (из пакета javax.servlet.http). 
Эти классы предоставляют реализацию по умолчанию для всех методов интерфейса Servlet. 
Большинство разработчиков используют либо класс GenericServlet, либо класс HttpServlet, и замещают некоторые или все методы.
Спецификация HTML не позволяет создавать формы, отправляющие данные иначе, чем через GET или POST.

В итоге, совместив имеющуюся спецификацию HTTP и REST-подход наконец-то обретают смысл различные HTTP-методы. 
GET — возвращает ресурс, 
POST — создает новый, 
PUT — обновляет существующий, 
DELETE — удаляет.

*HTTP*
HTTP 
•	Этот протокол описывает взаимодействие между двумя компьютерами (клиентом и сервером), построенное на базе сообщений, называемых запрос (Request) и ответ (Response). 
Каждое сообщение состоит из трех частей: стартовая строка, заголовки и тело. 
При этом обязательной является только стартовая строка.
•	METHOD UrI HTTP/VERSION, 
где METHOD — это как раз метод HTTP-запроса, 
UrI — идентификатор ресурса, VERSION — версия протокола (на данный момент актуальна версия 1.1).
Заголовки — это набор пар имя-значение, разделенных двоеточием. 
В заголовках передается различная служебная информация: кодировка сообщения, название и версия браузера, адрес, с которого пришел клиент (Referrer) и так далее.
Тело сообщения — это, собственно, передаваемые данные. 
В ответе передаваемыми данными, как правило, является html-страница, которую запросил браузер, а в запросе, например, в теле сообщения передается содержимое файлов, загружаемых на сервер. 
Но как правило, тело сообщения в запросе вообще отсутствует.
Пример HTTP-взаимодействия

*Запрос*:
GET /index.php HTTP/1.1
Host: example.com
User-Agent: Mozilla/5.0 (X11; U; Linux i686; ru; rv:1.9b5) Gecko/2008050509 Firefox/3.0b5
Accept: text/html
Connection: close

Первая строка — это строка запроса, остальные — заголовки; тело сообщения отсутствует

*Ответ*:
HTTP/1.0 200 OK
Server: nginx/0.6.31
Content-Language: ru
Content-Type: text/html; charset=utf-8
Content-Length: 1234
Connection: close

... САМА HTML-СТРАНИЦА ...

•	Итак, есть браузер и есть Web-сервер. 
•	Инициатором обмена данными всегда выступает браузер. 
•	Web-сервер никому, никогда просто так ничего не пошлет, чтобы он что-нибудь отправил браузеру — надо, чтобы браузер об этом попросил. 

