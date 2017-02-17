testing
testWithChildScopesDo
	| result |
	result := ''.
	root withAllChildScopesDo: [ :each | result := result , each name ].
	self assert: result equals: 'abcd'.
	result := ''.
	root allChildScopesDo: [ :each | result := result , each name ].
	self assert: result equals: 'bcd'