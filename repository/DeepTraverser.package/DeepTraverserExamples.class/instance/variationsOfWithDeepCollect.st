examples-start-object
variationsOfWithDeepCollect
	<gtExample>
	| result1 result2 result3 |
	
	result1 := { Collection } withDeepCollect: #subclasses as: Set.	
	result2 := Collection withDeepCollect: #subclasses as: Set.
	result3 := Collection withAllSubclasses asSet.
	
	self assert: result1 = result2.
	self assert: result2 = result3.
	self assert: result3 = result1.