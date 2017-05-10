hooks
execute

	(Smalltalk includesKey: #DSWebhookClient) ifFalse: [ 
		Metacello new
		    baseline: #DiscordSt;
		    repository: 'github://JurajKubelka/DiscordSt/src';
		    load: #webhook ]. 
	
	Gofer new 
		smalltalkhubUser: 'ObjectProfile' project: 'Roassal2';
		package: 'Roassal2ScriptOfTheDay'; load.
	
	