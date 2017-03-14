instance creation
newDocument
	^ self nodeFactory newDocument
		configuration: self configuration