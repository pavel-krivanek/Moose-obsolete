matching
matchingRangesIn: anObject
	| result |
	result := OrderedCollection new.
	self 
		matchingRangesIn: anObject
		do: [ :each | result addLast: each ].
	^ result