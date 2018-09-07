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
* **XSLT** - XML Stylesheet Language Transformations (transform XML into something else, PDF, text file, another XML)
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

## XML Overview

### Types of XML Content

#### XML Document Declaration

```xml
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
```

#### Elements (Tags) and Attributes

```xml
<>
```

#### Comments

```xml
<!-- and end with -->
```

#### Character Data (CDATA)

Part of document, but not parsed by the XML parser
Typically used to contain unescaped textual data

```xml
<![CDATA[ and ends with ]]>
```

```xml
<script>
<![CDATA[ 
function f(a, b) {
    return a < b;
    }
]]>
</script>
```

#### Processing Instructions

Special instructions to the XML parser

```xml
<?targetName instruction ?>
```

#### Entity References

Help shorten and modularize XML documents
Provide markup for otherwise illegal characters

General entities

* Replaced by parser with a full string
* Examples: &copyright; or &author;

Character entities

* `&#060;`
* `#amp;` or `&quot;`

### Proper XML Syntax

XML documents must have a single root tag
XML documents must be "well-formed"
Empty tags must be closed with **/>**

* Instead of `<elem></elem>`, use `<elem />` 

Attribute values cannot be minimized

* `<option selected>` is illegal, use `<option selected="selected">`

Attribute values must be inside of quotes, single or double

* `<elem attr=val>` is illegal, use `<elem attr="val">`

Tags have to be properly nested inside of each other

### "Valid" XML Documents

Document type definitions (DTDs)

* Simple to use, but not very powerful
* Written using a syntax that is different than XML

XML Schema

* Much more powerful and flexible than DTD
* Written using XML syntax rules

### XML Namespaces

* Form: `<html xmlsn="http://www.w3.org/1999/xhtml">`
* Prevent conflict (collisions) between tags from different languages

```xml
<html xmlns="http://www.w3.org/1999/xhtml"
    xmlns:furn="http://www.furniture.org/items">
```

```xml
<table>
  <tr><td>
    <furn:table>
      <furn:type>Coffee</furn:type>
      <furn:price>199.99</furn:price>
      <furn:material>wood</furn:material>
      <furn:stock>25</furn:stock>
    </furn:table>
  </tr></td>
</table>
```

## Working with XML

### Our first XML File

#### XML and CSS

[FirstXMLFile.xml](./ExerciseFiles/03_work/FirstXMLFile.xml)
[FirstXMLFile.css](./ExerciseFiles/03_work/FirstXMLFile.css)

When open in a browser, now we can have a very nice presentation.

#### Styling XML tags

[BusinessCard xml](ExerciseFiles/03_work/businesscard_style_CSS2.xml)
[BusinessCard.css](ExerciseFiles/03_work/businesscard_CSS2.css)

## Manipulating XML with the DOM

### Quick intro to the DOM

The Document Object Model

* Standard set of APIs for working with the document content
* Platform, browser, and language neutral
* Represents document content as a tree structure
* Contents of the tree are called **nodes**

#### Important DOM Properties

Property | Description
--- | ---
`nodeName` | The name of the node; for tags, it is the tag name. For comments and text, it is special names like "#comment" or "#text".
`nodeType` | The node's type; Element, Comment, Text, etc.
`nodeValue` | The node's value; varies based on node type
`attributes` | For elements only; an array of attributes and values
`parentNode` | The parent of this node; `null` if there is no parent or "#text"
`childNodes` | Array of child nodes; empty if there are none
`firstChild`, `lastChild` | References to first and last child of this node
`previousSibling`, `nextSibling` | References to previous and next siblings of this node
`documentElement` | Reference to the root document element

Functions | Description
--- | ---
`apendChild()` | Inserts and element at the end of a given element's children
`removeChild()` | Removes an element from the parent
`insertBefore()` | Inserts a new node before the given node
`replaceChild()` | Replaces an existing node inside the parent with a new one
`createElement()` | Creates new element that can be inserted in document
`createTextNode()` | Creates new text node
`createComment()` | ...
`createCDATASection()` | ...
`getElementsByTagName()` | ...
`getElementById()` | ...
`getAttribute()` | Gets the value of a given attribute on an element
`setAttribute()` | Sets the value of an attribute on an element
`removeAttribute()` | Removes an attribute from an element
`innerHTML` | Gets or sets the HTML content of the given tag
`data` | Gets the text data of an Element, Comment, or Text node

## XPath

What is XPath?

* W3C standard for accessing data in XML
* Fundamental part of XSLT, Xquery, and others
* Defines a **path** into an XML document
* Learn more at http://w3.org/TR/xpath
* XPath is 1-based, not 0-based
* Very compact syntax, quick to learn
* The path expression is a series of location steps

Important DOM Functions

Path Expressions | Description
--- | ---
/ | Select the root tag in the document
/rootTag | Select the root tag, but only id it is named "rootTag"
//tagName | Find all "tagName" elements anywhere in the document
text() | Select the text content of the current node
@name | Select the "name" attribute of the current node
.. | Select the parent of the current node

Examples

Path Expressions | Description
--- | ---
/doc/chapter[5] | Select the fifth chapter under the doc tag
/body/p[last()] | Select the last paragraph tag in the body element
/body/p[@class="a"] | Select p tags that have a class attribute equal to "a"
//p[@class and @style] | Select all p tags in the document with class and style attributes

## XSLT

* eXtensible Stylesheet Language Transformations
* Different than CSS - applies templates to XML data
* Written using XML syntax itself
* Can transform XML data into almost anything
* Can perform operations directly on the data
* Learn more at http://www.w3.org/TR/xslt

### Creating XSLT Stylesheets

* Defined using the `<xsl:stylesheet>` root tag
* Typically contain `<xsl:template>` tags
* Templates are matched to XML tags in the source data
* Templates contains other XSLT directives
* Templates can also be invoked by name

We can use this XSLT to transform documents in the browser or in some server, for backend activities.

### Common XSLT Elements

```xml
<xsl:stylesheet>
<xsl:template match="xpath expression">
<xsl:value-of select="xpath">
<xsl:attribute>
<xsl:text>
<xsl:for-each select="xpath">
<xsl:if test="condition">
<xsl:choose>, <xsl:when>, <xsl:otherwise>
<xsl:sort select="">
```
