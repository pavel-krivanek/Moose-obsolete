accessing
annotationTypeAttribute: anAnnotationTypeAttribute
	annotationTypeAttribute := FMMultivalueLink on: self
					update: #annotationAttributeInstances
					from: self annotationTypeAttribute
					to: anAnnotationTypeAttribute