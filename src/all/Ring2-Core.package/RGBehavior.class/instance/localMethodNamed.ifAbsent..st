queries - methods
localMethodNamed: aSymbol ifAbsent: aBlock

	self localMethodsDo: [ :each | (each name = aSymbol) ifTrue: [^ each]].
	
	^ aBlock value.