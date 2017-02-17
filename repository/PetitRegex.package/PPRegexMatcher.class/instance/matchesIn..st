matching
matchesIn: anObject
	| result |
	result := OrderedCollection new.
	self 
		matchesIn: anObject
		do: [ :each | result addLast: each ].
	^ result