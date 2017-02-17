utils
nextElementsFor: each inGraph: graph
	^ graph at: each ifAbsent: [ #() ]