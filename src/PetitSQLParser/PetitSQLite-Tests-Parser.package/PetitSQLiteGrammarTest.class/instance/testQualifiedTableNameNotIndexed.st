tests
testQualifiedTableNameNotIndexed

	self 
		parse: 'table.P_xxx_CH_BLA_MO not indexed'
		rule: #qualifiedTableName.