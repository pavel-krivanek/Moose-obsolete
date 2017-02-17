as yet unclassified
testMixed
	
	self parse: 
'
   let a = 3
          +1  
   let b = 1
   a + b' 
   rule: #seqBlock.

	self assert: result size = 1.
	self assert: result first first first = 'a'.
	self assert: result first first second first = 3.
	self assert: result first first second second = 1.

	self assert: result first second first first first = 'b'.
	self assert: result first second first first second first = 1.
	self assert: result first second first second first = 'a'.			