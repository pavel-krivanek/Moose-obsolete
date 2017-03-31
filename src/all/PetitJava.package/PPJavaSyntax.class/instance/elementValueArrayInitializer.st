grammar
elementValueArrayInitializer

	^ (self tokenFor: '{') ,
		(elementValue , 
			((self tokenFor: ',') , elementValue ) star
		) optional ,
		((self tokenFor: ',') optional ),
	  (self tokenFor: '}')