function poeTaeToes(statement) {

  //Statement 'Happy St Patrick's'
  if (statement == "Happy St Patricks's day!") {
    //Paddy replies 'tildlely de, potatoes'
    var reply = 'Tildlely de, potatoes';
    paddyTalk(reply);
  }

  //Ask 'Do you want a pint of Guinness?'
  else if (statement == 'Do you want a pint of Guinness?') {
    //reply: 'Just the luck of the Irish.'
    var reply = 'Just the luck of the Irish.';
    paddyTalk(reply);
  }

  //Ask'Paddy, it's your round.'
  else if (statement == "Paddy, it's your round") {
    //Reply 'Look, Leprechaun!'
    var reply = 'Look, Leprechaun!';
    paddyTalk(reply);
  }
  else {
    var reply = "Paddy's too dunk and doesn't understand that... Try again.";
    paddyTalk(reply);
  }
}

function paddyTalk(reply) {
  console.log(reply);
}

poeTaeToes("Happy St Patricks's day!");
poeTaeToes("Paddy, it's your round");
poeTaeToes("Hi!");

//TODO: Change string to search for keywords in statement instead of actual strings.
