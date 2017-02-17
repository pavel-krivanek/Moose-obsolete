instance creation
newElement
	^ self nodeFactory newElement
		configuration: self configuration