tests
testDeepDo
	| trace |
	trace := OrderedCollection new.
	1 
		deep: [ :each | self nextGraphElementsFrom: each ]
		do: [ :each | trace add: each ].
	self assert: trace equals: #(2 3) asOrderedCollection