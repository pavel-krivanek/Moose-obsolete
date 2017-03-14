examples-start-object
collectionAsStartOnObject
	<gtExample>
	| result1 result2 |
	
	result1 := { Object }
		deep: #subclasses 
		flatCollect: [ :each | each methods ].
		
	result2 := Object
		deep: #subclasses 
		flatCollect: [ :each | each methods ].
	
	self assert: result1 = result2.