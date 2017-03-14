as yet unclassified
testMixed2
	
	self parse: 
'
   let a = 3
         + 1 in  
    let b = 1
    a + b' 
   rule: #seqBlock.

	"seq block with one let"
	self assert: result size = 1.

	"first let"
	result := result first.
	self assert: result size = 2.
	self assert: result first first = 'a'.
	self assert: result first second first = 3.
	self assert: result first second second = 1.
	
	self assert: result second first first first = 'b'.
	