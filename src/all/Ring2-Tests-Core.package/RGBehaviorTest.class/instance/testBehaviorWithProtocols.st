tests
testBehaviorWithProtocols
	| newBehavior |
	
	newBehavior := self behaviorClass named: #SomeClass.
	self assert: (newBehavior name = #SomeClass).
	self assert: (newBehavior hasUnresolvedAll: #(superclass localMethods protocols)).
	self assert: (newBehavior methods isEmpty).

	1 to: 10 do: [ :i |
		newBehavior addMethodTag: ('tag', i asString) asSymbol  ].
	
	self assert: (newBehavior protocols allSatisfy: #isSymbol).
	
	self assert: (newBehavior protocols size = 10).
	(newBehavior protocols first: 4) do: [:each | newBehavior removeProtocol: each ].
	self assert: (newBehavior protocols size = 6).
	newBehavior cleanProtocols.
	self assert: (newBehavior protocols isEmpty).
