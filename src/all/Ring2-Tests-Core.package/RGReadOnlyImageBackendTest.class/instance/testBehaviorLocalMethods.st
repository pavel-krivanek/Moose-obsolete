tests
testBehaviorLocalMethods

	| env1 point selectors |
	
	env1 := RGEnvironment new.
	env1 backend: (RGReadOnlyImageBackend for: env1).

	point := Point asRingMinimalDefinitionIn: env1.
	
	self assert: point ask localMethods size equals: Point localMethods size.
	self assert: (point ask localMethods 
		allSatisfy: [:each | each isKindOf: RGMethod]).
	selectors := point ask localMethods collect: [ :each | each ask selector ].
	self assert: (selectors allSatisfy: #isSymbol).
	self assert: selectors asSortedCollection equals: Point localSelectors asSortedCollection.
	
	