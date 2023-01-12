function mailcheck() {
		var reg = /^[0-9a-z\.-]+@([0-9a-z-]+\.)+[a-z]{2,4}$/i;
		var s = document.getElementById('email').value;
		var reg1 = /^[0-9a-z\.-]{6}/;
		var s1= document.getElementById('nev').value;
		alert(reg1.test(s1)&& reg.test(s));
	
  }
