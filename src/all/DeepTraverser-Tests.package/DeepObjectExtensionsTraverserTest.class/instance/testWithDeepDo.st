tests
testWithDeepDo
	| trace |
	trace := OrderedCollection new.
	1 
		withDeep: [ :each | self nextGraphElementsFrom: each ] 
		do: [ :each | trace add: each ].
	self assert: trace equals: #(1 2 3) asOrderedCollection