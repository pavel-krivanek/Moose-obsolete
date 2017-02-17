testing
testBlock
	| block  |

	block := self nestedBlock.
	
	self assert: block parse: '{}'.
	self assert: result size = 3.
	self assert: result first = ${.
	self assert: result third = $}.
	
	self assert: block parse: '{ }'.
	self assert: result size = 3.
	self assert: result first = ${.
	self assert: result third = $}.	
		
	self assert: block parse: '{ { } }'.
	self assert: result size = 3.
	self assert: result first = ${.
	self assert: result third = $}.	
		
		
	self assert: block parse: '{ { {{} } } }'.
	self assert: result isCollection.
	self assert: result  size = 3.
	self assert: result  first = ${.
	self assert: result  second first second first = ${.
	self assert: result  second first second second first second first = ${.
	self assert: result  second first second second first second third = $}.
	self assert: result  second first second third = $}.	
	self assert: result  third = $}.
	
	
	self assert: block parse: '{ { 
		{{} } 
	} }'.
	self assert: result isCollection.
	self assert: result  size = 3.
	self assert: result  first = ${.
	self assert: result  second first second first = ${.
	self assert: result  second first second second first second first = ${.
	self assert: result  second first second second first second third = $}.
	self assert: result  second first second third = $}.	
	self assert: result  third = $}.				