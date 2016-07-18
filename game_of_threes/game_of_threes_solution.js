// part 1

function threes(x) {
   while (x > 1) {
       var op = (-x - 1) % 3 + 1;
       console.log(x + ' ' + op);
       x = (x + op) / 3;
   }
   console.log(1);
}



// part 2

function gameOfThrees(input, sum, output){
   sum = sum || 0;
   output = output || '';
   if (input === 1) {
       if (sum === 0){
           return output + '\n1';
       } else return null;
   } else if (input >= 3 ){
       var result;
       for(var i = -2; i < 3; i++){
           if ((input + i) % 3 === 0){
               result = gameOfThrees((input + i) / 3, sum + i, output + '\n' + input + ' ' + i);
               if (result) return result;
           }
       }
   }
   return null;
}

console.log(gameOfThrees(46744073709551620) || 'Impossible brah!');
