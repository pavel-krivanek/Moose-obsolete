accessing
rootFolder
	^ self privateState 	
		attributeAt: #rootFolder 
		ifAbsent: [	Smalltalk imageDirectory asFileReference  / 'src' / self name]