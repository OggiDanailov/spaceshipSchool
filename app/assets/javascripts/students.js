$( document ).on('turbolinks:load', function() {


	let gradeElement = document.getElementsByClassName("grade-element")
	let gradeButton = document.getElementsByClassName("grade-button")

	for(let i = 0; i< gradeElement.length; i++){
		if(!isNaN(parseInt(gradeElement[i].innerHTML))){
			gradeButton[i].style.visibility = 'hidden'
		}

	}
})



