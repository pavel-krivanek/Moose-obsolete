testing-messages
testBinaryMethod3
	super testBinaryMethod3.
	self assert: result isMethod.
	self assert: result selector equals: #+.
	self assert: result keywordsPositions equals: #(1) asIntegerArray.	
	self assert: result arguments size equals: 1.
	self assert: result arguments first isVariable.
	self assert: result arguments first name equals: 'a'.
	self assert: result body temporaries isEmpty.
	self assert: result body statements size equals: 1