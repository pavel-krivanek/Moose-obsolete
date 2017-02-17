tests
testUpdateStatement

	self 
		parse: 'Update P_xxx_CH_BLA_MO set Y_X = 1 where YYY_NX_N = <%BLA_MO>'
		rule: #updateStatement.