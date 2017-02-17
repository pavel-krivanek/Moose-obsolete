*Moose-RoassalPaintings
viewAnnotationConstellationOn: view
	(FAMIXAnnotationTypeGroup withAll: (self flatCollectAsSet: #annotationTypes)) viewAnnotationConstellationOf: self on: view