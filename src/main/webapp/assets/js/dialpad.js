$("[data-toggle='popover']").on('show.bs.popover', function() {
	alert('Dial Pad is about to be shown.');
});

$("[data-toggle='popover']").on('hidden.bs.popover', function() {
	alert('Dial Pad is now hidden.');
});

// -------------- JS for dialpad--------------------------

$(document).ready(function() {
var caret = 0;

	$("#phone").on("keyup", function() {
		if ($('#phone').val().length == 14) {
			alert("Limit Reached!");
		}
	});
	

	
	$(".myClick").on("click", function() {
		if ($('#phone').val().length == 14) {
			alert("Limit Reached!");
			var formattedText = $.fn.format($('#phone').val())
			console.log("value here : ", formattedText);
			$('#phone').val(formattedText);
			/* $('#phone').val() = oldVal; */

		}
	});
	$.fn.validator = function(value) {
		
		if (value.val().length == 0) {
			alert('No Input!');
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
	
	$("#phone").on('click' , function(e){
		caret = e.target.selectionStart;
		var input = document.getElementById('phone')
		
		input.setSelectionRange(caret, caret);
		console.log(input.selectionStart, input.selectionEnd)
	});
	$("#btnclick").on('click' , function(e){
		caret = e.target.selectionStart;
		var input = document.getElementById('phone')
		
		input.setSelectionRange(caret, caret);
		console.log(input.selectionStart, input.selectionEnd)
	});
	$(".myClick").click(function(e) {
		var input = document.getElementById('phone')
		
		input.focus();
	
		var num = $(this).find('.inner').html();
		console.log(num);
		
		if ($('#phone').val().length < 14) {

//			$('#phone').val($('#phone').val() + num)
			if (caret != 0){
				input.value += num;
				var text = input.value
				console.log("content" , text)
				console.log("caret :", caret)
				console.log("substring", text.substring(0 ,caret) )
				var s1 = text.substring(0 ,caret);
				var s2 = text.substring(caret);
				console.log('s1',s1,'s2',s2)
				input.value = s1 + num + s2;
				input.value = input.value.slice(0,-1)
				input.setSelectionRange(caret+1, caret+1)
				console.log('new value', input.value );
				caret += 1
			}
			else{
				input.value += num
			}
			
			
		}

	});

	$(".btnclick").click(function() {
		
		/* console.log('button clicked'); */
		if (caret != 0){
			
			var input = document.getElementById('phone')
			input.focus();
			var text = input.value
			var s1 = text.substring(0,caret-1);
			var s2 = text.substring(caret)
			console.log('caret', caret , s1 , s2)
			input.value = s1+s2;
			caret -= 1
			input.setSelectionRange(caret,caret)
			
		}
		else{
		$('#phone').val($("#phone").val().slice(0, -1));}
	});

	$("#phone").on("keypress keyup blur", function(e) {

		$(this).val($(this).val().replace(/^[a-zA-Z]+$/, ""));
		if ((e.which < 48 || e.which > 57)) {
			e.preventDefault();
		}
	});

});
