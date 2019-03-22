$(document).ready(function(){
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

	$('.custom-file-input').on('change',function()
	{
		var fileName = document.getElementById("exampleInputFile").files[0].name;
		$("#place_to_add_name").html(fileName);
	})
});

function clear()
{
	console.log("onclick")
}

function query_by_file()
{
	var file = document.getElementById("exampleInputFile").files[0]
	var formData = new FormData();
	formData.append('file', file);
	var xhr = new XMLHttpRequest();
	xhr.open('POST', '/upload', true);
	xhr.onload = function () 
	{
		if (xhr.status === 200) {
			console.log("success")
		} 
		else {
			alert('An error occurred!');
		}
	};
	xhr.send(formData);
}



