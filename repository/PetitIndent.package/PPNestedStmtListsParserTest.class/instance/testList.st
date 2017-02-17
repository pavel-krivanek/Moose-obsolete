as yet unclassified
testList
	self parse: 
'
 stmtA
 stmtB
 stmtC
' rule: #list.


	self assert: result size = 3.