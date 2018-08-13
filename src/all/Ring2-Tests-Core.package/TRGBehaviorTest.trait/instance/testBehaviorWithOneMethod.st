tests
testBehaviorWithOneMethod
	| newBehavior method |
	newBehavior := self behaviorClass named: #SomeClass.
	self assert: newBehavior name equals: #SomeClass.
	self
		assert: (newBehavior hasUnresolvedAll: #(localMethods protocols)).
	newBehavior isTrait
		ifFalse: [ self assert: (newBehavior hasUnresolved: #superclass) ].
	self assert: newBehavior localMethods isEmpty.
	method := RGMethod named: #someMethod parent: newBehavior.
	self assert: method environment == newBehavior environment.
	self assert: newBehavior localMethods isEmpty.	"we do not add the method to the behavior"
	newBehavior := self behaviorClass named: #SomeClass.
	newBehavior cleanLocalMethods.
	self assert: (newBehavior hasResolved: #localMethods).
	self assert: newBehavior localMethods isEmpty.
	method := RGMethod named: #someMethod parent: newBehavior.
	newBehavior addLocalMethod: method.
	self assert: method environment == newBehavior environment.
	self assert: (newBehavior hasResolved: #localMethods).
	self assert: newBehavior localMethods anyOne name equals: #someMethod.
	newBehavior removeLocalMethod: method.
	self assert: newBehavior localMethods isEmpty.
	self assert: (newBehavior hasResolved: #localMethods)