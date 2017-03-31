examples-specs
withVSwithout
	<gtExample>
	| result1 result2 diff21 diff12 |
	
	result1 := { Object }
		deep: #subclasses 
		flatCollect: [ :each | each methods ].
		
	result2 := Object
		withDeep: #subclasses 
		flatCollect: [ :each | each methods ].
	
	self assert: result1 ~= result2.
	self assert: result1 asSet ~= result2 asSet.
	
	self assert: (diff21 := result2 asSet difference: result1 asSet) notEmpty.
	self assert: (diff12 := result1 asSet difference: result2 asSet) isEmpty.
	
	self assert: (diff21 allSatisfy: [ :cm | cm methodClass = Object ]).
	self assert: diff21 asSet = Object methods asSet