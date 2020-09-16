# JavaScript Essential Training

## Loading methods

New JS loading methods (HTTP/2)

* right away
* asynchronous
* deferred

```js
// Right away
// can cause render blocking while downloading and executing the script
<script src="script.js"></script>

// Asynchronous
// download script along with HTML, block only occurs when executing the script
<script src="script.js" async></script>

// Deferred
// execute only after everything is loaded
// with this we can load our scripts from the <header>
<script src="script.js" defer></script>
```

## Some Rules (and conventions)

1. JS is Case Sensitive
2. Use camelCase
    * variables start with lowercase
    * Objects and Classes start with Uppercase
    * Constants re ALL-CAPS
3. Whitespace matters (to humans)
4. End Each statement with a Semicolon (controversial)
   * Author argues that it increases readability.

## Working with data

To avoid global scope, always declare your variables

### Data types

* Numeric
* String (single or double quotes - that can be escaped)
* Boolean (true|false all lowercase)
* null (occasionally used)
* undefined (fallback) - create a variable but don't set it to anything
* symbol (introduced in ECMAScript2015)

`typeof` operator show us the type of the variable

### Operators

[To knew more](https://www.w3schools.com/js/js_comparisons.asp)

operator | |||
--- | --- | --- | ---
`=` | assignment | |
`==` | equality | 5 == "5" | true
`===` | strict equality | 5 === "5" | false
`!==` | strict not equal | 5 !== "5" | true
Arithmetic operators `+` `-` `*` `/`
`+` is the only one that can be also used with `string`

Algebra rules as usual, e.g. parenthesis

`+=` `-=` `*=` `/=` `++` `--` Shorthand as usual

Like in C++, precedence of `++` and `--` matters

`a++` return a (original value), then add 1 to it
`++a` subtract 1, THEN return the new a value

### Arrays

Arrays are object

```js
var colors;
colors = ["red", "blue"]

// or
var color2 = new Array("yellow", "pink")

// we can mix types
var mixedBag = ['Dalton', true, 3]

// put arrays into arrays (multidimension arrays)
```