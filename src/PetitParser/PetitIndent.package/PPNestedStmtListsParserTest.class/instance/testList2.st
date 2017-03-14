as yet unclassified
testList2
	self parse: 
'
 stmtA
 stmtB
    stmtC1
    stmtC2
 stmtD
' rule: #list.


	self assert: result size = 4.
	self assert: result third size = 2.