tests
testUpdateStatementLongerWhere
	super testUpdateStatementLongerWhere.
	self assert: (result isMemberOf: SQLUpdateStatementNode).
	self assert: result table equals: 'P_xxx_BLABLA_MO'