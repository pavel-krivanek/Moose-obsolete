enumeration
examplesSelect: aBlock
	| examples |
	examples := OrderedCollection new: 1000.
	self examplesDo: [ :class :selector :example | 
		(aBlock value: example) ifTrue: [ examples add: example ] ].
	^ examples