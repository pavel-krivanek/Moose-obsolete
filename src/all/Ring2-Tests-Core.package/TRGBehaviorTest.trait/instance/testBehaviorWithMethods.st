tests
testBehaviorWithMethods
	| newBehavior |
	newBehavior := self behaviorClass named: #SomeClass.
	self assert: newBehavior name equals: #SomeClass.
	self
		assert: (newBehavior hasUnresolvedAll: #(localMethods protocols)).
	newBehavior isTrait
		ifFalse: [ self assert: (newBehavior hasUnresolved: #superclass) ].
	self assert: newBehavior localMethods isEmpty.
	1 to: 10 do: [ :i | 
		| m |
		m := RGMethod
			named: 'method' , i asString
			parent: newBehavior.
		newBehavior addLocalMethod: m ].
	self assert: (newBehavior hasResolved: #localMethods).
	self
		assert:
			(newBehavior localMethods
				allSatisfy: [ :each | each environment = newBehavior environment ]).
	self assert: newBehavior localMethods size equals: 10.
	(newBehavior localMethods first: 4)
		do: [ :each | newBehavior removeLocalMethod: each ].
	self assert: newBehavior localMethods size equals: 6.
	newBehavior cleanLocalMethods.
	self assert: newBehavior localMethods isEmpty