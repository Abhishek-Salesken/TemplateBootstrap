$("[data-toggle='popover']").on('show.bs.popover', function() {
	alert('Dial Pad is about to be shown.');
});

$("[data-toggle='popover']").on('hidden.bs.popover', function() {
	alert('Dial Pad is now hidden.');
});

// -------------- JS for dialpad--------------------------

$(document).ready(function() {


	$("#phone").on("keyup", function() {
		if ($('#phone').val().length == 14) {
			alert("Limit Reached!");
		}
	});
	$(".myClick").on("click", function() {
		if ($('#phone').val().length == 14) {
			alert("Input exceeded!");
			var formattedText = $.fn.format($('#phone').val())
			console.log("value here : ", formattedText);
			$('#phone').val(formattedText);
			/* $('#phone').val() = oldVal; */

		}
	});
	$.fn.validator = function(value) {

		if (value.val().length == 0) {
			alert('Limit Reached!');
		}
		else{
			alertify.confirm('Dialing', ''+value.val(), function(e){ alertify.success('Connecting...') }
		    , function(){ alertify.error('Hang up!')});
		}
	}
	$.fn.format = function(value) {
		return value.slice(0, 14);
	}

	$(".dial-btn").click(function() {
		$.fn.validator($('#phone').val($("#phone").val()));
	});

	$(".myClick").click(function() {
		var num = $(this).find('.inner').html();
		console.log(num);

		if ($('#phone').val().length < 14) {

			$('#phone').val($('#phone').val() + num)
		}

	});

	$(".btnclick").click(function() {
		/* console.log('button clicked'); */
		$('#phone').val($("#phone").val().slice(0, -1));
	});

	$("#phone").on("keypress keyup blur", function(e) {

		$(this).val($(this).val().replace(/^[a-zA-Z]+$/, ""));
		if ((e.which < 48 || e.which > 57)) {
			e.preventDefault();
		}
	});

});
