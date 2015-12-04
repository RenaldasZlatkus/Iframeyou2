$(document).ready(function() {
	$('#frames-and-layout a').click(function() {
		value = $(this).data('field-value');
		number = $(this).data('field-number');
		$('#setting_style').val(value);
		$('#setting_frames').val(number);
	});

	$('#skin a').click(function() {
		value = $(this).data('field-value');
		$('#setting_skin').val(value);
	});

	$('#background a').click(function() {
		value = $(this).data('field-value');
		$('#setting_background').val(value);
	});

	$(".menu").click(function() {
		$(".settings").show();
		$(".menu").hide();
	})

	$(".menubox").click(function() {
		$(".settings").hide();
		$(".menu").show();
	})

	$(document).ready(function() {
		$(".settings").hide();
		$("#web2").hide();
		$("#web3").hide();
		$("#web4").hide();		
	})

	$(".one").click(function() {
		$("#web2").hide();
		$("#web3").hide();
		$("#web4").hide();
	})

	$(".two").click(function() {
		$("#web2").show();
		$("#web3").hide();
		$("#web4").hide();
	})

	$(".three").click(function() {
		$("#web2").show();
		$("#web3").show();
		$("#web4").hide();
	})

	$(".four").click(function() {
		$("#web2").show();
		$("#web3").show();
		$("#web4").show();
	})

	// $("#submit").click(function(){
	// 	$(this).parents('form').submit();
	// });

// $(function(){
//   $('input:checkbox').on('click', function(){
//     $(this).parents('form').submit();
//   });
// });


// });
});