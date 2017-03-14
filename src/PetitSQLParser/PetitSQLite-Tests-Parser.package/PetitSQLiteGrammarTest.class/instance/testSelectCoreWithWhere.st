tests
testSelectCoreWithWhere

	self 
		parse: 'Select user_id
		from usertable
		where user_id > 0'
		rule: #selectCore.