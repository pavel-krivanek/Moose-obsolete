tests
testBehaviorWithUnategorizedMethod
	| newBehavior method |
	
	newBehavior := self behaviorClass named: #SomeClass.
	self assert: newBehavior name equals: #SomeClass.
	self assert: (newBehavior hasUnresolvedAll: #(localMethods protocols)).
	newBehavior isTrait ifFalse: [  
		self assert: (newBehavior hasUnresolved: #superclass).].
	self assert: (newBehavior methods isEmpty).
	self assert: (newBehavior protocols isEmpty).

	method := RGMethod named: #someMethod parent: newBehavior. 
	newBehavior addLocalMethod: method.
	
	self assert: (newBehavior hasResolved: #tagsForMethods).
	self assert: newBehavior protocols size equals: 1.
	self assert: newBehavior protocols first equals: 'as yet unclassified'.
	newBehavior cleanProtocols.

	self assert: newBehavior protocols size equals: 1.
	self assert: newBehavior protocols first equals: 'as yet unclassified'.
	
	newBehavior cleanLocalMethods.
	self assert: (newBehavior protocols isEmpty).
	
