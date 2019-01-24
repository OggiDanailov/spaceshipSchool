$( document ).on('turbolinks:load', function() {


	var gradeElement = document.getElementsByClassName("grade-element")
	var gradeButton = document.getElementsByClassName("grade-button")

	for(var i = 0; i< gradeElement.length; i++){
		if(!isNaN(parseInt(gradeElement[i].innerHTML))){
			gradeButton[i].style.visibility = 'hidden'
		}

	}
})



