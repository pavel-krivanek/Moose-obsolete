accessing
computeResult 
	
	^ self model allAnnotationTypes 
			entityNamed: #'MSEClass:super:' 
			ifAbsent: [#()] 
			ifPresent: [:ann | 
				(ann instances select: [:each | each attributes second value isSymbol not]) asMooseGroup ]