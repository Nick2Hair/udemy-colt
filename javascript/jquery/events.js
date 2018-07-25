//cblick lecture
$('button').click(function() {
	$(this).css('background', 'pink');
	console.log('stahp clicking me');
});

//keypress() lecture
$('input').keypress(function(event) {
	if(event.which===13) {
		alert("you hit enter!");
	}
});

//on() lecture
$('h1').on('click', function() {
	$(this).css('color', 'purple');
});

$('button').on('mouseenter', function() {
	$(this).css('font-weight', 'bold');
});

$('button').on('mouseleave', function() {
	$(this).css('font-weight', 'normal');
});

//effects lecture



