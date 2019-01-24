$(document).ready(function(){
	let gradeElement = document.getElementsByClassName("grade-element")
	let gradeButton = document.getElementsByClassName("grade-button")

	for(let i = 0; i< gradeElement.length; i++){
		var temp = []
		temp.push(gradeElement[i].innerHTML)
			if(typeof(temp[i]) !== 'undefined'){
				gradeButton[i].style.visibility = 'hidden'
			}
	}
})