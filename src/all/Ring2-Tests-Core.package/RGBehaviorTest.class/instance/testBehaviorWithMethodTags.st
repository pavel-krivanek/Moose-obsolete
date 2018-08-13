tests
testBehaviorWithMethodTags
	| newBehavior |
	
	newBehavior := self behaviorClass named: #SomeClass.
	self assert: (newBehavior name = #SomeClass).
	self assert: (newBehavior hasUnresolvedAll: #(superclass localMethods protocols)).
	self assert: (newBehavior methods isEmpty).

	1 to: 10 do: [ :i |
		newBehavior addMethodTag: ('tag', i asString) asSymbol  ].
	
	self assert: (newBehavior hasResolved: #tagsForMethods).

	self assert: (newBehavior tagsForMethods allSatisfy: #isSymbol).
	
	self assert: (newBehavior tagsForMethods size = 10).
	(newBehavior tagsForMethods first: 4) do: [:each | newBehavior removeMethodTag: each ].
	self assert: (newBehavior tagsForMethods size = 6).
	newBehavior cleanTagsForMethods.
	self assert: (newBehavior tagsForMethods isEmpty).
