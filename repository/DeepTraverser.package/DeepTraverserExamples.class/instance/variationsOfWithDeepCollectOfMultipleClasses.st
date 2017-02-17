examples-start-object
variationsOfWithDeepCollectOfMultipleClasses
	<gtExample>
	| result1 result2 result3 result4 |
	
	result1 := { Collection . Exception } withDeepCollect: #subclasses as: Set.	
	result2 := (Collection withDeepCollect: #subclasses as: Set) , (Exception withDeepCollect: #subclasses as: Set).
	result3 := ({ Collection } withDeepCollect: #subclasses as: Set) , ({ Exception } withDeepCollect: #subclasses as: Set).
	result4 := (Collection withAllSubclasses , Exception withAllSubclasses) asSet.
	
	self assert: result1 = result2.
	self assert: result2 = result3.
	self assert: result3 = result4.
	self assert: result4 = result1.