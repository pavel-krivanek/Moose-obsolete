*DeepTraverser
withDeep: aBlock1 select: aBlock2 collect: aBlock3 as: aClass
	| result |
	result := aClass new.
	self 
		withDeep: aBlock1 
		do: [ :each | (aBlock2 value: each) 
			ifTrue: [ result add: (aBlock3 value: each) ] ].
	^ result.