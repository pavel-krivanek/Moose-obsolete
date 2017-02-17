tests
testNoAction
	self 
		parse: ' NO ACTION ' "result should be 'CASCADE' "
		rule: #noAction.

	self 
		parse: 'No aCtion ' "result should be 'No aCtion' "
		rule: #noAction.