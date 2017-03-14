tests
testColumnConstraintCheck

	self 
		parse: 'CHECK(IsFilledRectangle in (''Y'',''N''))' 
		rule: #columnConstraint.
