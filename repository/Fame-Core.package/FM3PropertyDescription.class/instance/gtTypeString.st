ui
gtTypeString
	^ String streamContents: [ :s | 
		s nextPutAll: self type name. 
		self isMultivalued ifTrue: [ s nextPutAll: ' *'].
		self isDerived ifTrue: [ s nextPutAll: ' /'] ]