
function myFunction() {
  var x = document.getElementById("myTopnav");
  if (x.className === "topnav") {
    x.className += " responsive";
  } else {
    x.className = "topnav";
  }
}


document.addEventListener("turbolinks:load", function(){
	var burger = document.getElementsByClassName('burger')
	var mainNav = document.getElementsByClassName('main-nav')

	for(let i = 0;i<burger.length;i++){
		burger[i].addEventListener('click', function(){
			console.log('asdfasdfsd')
			mainNav[i].classList.toggle('active-home')
		})
	}

})