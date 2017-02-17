enumeration
examplesCollect: aBlock
	| examples |
	examples := OrderedCollection new: 1000.
	self examplesDo: [ :class :method :example | 
		examples add: (aBlock value: example) ].
	^ examples