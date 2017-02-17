accessing
parentAnnotationInstance: anAnnotationInstance
	parentAnnotationInstance := FMMultivalueLink on: self
					update: #attributes
					from: self parentAnnotationInstance  
					to: anAnnotationInstance