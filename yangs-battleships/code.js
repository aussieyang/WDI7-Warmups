console.log("I'm working!");

$('.column').on('click', function(){
  $(this).append('<img src="http://icons.iconarchive.com/icons/icons8/windows-8/128/Military-Battleship-icon.png" alt="">')
    .css('border-color', 'red');
});
