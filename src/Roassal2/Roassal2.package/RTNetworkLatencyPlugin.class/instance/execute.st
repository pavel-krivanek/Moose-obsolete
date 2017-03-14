as yet unclassified
execute
	Gofer new
		smalltalkhubUser: 'merino'
			project: 'NetworkLatency';
		package: 'ConfigurationOfNetworkLatency';
		load.
	(Smalltalk at: #ConfigurationOfNetworkLatency)
		loadDefault.
		
	(Smalltalk at: #NLVisualise) new open