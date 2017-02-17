testing
testAccessing 
	 
	| array | 
	array := DudeBooleanVector new: 10. 
	array at: 1 put: true. 
	self assert: (array at: 1) == true. 
	self assert: (array at: 2) == false. 
	self assert: (array at: 4) == false. 
	self assert: (array at: 7) == false. 
	self assert: (array at: 10) == false