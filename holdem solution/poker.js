
  var suits = ['Hearts', 'Diamonds', 'Clubs', 'Spades'],
      values = ['Ace', 'King', 'Queen', 'Jack', 10, 9, 8, 7, 6, 5, 4, 3, 2],
      deck = [], players, drawnCard,
      assignedCard = [], i, j;
      players =  2 //window.prompt('How many are going to play? (2-8)');

  function makeDeck () {
    for (i = 3; i >= 0; i--) {
      for (j = 12; j >= 0; j--) {
        deck.push(values[j] + ' of ' + suits[i]);
      }
    }
  }

  function dealCards (deal) {
    assignedCard = [];
    for (j = deal; j > 0; j--) {
      drawnCard = Math.round(Math.random() * deck.length);
      if (assignedCard.length === 0) {
        assignedCard.push(deck[drawnCard]);
      } else {
        assignedCard.push(' ' + deck[drawnCard]);
      deck.splice(drawnCard, 1);
    }
    return assignedCard;
  }

  makeDeck();
  // run game
  for (i = 0; i < players; i++) {
    if (i === 0) {
      console.log('Your hand: ' + dealCards(2));
    } else {
      console.log('POOTAH ' + i + ' Hand: ' + dealCards(2));
    }
  }

  console.log('Flop: ' + dealCards(3));
  console.log('Turn: ' + dealCards(1));
  console.log('River: ' + dealCards(1));
