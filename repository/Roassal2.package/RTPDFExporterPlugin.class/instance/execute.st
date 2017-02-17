hooks
execute
	Gofer new 
		smalltalkhubUser: 'azazael' project: 'RTPDFExporter';
		package: 'ConfigurationOfRTPDFExporter'; load.
	(Smalltalk at: #ConfigurationOfRTPDFExporter) loadDevelopment