// SECONDS ONLY

// $(document).ready(function() {
//   console.log("Tic, Toc, Tic, Toc, Tic, Toc...");
//
//   var startButton = $('#start');
//   var stopButton = $('#stop');
//   var resetButton = $('#reset');
//   var interval;
//   var time = 0;
//
//   startButton.on('click', function() {
//   	if (!interval) {
//   		interval = setInterval(function() {
//   			time++;
//   			renderTime(time);
//   		}, 1000)
//   	}
//   });
//
//   stopButton.on('click', function() {
//   	clearInterval(interval);
//   	interval = undefined;
//   });
//
//   resetButton.on('click', function() {
//   	time = 0;
//   	renderTime(time);
//   });
//
//
// });
//
// function renderTime(time) {
//   var stopwatch = $('#stopwatch');
//   stopwatch.text(time);
// };

// MINUTES AND HOURS

$(document).ready(function() {
  console.log("Tic, Toc, Tic, Toc, Tic, Toc...");

  var startButton = $('#start');
  var stopButton = $('#stop');
  var resetButton = $('#reset');
  var interval;
  var seconds = 0;
  var minutes = 0;
  var hour = 0;

  startButton.on('click', function() {
  	if (!interval) {
  		interval = setInterval(function() {
  			seconds++;
			  renderTime(seconds, minutes, hour);
        if (seconds >= 60) {
          seconds = 0;
          minutes++;
          renderTime(seconds, minutes, hour);
          if (minutes >= 60) {
            minutes = 0;
            hour++;
            renderTime(seconds, minutes, hour);
          } // Closes hours if
        } // Closes minutes if
  		}, 1000) // Closes setInterval
  	} // Closes if an interval exists
  }); // Closes event listener

  stopButton.on('click', function() {
  	clearInterval(interval);
  	interval = undefined;
  });

  resetButton.on('click', function() {
    seconds = 0;
    minutes = 0;
    hour = 0;
  	renderTime(seconds, minutes, hour);
  });
}); // Closes document.ready function

function renderTime(seconds, minutes, hour) {
  var stopwatch = $('#stopwatch');
  var html = stopwatch.html(); // "00:00:00"
  var timeBreakdown = html.split(":"); // [hours, minutes, seconds]
  // console.log(timeBreakdown);
  timeBreakdown[0] = hour;
  timeBreakdown[1] = minutes;
  timeBreakdown[2] = seconds;
  var time = timeBreakdown.join(":");
  stopwatch.text(time);
};
