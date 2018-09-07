# XML Essential Training

[www.linkedin.com/learning/xml-essential-training-2](https://www.linkedin.com/learning/xml-essential-training-2/)

by Joe Marini

2h 38m  Beginner + Intermediate  Released: January 19, 2018  

Extensible Markup Language (XML) was designed to make information sharing and data interpretation easier. Having a solid grasp of what XML is and how to work with it is essential for any developer. In this course, Joe Marini takes you through the basic rules of XML, explains its syntax, and covers more advanced topics such as styling your XML with CSS and manipulating XML content using XPath and XSLT. From integrating XML into your site to using document type definitions and XML schema, this course covers what you need to know to not only get started with XML, but also master it.  

The instructor suggests that we used Visual Studio Code because the great plugins that exists, and recommends the following plugin:  

**XML Tools**, from Josh Johnson  
XML Formatting, XQuery, and XPath Tools for Visual Studio Code

## Getting Started

### What is XML?

* e**X**tensible **M**arkup **L**anguage
* XML became a W3C recommendation in 1998
* Tag-based syntax, similar to HTML
* XML is **not** a replacement for HTML
* X means **extensible** - you can make your own tags
* XML is the foundation of several Web technologies
  * XHTML - HTML formatted as XML syntax
  * RSS/ATOM - used for publishing, such as blogs
  * AJAX - asynchronous JavaScript and XML
  * Web Services - using APIs over the web

### What is XML used for?

* XML is used to **structure** and **describe** information
* XML was intended to be used over the internet
* Used to exchange data between disparate systems

### XML-Related Technologies

* **XPath** - e**X**tensible **P**ath **L**anguage
* **XSLT** - XML Stylesheet Language Transformations (tranform XML into something else, PDF, text file, another XML)
* **XQuery** - more advanced querying language than XPath
* **Xpointer, XLink** - links between and within XML documents

### Describing Data with XML

Joe Marini
+1 (415) 555-1234 (home)
+1 (800) 555-9867 (work)
+1 (510) 555-1212 (mobile)
joe@joe.com

```xml
<BusinessCard>
<name>Joe Marini</name>
<phone type="home">+1 (415) 555-1234</phone>
<phone type="work">+1 (800) 555-9867</phone>
<phone type="mobile">+1 (510) 555-1212</phone>
<email>joe@joe.com</email>
</BusinessCard>
```

### Advantages of XML

* XML keeps content separate from presentation
* XML is an open format that can be read by many applications
* XML can be used on both the client and the server
* XML has widespread support in multiple languages and runtimes
* XML makes it possible for disparate systems to exchange data

### Drawbacks of XML

* XML is not suitable for very large data sets
* Some formats, like JSON, might be better in some cases
* Some data types, like images, aren't represented well
* XML can quickly become difficult to read when complex

### Real world examples of XML

[edition.cnn.com/services/rss/](http://edition.cnn.com/services/rss/)

[http://w1.weather.gov/xml/current_obs/](http://w1.weather.gov/xml/current_obs/) Choose a State, click Find, open some XML page

In both examples, right click in the page and select **View Page Source**, and you will see a XML.

[https://en.wikipedia.org/wiki/Microsoft_Office_XML_formats](https://en.wikipedia.org/wiki/Microsoft_Office_XML_formats) Office can save files in XML
