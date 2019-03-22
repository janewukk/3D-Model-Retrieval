var atra;

$(document).ready(function(){
	var canvas = document.getElementById('sketcher');
	atra = atrament(canvas,  canvas.offsetWidth, canvas.offsetHeight);
	var clearButton = document.getElementById('clear');


	var link = document.createElement('a');
    link.innerHTML = 'Query';
    link.id = "query";
    link.style = "margin-top:-10px";
	link.addEventListener('click', function(ev) {
		var canvas = document.getElementById('sketcher');
		var img = canvas.toDataURL("image/png");
	    link.href = canvas.toDataURL();
	    var data = {
			"keyword": "",
			"image": img
		}
	    $.ajax({
			type : 'POST',
			url : "/draw",
			contentType: 'application/json',
			data : JSON.stringify(data),
			success: function(data){
			    data = JSON.parse(data)
			    console.log(data)
			  }
		});
	}, false);
	document.getElementById("div_download").appendChild(link);
	$('#query').addClass("btn btn-success");
});

function clear()
{
	console.log("onclick")
}