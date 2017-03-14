examples-start-object
variationsOfDeepCollect
	<gtExample>
	| result1 result2 result3 |
	
	result1 := { Collection } deepCollect: #subclasses as: Set.	
	result2 := Collection deepCollect: #subclasses as: Set.
	result3 := Collection allSubclasses asSet.
	
	self assert: result1 = result2.
	self assert: result2 = result3.
	self assert: result3 = result1.