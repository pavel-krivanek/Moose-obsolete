tests
testUpdateStatement
	super testUpdateStatement.
	self assert: (result isMemberOf: SQLUpdateStatementNode).
	self assert: result table equals: 'P_xxx_CH_BLA_MO'