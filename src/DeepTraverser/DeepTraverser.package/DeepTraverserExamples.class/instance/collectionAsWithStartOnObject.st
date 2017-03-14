examples-start-object
collectionAsWithStartOnObject
	<gtExample>
	| result1 result2 |
	
	result1 := { Object }
		withDeep: #subclasses 
		flatCollect: [ :each | each methods ].
		
	result2 := Object
		withDeep: #subclasses 
		flatCollect: [ :each | each methods ].
	
	self assert: result1 = result2.