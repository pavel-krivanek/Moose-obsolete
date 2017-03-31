as yet unclassified
testExprArithmetics5
	self parse: 
' 
   1
  +2
 - 3' rule: #seqBlock.

	self assert: result size = 3.
	self assert: result first = 1.
	self assert: result second = 2.
	self assert: result third = 3.