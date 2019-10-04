
$("[data-toggle=popover]").on('shown.bs.popover', function() {
	attachClick();
});
//----------------- attachClick function for popover -----------------
function attachClick() {
	$("#phone1").on("input", function() {
		if ($('#phone1').val().length > 14) {
			alert("input exceeded!");
		}
	});
	$(".myclick").on("click", function() {
		if ($('#phone1').val().length > 13) {
			alert("Input exceeded!");
			var formattedText = $.fn.format($('#phone1').val())
			console.log("value here : ", formattedText);
			$('#phone1').val(formattedText);
			/* $('#phone').val() = oldVal; */

		}
	});

	$(document).ready(function() {
		$('.popover').children().children().children().find('#phone').attr('id','phone1');
		var x = document.getElementById("phone1").maxLength;
		/* console.log(x); */
		$.fn.validator = function(value) {
			var pattern = /^[0-9]+$/;
			/* console.log(value.val()); */
			if (pattern.test(value.val()) == false) {
				alert('Invalid Number!');
			}

		}
		
		
		$.fn.format = function(value) {
			/*
			 * console.log("Value passed!") console.log(value.slice(0, 14),
			 * value.slice(0, 14).length)
			 */
			return value.slice(0, 14);
		}

		$(".dial-btn").click(function() {
			$.fn.validator($('#phone1').val($("#phone1").val()));
		});
	});

	$(".myclick").click(function() {
		var num = $(this).find('.inner').html();
		
		if ($('#phone1').val().length < 14) {

			$('#phone1').val($('#phone1').val() + num)
		}

	});

	$(".btnclick").click(function() {
		/* console.log('button clicked'); */
		$('#phone1').val($("#phone1").val().slice(0, -1));
	});
	
	$("#phone1").on("keypress keyup blur",function (e) {  
		
	    $(this).val($(this).val().replace(/^[a-zA-Z]+$/, ""));
	        if ((e.which < 48 || e.which > 57)) {
	            e.preventDefault();
	    }
	});
}



//-------------- JS for dialpad--------------------------
$("#phone").on("input", function() {
	if ($('#phone').val().length > 14) {
		alert("input exceeded!");
	}
});
$(".myclick").on("click", function() {
	if ($('#phone').val().length > 13) {
		alert("Input exceeded!");
		var formattedText = $.fn.format($('#phone').val())
		console.log("value here : ", formattedText);
		$('#phone').val(formattedText);
		/* $('#phone').val() = oldVal; */

	}
});

$(document).ready(function() {
	var x = document.getElementById("phone").maxLength;
	
	/* console.log(x); */
	$.fn.validator = function(value) {
		var pattern = /^[0-9]+$/;
		/* console.log(value.val()); */
		if (pattern.test(value.val()) == false) {
			alert('Invalid Number!');
		}

	}
	
	
	
	$.fn.format = function(value) {
		/*
		 * console.log("Value passed!") console.log(value.slice(0, 14),
		 * value.slice(0, 14).length)
		 */
		return value.slice(0, 14);
	}

	$(".dial-btn").click(function() {
		$.fn.validator($('#phone').val($("#phone").val()));
	});
});

$(".myclick").click(function() {
	var num = $(this).find('.inner').html();
	console.log(num);
	$.fn.check(num);
	if ($('#phone').val().length < 14) {

		$('#phone').val($('#phone').val() + num)
	}

});

$(".btnclick").click(function() {
	/* console.log('button clicked'); */
	$('#phone').val($("#phone").val().slice(0, -1));
});


$("#phone").on("keypress keyup blur",function (e) {  
	
    $(this).val($(this).val().replace(/^[a-zA-Z]+$/, ""));
        if ((e.which < 48 || e.which > 57)) {
            e.preventDefault();
    }
});
