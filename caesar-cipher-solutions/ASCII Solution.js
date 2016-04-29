console.log("testing");

var message = "FRZDUGV GLH PDQB WLPHV EHIRUH WKHLU GHDWKV, WKH YDOLDQW QHYHU WDVWH RI GHDWK EXW RQFH";

console.log(message.charCodeAt(0));

var decode = function (shift) {
  var messageASCII = [];
  for (var i = 0; i < message.length; i++) {
    if (message.charCodeAt(i) >= 65 + shift && message.charCodeAt(i) <= 90) {
      var newCode = message.charCodeAt(i) - shift;
      var newLetter = String.fromCharCode(newCode);
      messageASCII.push(newLetter);
    } else if (message.charCodeAt(i) >=65 && message.charCodeAt(i) < 65 + shift) {
      var newCode = message.charCodeAt(i) + 26 - shift;
      var newLetter = String.fromCharCode(newCode);
      messageASCII.push(newLetter);
    } else {
      var newCode = message.charCodeAt(i);
      var newLetter = String.fromCharCode(newCode);
      messageASCII.push(newLetter);
    }
  } console.log(messageASCII);
  return messageASCII.join("");
}

decode (3)

console.log(decode(3))

var encode = function (message, shift) {
  messageASCII = [];
  for (var i = 0; i < message.length; i++) {
    if (message.charCodeAt(i) >= 65 && message.charCodeAt(i) < 90 - shift) {
      newCode = message.charCodeAt(i) + shift;
      newLetter = String.fromCharCode(newCode);
      messageASCII.push(newLetter);
    } else if (message.charCodeAt(i) >= 90 - shift && message.charCodeAt(i) <= 90) {
      newCode = message.charCodeAt(i) - 26 + shift;
      newLetter = String.fromCharCode(newCode);
      messageASCII.push(newLetter);
    } else {
      newCode = message.charCodeAt(i);
      newLetter = String.fromCharCode(newCode);
      messageASCII.push(newLetter);
    }
  } console.log(messageASCII);
  return messageASCII.join("");
}

console.log(encode("HELLO WORLD", 2))
