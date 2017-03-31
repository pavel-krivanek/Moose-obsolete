accessing
computeResult 
	
	^ self model allAnnotationTypes 
			entityNamed: #'MSEClass:super:' 
			ifAbsent: [#()] 
			ifPresent: [ :ann | 
				(ann instances select: [ :each | 
					| annInstances packageInstance |
					annInstances := each annotatedEntity annotationInstances.
					packageInstance := annInstances detect: [ :inst | inst name = #package: ] ifNone: [ nil ].
					packageInstance
						ifNil: [false]
						ifNotNil: [
							| packageName |
							packageName := packageInstance attributes first value.
							each attributes first value prefixMatchesRegex: packageName ]]) asMooseGroup ]