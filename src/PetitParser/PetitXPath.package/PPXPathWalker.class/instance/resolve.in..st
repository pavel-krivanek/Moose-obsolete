private
resolve: nodes in: xml
	| oldXmlElement |
	
	oldXmlElement := xmlElement. 
	xmlElement := xml.
	[ ^ self 
		resolve: nodes first 
		continueWith: nodes allButFirst ]
	ensure: [ xmlElement := oldXmlElement ]