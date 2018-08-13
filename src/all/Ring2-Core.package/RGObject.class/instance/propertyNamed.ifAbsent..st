properties
propertyNamed: annotationName ifAbsent: exceptionBlock 

	^ self properties
			at: annotationName
			ifAbsent: [ exceptionBlock value ]