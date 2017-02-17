actions
storeCVSInfoTo: aSourceCodeLineList fromModel: aModel 
	 
	aSourceCodeLineList 
		doWithIndex: 
			[:scl :index |  
			DudeCVSAnnotateCleaner 
				parse: (lineAnnotations at: index) 
				andStoreTo: scl 
				inModel: aModel]