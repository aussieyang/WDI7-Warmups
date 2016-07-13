#PixArt!

## Objectives
Let's use jQuery and event listeners to create an interactive web interface that will paint pixels!

CSS has been provided. Let's write the HTML together. You will implement the JavaScript and jQuery!

### Step 1: Set Color

When you click the `#set-color` button, it should change the color of the `.brush-color` palette to the color you specify in the input field.

- Create an event that listens for a click on a button with the `id` of `set-color`.
- When this event is fired, it should use jQuery to take the value from the color input field and make the brush swatch that color.

### Step 2: Set Color by Enter

The same thing should happen when I press the enter key from inside the input field.

- Create an event that listens for a click on enter.
- **HINT:** `13`
- This listener should also take the value from the color input field and make the brush swatch that color.

### Step 3: Create the Canvas

Using jQuery, create divs with the class `square` and append them to the body.
- Make a pixel div.
- Add a class of `square` to this div.
- Append this div to the body.
- Add an event to this div so that it changes color on mouseover to the color of the brush swatch.
- Repeat this 2000 times.

### Step 4

- Modify the CSS of your `square` class to change the size of the pixel divs.  
- Modify your code so that you are creating 8000 divs instead of 2000.
- Change the event that changes your box colors from 'click' to 'mouseover'.
- Paint a picture!

### Step 5

- Make it responsive. Use some maths to work out how big the viewport is and change the canvas size to suit the screen size.
- You might want a boarder or frame to make your art look legit.


### Step 6

SHIP IT!
- make a repo
- push it to GH pages
- Count your money
