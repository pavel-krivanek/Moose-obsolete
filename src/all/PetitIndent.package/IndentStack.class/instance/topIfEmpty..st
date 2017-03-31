as yet unclassified
topIfEmpty: block
	self isEmpty ifTrue: [ ^ block value ].
	^ self top