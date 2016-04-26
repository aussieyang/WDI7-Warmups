var scoreBob = [3, 2, 6, 11, 9, 2, 6, 9, 10];
var scoreJimbo = [5, 12, 9, 22, 13, 7, 16, 10, 11];
var scoreFish = [2, 2, 4, 5, 4, 3, 6, 4, 1];

var totalScore = function (name) {
  if (name === "Bob") {
      var totalBob = 0;
      for (var i = 0; i < 9; i++) {
        totalBob += scoreBob[i];
      }
      return totalBob;
  } else if (name === "Jimbo") {
      var totalJimbo = 0;
      for (var i = 0; i < 9; i++) {
        totalJimbo += scoreJimbo[i];
      }
      return totalJimbo;
  } else if (name === "Fish") {
      var totalFish = 0;
      for (var i = 0; i < 9; i++) {
        totalFish += scoreFish[i];
      }
      return totalFish;
  }
};

totalScore("Bob");
totalScore("Jimbo");
totalScore("Fish");

var scorePar = [3, 4, 5, 5, 3, 3, 4, 3, 5];

var par = function () {
var totalPar = 0;
    for (var i = 0; i < 9; i++) {
      totalPar += scorePar[i];
    };
    return totalPar
}

var parScoreBob = totalScore("Bob") - par();
var parScoreJimbo = totalScore("Jimbo") - par();
var parScoreFish = totalScore("Fish") - par();

var earningsFish = parScoreJimbo - parScoreBob;
