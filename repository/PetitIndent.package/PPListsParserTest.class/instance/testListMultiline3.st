as yet unclassified
testListMultiline3

	string :=
'
1) a
  a
2) b
   b
'.
	self fail: string rule: #start.
	self assert: result isPetitFailure.