accessing
annotationType: anAnnotationType
	annotationType := FMMultivalueLink on: self
					update: #instances
					from: self annotationType
					to: anAnnotationType