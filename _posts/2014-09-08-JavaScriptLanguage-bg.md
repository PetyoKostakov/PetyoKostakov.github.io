---
title: JavaScript Lanuguage BG
author: Petyo Kostakov
layout: post
---

Може да се нарече най - популярният език за програмиране от гледна точка на това, че всеки компютър притежава интерпетатор на JavaScript а.к.а. browser. В днешно време JavaScript може да се изполва за програмиране на голям брой платворми. Може да се пише server-side на .NET или Node.js, десктоп приложения, които вървят на всяка операционна система, мобилни приложения, скриптове за команден ред и екстеншъни за Chrome, Firefox и дори Photoshop.

JavaScript се дели на две части - Native и Host. Native частта е изцяло дефинирана от ECMASript стандарта. Host частта зависи от това какъв е хоста на JavaScript. В най - честия случай хоста е уеб браузъра, който е разделен на DOM(Document Object Model) и BOM(Browser Object Model).

ЕCMA-262(ECMAScript стандарта) определя:
➤ Syntax
➤ Types
➤ Statements
➤ Keywords
➤ Reserved words
➤ Operators
➤ Objects

DOM - за DOM може да се отдели отделна статия но накратко можем да кажем, че възниква, като стандарт в следствие на браузър войната между ИЕ и Netscape. Стандарта е API написано изцяло за JavaScript

BOM прави възможно:
- отварянето на нови прозорци
- местене, променяне на размера и затваряне на прозрци
- navigator обект, които дава детайлна информация за браузъра
- location обект, който дава детайлна информация за зарежданата страница
- screen obect, който дава детайлна информация за потребителската резолюция
- поддръжка на cookies


Най - общо казано JavaScript e:
- high-level - език от високо ниво т.е. проложно ниво(application level) други нива, които съществуват са операционни(OS level) и хардуерно ниво (hardware level).
- dynamic - динамичен е защото по време на изпълнението определя какъв е типът на променливите, за разлика от статично компилируемите езици, като Java, C#, C++ където трябва предварително да определим типът на променливите
- untyped - в него няма явни/изрични типове като string, double, int, booblean
- interpred - всички скриптови езици, какъвто е и JavaScript са интерпретирани т.е. те не се компилират за да се сведът предварително до хардуерни инструкции и байт код а интерпретатор транслира динамично кода към машинни инструкции
- async
- expressive - лесен за писане и разбиране
-event based/event driven
- поддържа ООП(object-oriented) парадигма
- поддържа функционална(functional programming) парадигма

Базиран на езици като:
- Self - prototype-based inheritance
- Lisp - Scope and closure, lambda functions(анонимни функции)
- Scheme - first-class functions(citizens) функциите са променливи, модат да бъдат подавани, като аргументи и да бъдат връщани от други функции,
"It is Lisp in C’s clothing." - Douglas Crockford

История на JavaScript:
JavaScript възниква, с цел валидация на форми. Тъйкато в годините, когато е създаден 1995г. интернетът е бил изключилтено бавен валидацията на форма е била доста неприятен процес особено, когато не е успешна. Език като JavaScript щал да бъде способен да направи валидацията clientside и когато информацията е вече валидна да я изпрати успешно към сървъра. Microsoft също имплементирали своя версия на езика наречена VBScript или JScript. И заради сблъсъка на интереси от толкова много търговски марки(например Netscape, Sun, Microsoft, Borland, NOMBAS) и имена на езика той бил стандартизиран, като "ECMAScript". Името ECMA идва от стандартизационната организация European Computer Manufacturers Association.

ECMAScript Editions:
Първата версия на стандарта, имплементирана от всички браузари е 3-та 1999, преди това всеки е имал собсвена имплементация малко или много различаваща се от стандарта. 4-та версия е била много амбициозно начинание нещата, които са искали да вкарат в езика са:
- Classes
- A module system
- Optional type annotations and static typing, probably using a structural type system
- Generators and iterators
- Destructuring assignment
- Algebraic data types

