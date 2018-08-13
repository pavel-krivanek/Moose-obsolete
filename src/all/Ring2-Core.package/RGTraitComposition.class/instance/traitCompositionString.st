as yet unclassified
traitCompositionString

	self transformations isEmpty ifTrue: [ ^ '{}' ].
	
	^String streamContents: [ :stream | 
		self transformations 
			do: [ :each | stream nextPutAll: each traitTransformationString ]
			separatedBy: [ stream nextPutAll: ' + ' ] ]	
	