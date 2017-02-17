enumeration
examplesSelect: aBlock1 thenDo: aBlock2
	| examples |
	examples := OrderedCollection new: 1000.
	self examplesDo: [ :example |
		(aBlock2 value: example) ifTrue: [ 
			examples add: example.
			aBlock1 value: example ] ].
	^ examples