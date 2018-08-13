tests
testBehaviorWithUnategorizedMethods
	| newBehavior method1 method2 |
	newBehavior := self behaviorClass named: #SomeClass.
	self assert: newBehavior name equals: #SomeClass.
	self
		assert: (newBehavior hasUnresolvedAll: #(localMethods tagsForMethods)).
	newBehavior isTrait
		ifFalse: [ self assert: (newBehavior hasUnresolved: #superclass) ].
	self assert: newBehavior methods isEmpty.
	self assert: newBehavior protocols isEmpty.
	method1 := RGMethod named: #method1 parent: newBehavior.
	method2 := RGMethod named: #method2 parent: newBehavior.
	newBehavior addLocalMethod: method1.
	newBehavior addLocalMethod: method2.
	self assert: (newBehavior hasResolved: #tagsForMethods).
	self assert: newBehavior protocols size equals: 1.
	self assert: newBehavior protocols first equals: 'as yet unclassified'.
	newBehavior cleanProtocols.
	self assert: newBehavior protocols size equals: 1.
	self assert: newBehavior protocols first equals: 'as yet unclassified'.
	newBehavior cleanLocalMethods.
	self assert: newBehavior protocols isEmpty