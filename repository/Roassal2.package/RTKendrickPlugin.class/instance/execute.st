hooks
execute
	Gofer new
	   url: 'http://smalltalkhub.com/mc/SergeStinckwich/SciSmalltalk/main/';
	   configurationOf:'SciSmalltalk';
	   loadVersion: '0.28-baseline'.
	
	Gofer new
	   url: 'http://ss3.gemstone.com/ss/STON';
	   configurationOf:'Ston';
	   loadStable.
	
	Gofer new
	   url: 'http://smalltalkhub.com/mc/UMMISCO/Kendrick/main';
	   configurationOf:'Kendrick';
	   loadVersion:'0.35'