---------------------------------


References:

- Scripting language - http://en.wikipedia.org/wiki/Scripting_language
- Dynamic Language Runtime Overview - http://msdn.microsoft.com/en-us/library/dd233052(v=vs.110).aspx



# Raw Material

-
-In addition to client-side browser scripting, these days you can use
-JavaScript to program for an increasing variety of platforms. You can write server-side
-code (using .NET or Node.js), desktop applications (that work on all operating sys-
-tems) and application extensions (e.g., for Firefox or Photoshop), mobile applications,
-and command-line scripts.

-Native
-	Described in the ECMAScript standard
-Host
-	Defined by the host environment (for example, the browser environment)
-
-	The native objects can further be categorized as built-in (for example, Array , Date ) or
-user-defined ( var o = {}; ).
-
-Host objects are, for example, window and all the DOM objects. If you’re wondering
-whether you’re using host objects, try running your code in a different, nonbrowser
-environment. If it works fine, you’re probably using only native objects.
---------------------------------


The theory is that strong typing allows a compiler to detect a large class of errors at compile
time.
I find loose typing to be liberating. I don’t need to form complex class hierarchies. And I never have to cast
or wrestle with the type system to get the behavior that I want.

ES3 - is implemented by all browsers, it`s known as first stable version

-----------------------------------------------------------------------
-what is defi ned in ECMA-262. Indeed, a complete
-JavaScript implementation is made up of the
-following three distinct parts:
-➤ The Core (ECMAScript)
-➤ The Document Object Model (DOM)
-➤ The Browser Object Model (BOM)

-ECMAScript, the language defi ned in ECMA-262, isn’t tied to web browsers. In fact, the language
-has no methods for input or output whatsoever. ECMA-262 defi nes this language as a base upon
-which more-robust scripting languages may be built.-

-DOM
-It was decided that something had to be done to preserve the cross-platform nature of the Web.
-The fear was that if someone didn’t rein in Netscape and Microsoft, the Web would develop into
-two distinct factions that were exclusive to targeted browsers. It was then that the World Wide
-Web Consortium (W3C), the body charged with creating standards for web communication, began
working on the DOM.

-Note that the DOM is not JavaScript-specifi c and indeed has been implemented in
-numerous other languages. For web browsers, however, the DOM has been
-implemented using ECMAScript and now makes up a large part of the JavaScript language.

-The API of the browser, the Document Object Model
-(DOM) is quite awful, and JavaScript is unfairly blamed. The DOM would be painful to work with in any language.

-BOM
-➤ The capability to pop up new browser windows
-➤ The capability to move, resize, and close browser windows
-➤ The navigator object, which provides detailed information about the browser
-➤ The location object, which gives detailed information about the page loaded in the
-browser
-➤ The screen object, which gives detailed information about the user’s screen resolution
-➤ Support for cookies
-➤ Custom objects such as XMLHttpRequest and Internet Explorer’s ActiveXObject
-
-With HTML5 now available, the implementation details of the BOM are -expected to grow
-in a much more compatible way.


It’s important to note that only the Netscape/Mozilla browsers follow this
versioning scheme. Internet Explorer, for example, has different version
numbers for JScript. These JScript versions don’t correspond whatsoever to the
JavaScript versions mentioned in the preceding table. Furthermore, most
browsers talk about JavaScript support in relation to their level of ECMAScript
compliance and DOM support.

-----------------------------------------------------------------------
-ECMA-262 specify:
-➤ Syntax
-➤ Types
-➤ Statements
-➤ Keywords
-➤ Reserved words
-➤ Operators
-➤ Objects



References:

- Scripting language - http://en.wikipedia.org/wiki/Scripting_language
- Dynamic Language Runtime Overview - http://msdn.microsoft.com/en-us/library/dd233052(v=vs.110).aspx
