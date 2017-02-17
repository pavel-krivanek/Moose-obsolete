hooks
execute
	Gofer new 
		smalltalkhubUser: 'SvenVanCaekenberghe' project: 'Neo';
		package: 'ConfigurationOfNeoJSON'; load.
	(Smalltalk at: #ConfigurationOfNeoJSON) loadBleedingEdge.
	
	Gofer new 
		smalltalkhubUser: 'SvenVanCaekenberghe' project: 'Neo';
		package: 'ConfigurationOfNeoCSV'; load.
	(Smalltalk at: #ConfigurationOfNeoCSV) loadBleedingEdge.