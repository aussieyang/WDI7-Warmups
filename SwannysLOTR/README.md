## Trip To MorDOMr 2.0 - using jQuery

#### Learning Objectives

- Practice using **jQuery** to manipulate the DOM

We are going to take a trip from the Shire, through Rivendell, across Middle
Earth, and into the heart of Mordor itself, Mount Doom. Pack up, because we're
going on an adventure.

Your goal is to use jQuery to complete this adventure! Instead of using traditional
Javascript like the weekend's prompt, you should use jQuery selectors to manipulate the DOM. This second pass on Fellowship should give you a greater appreciation of the ease and simplicity of jQuery compared to standard Javascript.


#### Directions

1. Check out [`scripts/fellowship.js`](scripts/fellowship.js). This is where you will work. Starter data has been provided.
2. Define and call the functions outlined below.


#### Resources

- [jQuery Selector Reference](https://api.jquery.com/category/selectors/)
- [jQuery Cheat Sheet Reference](http://overapi.com/jquery/)
- [jQuery Succinctly](http://weeklymirror.com.np/files/download/jQuery_Succinctly.pdf)
- [jQuery Basics](http://jqfundamentals.com/chapter/jquery-basics)
- [Try jQuery (Interactive)](http://try.jquery.com/)

===

#### Part 1

```js
var makeMiddleEarth = function () {
   // create a section tag with an id of `middle-earth`
   // add each land as an `article` tag
   // inside each `article` tag include an `h1` with the name of the land
   // append `middle-earth` to your document `body`
};

makeMiddleEarth();
```

#### Part 2
```js
var makeHobbits = function () {
   // display an `unordered list` of hobbits in the shire
      // (which is the second article tag on the page)
   // give each hobbit a class of `hobbit`
};
```

#### Part 3
```js
var keepItSecretKeepItSafe = function () {
   // create a div with an id of `'the-ring'`
   // give the div a class of `'magic-imbued-jewelry'`
   // add the ring as a child of `Frodo`
};
```

#### Part 4

```js
var makeBuddies = function () {
   // create an `aside` tag
   // attach an `unordered list` of the `'buddies'` in the aside
   // insert your aside as a child element of `rivendell`
};
```

#### Part 5

```js
var beautifulStranger = function () {
   // change the `'Strider'` text to `'Aragorn'`
};
```

#### Part 6
```js
var leaveTheShire = function () {
   // assemble the `hobbits` and move them to `rivendell`
};
```

#### Part 7

```js
var forgeTheFellowShip = function () {
   // create a new div called `'the-fellowship'` within `rivendell`
   // add each `hobbit` and `buddy` one at a time to `'the-fellowship'`
   // after each character is added make an alert that they // have joined your party
};
```

#### Part 8

```js
var theBalrog = function () {
   // change the `'Gandalf'` text to `'Gandalf the White'`
   // apply the following style to the element, make the // background 'white', add a grey border
};
```

#### Part 9
```js
var hornOfGondor = function () {
   // pop up an alert that the horn of gondor has been blown
   // Boromir's been killed by the Uruk-hai!
   // Remove `Boromir` from the Fellowship
};
```

#### Part 10
```js
var itsDangerousToGoAlone = function (){
   // take `Frodo` and `Sam` out of the fellowship and move // them to `Mordor`
   // add a div with an id of `'mount-doom'` to `Mordor`
};
```

#### Part 11
```js
 var weWantsIt = function () {
   // Create a div with an id of `'gollum'` and add it to Mordor
   // Remove `the ring` from `Frodo` and give it to `Gollum`
   // Move Gollum into Mount Doom
};
```

#### Part 12
```js
var thereAndBackAgain = function () {
   // remove `Gollum` and `the Ring` from the document
   // Move all the `hobbits` back to `the shire`
};
```
