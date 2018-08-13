tests
testBehaviorWithProtocols
	| newBehavior |
	newBehavior := self behaviorClass named: #SomeClass.
	self assert: newBehavior name equals: #SomeClass.
	self
		assert: (newBehavior hasUnresolvedAll: #(localMethods tagsForMethods)).
	newBehavior isTrait
		ifFalse: [ self assert: (newBehavior hasUnresolved: #superclass) ].
	self assert: newBehavior methods isEmpty.
	1 to: 10 do: [ :i | 
		newBehavior addProtocol: ('protocol' , i asString) asSymbol ].
	self assert: (newBehavior hasResolved: #tagsForMethods).
	self assert: (newBehavior protocols allSatisfy: #isSymbol).
	self assert: newBehavior protocols size equals: 10.
	(newBehavior protocols first: 4)
		do: [ :each | newBehavior removeProtocol: each ].
	self assert: newBehavior protocols size equals: 6.
	newBehavior cleanProtocols.
	self assert: newBehavior protocols isEmpty