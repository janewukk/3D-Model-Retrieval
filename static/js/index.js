var atra;

$(document).ready(function(){
	var canvas = document.getElementById('sketcher');
	atra = atrament(canvas,  canvas.offsetWidth, canvas.offsetHeight);
	var clearButton = document.getElementById('clear');
});

function clear()
{
	// event.preventDefault(); 
	console.log("onclick")
	// atra.clear();
}
