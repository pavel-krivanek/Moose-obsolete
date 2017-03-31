actions
specificClean: aStringList 
	 
	lineAnnotations := OrderedCollection new: aStringList size. 
	^aStringList 
		collect: 
			[:aLine |  
			DudeCVSAnnotateCleaner 
				extractText: aLine 
				andDoWithAnnotation: [:annotation | self storeAnnotation: annotation]]