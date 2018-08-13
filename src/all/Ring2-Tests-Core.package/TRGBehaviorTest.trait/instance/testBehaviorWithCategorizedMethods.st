tests
testBehaviorWithCategorizedMethods
	| newBehavior method |
	newBehavior := self behaviorClass named: #SomeClass.
	self assert: newBehavior name equals: #SomeClass.
	self
		assert: (newBehavior hasUnresolvedAll: #(localMethods protocols)).
	newBehavior isTrait
		ifFalse: [ self assert: (newBehavior hasUnresolved: #superclass) ].
	self assert: newBehavior ask methods isEmpty.
	self assert: newBehavior ask protocols isEmpty.
	method := RGMethod named: #someMethod parent: newBehavior.
	newBehavior addLocalMethod: method.
	self assert: (newBehavior hasResolved: #tagsForMethods).
