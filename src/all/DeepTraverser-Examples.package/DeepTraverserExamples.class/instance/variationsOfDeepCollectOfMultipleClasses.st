examples-start-object
variationsOfDeepCollectOfMultipleClasses
	<gtExample>
	| result1 result2 result3 result4 |
	
	result1 := { Collection . Exception } deepCollect: #subclasses as: Set.	
	result2 := (Collection deepCollect: #subclasses as: Set) , (Exception deepCollect: #subclasses as: Set).
	result3 := ({ Collection } deepCollect: #subclasses as: Set) , ({ Exception } deepCollect: #subclasses as: Set).
	result4 := (Collection allSubclasses , Exception allSubclasses) asSet.
	
	self assert: result1 = result2.
	self assert: result2 = result3.
	self assert: result3 = result4.
	self assert: result4 = result1.