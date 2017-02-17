*DeepTraverser
withDeep: aBlock1 collect: aBlock2 as: aClass
	| result |
	result := aClass new.
	self 
		withDeep: aBlock1 
		do: [ :each | result add: (aBlock2 value: each) ].
	^ result.