
function loginRegisterSwitch(){
	 $('form').animate({height: "toggle", opacity: "toggle"}, "slow");
}

function showAlertAfterRegistration(){
    $('div.alert.alert-success').show();
}

$('.message a').click(function(){
  loginRegisterSwitch();
});


	$("button.register").click(function() {
		let firstName = $("form.register-form input.firstName").val();
		let lastName = $("form.register-form input.lastName").val();
		let email = $("form.register-form input.email").val();
		let password = $("form.register-form input.password").val();
		let cpassword = $("form.register-form input.cpassword").val();
	
	if (firstName == '' || lastName == '' || email == '' || password == '' || cpassword == '') {
	alert("Please fill all fields...");
	} else if ((password.length) < 4) {
	alert("Password should atleast 4 character in length...!!!!!!");
	} else if (!(password).match(cpassword)) {
	alert("Your passwords don't match. Try again?");
	} else {
		
			let userRegistration = {
				firstName: firstName,
				lastName: lastName,
				email: email,
				password: password
			};
					$.post("registration", userRegistration, function(data) {
			if (data == 'Success') {
					$("form")[0].reset();
					$("form")[1].reset();
					loginRegisterSwitch();
					showAlertAfterRegistration();
				}
		  	});
		}
	});



	$("button.login").click(function() {
		let email = $("form.login-form input.email").val();
		let password = $("form.login-form input.password").val();
	
	if (email == '' || password == '' ) {
		alert("Please fill login form.");
	} else {
			let userLogin = {
				email: email,
				password: password
			};
					$.post("login", userLogin, function(data) {
					if(data !==''){
					 let customUrl = '';									
					 let urlContent = window.location.href.split("/");
						for(let i =0; i < urlContent-1; i++){					
							customUrl += urlContent[i]+"/";					
							}					
								customUrl += data.destinationURL;
								window.location =customUrl;
					}	
				$("form")[1].reset();				
		  });
		}
	});


