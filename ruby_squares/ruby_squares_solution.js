function getSquares(numArray) {
	// Initialize an empty array to store the perfect squares
  var squares = [];
    // Iterate over the argument array that was passed into the function
    for (var i = 0 ; i < numArray.length ; i++) {
        // Store the value of the element at index i in a variable
        var value = (numArray[i]);
        // Take the square root of the value and store it in a variable
        var squareRoot = Math.sqrt(value);
        // Turn that number (whole or decimal) into a string and split it on the decimal point
        var stringNum = squareRoot.toString().split(".");
        // Take the first element after the split, or index 0, and turn it back into an interger
        var backToInt = parseInt(stringNum[0]);
        // If the number times the number is equal to the value of the element in the array AND it is not already in the squares array
        if ((backToInt * backToInt === numArray[i]) && (squares.indexOf(numArray[i]) === -1)) {
            // push the number into the squares array
            squares.push(numArray[i])
  console.log(squares);
        }
    }
    // Return the squares array, sorted in ascending order using the comparison function that comes with .sort
    console.log(squares.sort(function(a, b) {return a - b}));
    return squares.sort(function(a, b) {
      return a - b
    });
}

getSquares([4,1,16,1,10,35,22]);
