hooks
execute
	Gofer new 
		smalltalkhubUser: 'SvenVanCaekenberghe' project: 'Neo';
		package: 'ConfigurationOfNeoJSON'; load.
	(Smalltalk at: #ConfigurationOfNeoJSON) loadBleedingEdge.
	
	Gofer new 
		smalltalkhubUser: 'azazael' project: 'BeyondRoassal';
		package: 'softwareheritage'; load.