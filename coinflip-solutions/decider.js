

var tallyHeads = 0;
var tallyTails = 0;

//find image and print location <h3>
var clickInput = document.getElementById("clickImage");
var tally = document.getElementById("tallyTotal");

//flipped
var coinFlip = function () {
  return (Math.floor(Math.random() * 2) === 0) ? "heads" : "tails";
};

console.log(coinFlip());

//specifying task
var task = function () {
  if (coinFlip() === "heads") {
    tallyHeads++;
  } else {
    tallyTails++;
  };
  if (tallyHeads % 5 == 0) {
    console.log('WINNER!');
  };
  return tally.innerHTML = "You have flipped " + tallyHeads +
  " heads and " + tallyTails + " tails."
};


//listen to click
clickInput.addEventListener("click", task);

console.log(tallyHeads);
