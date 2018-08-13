tests
testNewBehavior
	| newBehavior newSuperclass |
	newBehavior := self behaviorClass unnamed.
	self assert: newBehavior isRingResolved.
	self
		assert: (newBehavior hasUnresolvedAll: #(localMethods protocols)).
	newBehavior isTrait
		ifFalse: [ self assert: (newBehavior hasUnresolved: #superclass) ].
	newBehavior name: #SomeClass.
	self assert: newBehavior name equals: #SomeClass.
	self assert: (newBehavior hasResolvedName).
	self deny: (newBehavior hasUnresolved: #name).
	newBehavior isTrait
		ifFalse: [ self assert: newBehavior superclass isRingResolved not ].
	"	self assert: (newBehavior superclass environment == newBehavior environment).
"
	newSuperclass := RGClass
		named: #MySuperclass
		parent: newBehavior environment.
	self assert: newSuperclass environment == newBehavior environment.
	self
		assert: (newSuperclass hasUnresolvedAll: #(superclass localMethods protocols))