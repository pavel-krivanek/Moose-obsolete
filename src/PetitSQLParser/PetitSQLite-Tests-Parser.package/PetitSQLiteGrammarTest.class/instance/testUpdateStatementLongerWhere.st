tests
testUpdateStatementLongerWhere
		
	self 
		parse: 'Update P_xxx_BLABLA_MO set XXX_OR_N = 100 where xxxID = <@xxxID> and yyyyID = <@yyyyID> and BLA_XX_Y = <%OrId>'
		rule: #updateStatement.