properties
sumOfPropertyNamed: aPropertyName 
	 
	^self 
		inject: 0 
		into: 
			[:sum :each |  
			sum 
				+ 
					(each 
						propertyNamed: aPropertyName 
						ifNil: [0])]