

window.addEventListener('message', function(event) {
  var item = event.data;
  if (item.showUI) {
    document.getElementById("name").innerHTML = item.name;
    document.getElementById("job").innerHTML = item.job;
	document.getElementById("money").innerHTML = "<span style='color: black'>Cash: </span><span style='color: green'>$" + item.cash + "</span>";
	document.getElementById('pfpimg').src = item.picture;

	document.getElementById("bank").style.display = "none";
	if(item.cfg.showBank){
		document.getElementById("bank").style.display = "block";
		document.getElementById("bank").innerHTML = "<span style='color: black'>Bank: </span><span style='color: green'>$" + item.bank + "</span>";
	}
  $('.profile').show();
    setTimeout(() => {
      $('.profile').fadeOut();
    }, 5200);
  }
});

