
var caesarSalad = function(str, amount) {
	// Wrap the amount
	if (amount < 0)
		return caesarSalad(str, amount + 26);
	// Make an output variable
	var output = '';
	// Go through each character
	for (var i = 0; i < str.length; i ++) {
		// Get the character we'll be appending
		var c = str[i];
		// If it's a letter...
		if (c.match(/[a-z]/i)) {
			// Get its code
			var code = str.charCodeAt(i);
			// Uppercase letters
			if ((code >= 65) && (code <= 90))
				c = String.fromCharCode(((code - 65 + amount) % 26) + 65);
			// Lowercase letters
			else if ((code >= 97) && (code <= 122))
				c = String.fromCharCode(((code - 97 + amount) % 26) + 97);
		}
		// Append
		output += c;
	}
	// All done!
	return output;
};

// caesarSalad("ABCDEFGHIJKLMNOPQRSTUVWXYZ", 3);
// caesarSalad("DEFGHIJKLMNOPQRSTUVWXYZABC", -3);
caesarSalad("FRZDUGV GLH PDQB WLPHV EHIRUH WKHLU GHDWKV, WKH YDOLDQW QHYHU WDVWH RI GHDWK EXW RQFH.", -3);

// caesarSalad("Good Morning, here is your morning warmup. You can choose to do this in Ruby or Javascrip. Have fun... And don't forget to ask questions...", 3);
