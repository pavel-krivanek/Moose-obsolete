testing-messages
testKeywordMethod1
	super testKeywordMethod1.
	self assert: self result isMethod.
	self assert: self result selector equals: #to:.
	self assert: self result keywordsPositions equals: #(1) asIntegerArray.		
	self assert: self result arguments size equals: 1.
	self assert: self result arguments first isVariable.
	self assert: self result arguments first name equals: 'a'.
	self assert: self result body temporaries isEmpty.
	self assert: self result body statements isEmpty