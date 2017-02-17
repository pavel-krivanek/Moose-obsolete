tests
testColumnConstraintDefaultEmptyString

	self 
		parse: ' DEFAULT '''''
		rule: #defaultConstraint.