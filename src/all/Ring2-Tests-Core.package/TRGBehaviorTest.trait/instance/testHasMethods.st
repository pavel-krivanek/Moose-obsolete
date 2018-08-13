tests
testHasMethods
	| newBehavior |
	newBehavior := self behaviorClass named: #SomeClass.
	self deny: newBehavior hasMethods.
	1 to: 10 do: [ :i | 
		| m |
		m := RGMethod
			named: 'method' , i asString
			parent: newBehavior.
		newBehavior addLocalMethod: m ].
	self assert: newBehavior hasMethods.	
	newBehavior cleanLocalMethods.
	self deny: newBehavior hasMethods.
