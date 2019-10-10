/* The below code is to remove number one by one on clicking backspace button. */
function del() {
	var num = document.getElementById('num').value;
	num = num.substr(0, num.length - 1);
	document.getElementById('num').value = num;
}
function isValid(a) {
	console.log(a.value)
	if (!(/^[0-9]+$/.test(a.value))) {
		a.focus();
		console.clear();
		console.log("Please enter number");
	}
}

/* Below code is to enter only numbers in input group and limit to 14 */
function numberOnly(id) {
	var element = document.getElementById(id);
	var newRegex = /^[\d\+\*\#]+$/gi;
	if (newRegex.test(element.value) == false) {
		console.log('digit not found')
		element.value = element.value.replace(/[^\d\+\*\#]+/gi, "");
	}
}

/* Calendar */
$('.datepicker').datepicker({
	todayHighlight : true
});

/* numbers on click */
$(document).ready(function() {
	$('.digit').click(function() {

		var currentValue = $('input').val();
		var valueToAppend = $(this).attr('name');
		$('input').val(currentValue + valueToAppend);

	});
})