accessing
computeResult
	| interestingAnnotations |
	interestingAnnotations := (self model allAnnotationTypes select: [ :each | each name beginsWith: #MSEProperty:type:]) flatCollect: #instances.
	^ interestingAnnotations select: [ :each | 
			each attributes first value anySatisfy: [ :c | c = Character space ] ]