as yet unclassified
testList3
	self parse: 
'
 stmtA
 stmtB
    stmtC1
      stmtC11
 stmtD
    stmtE1
    stmtE2
 stmtF
 stmtG
' rule: #list.


	self assert: result size = 7.
	self assert: result third size = 2.
	self assert: result third second size = 1.
	self assert: result third second first = 'stmtC11'.
	self assert: result fourth = 'stmtD'.
	self assert: result fifth size = 2.