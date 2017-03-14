accessing
annotatedEntity: anEntity
	annotatedEntity := FMMultivalueLink on: self
					update: #annotationInstances
					from: self annotatedEntity
					to: anEntity