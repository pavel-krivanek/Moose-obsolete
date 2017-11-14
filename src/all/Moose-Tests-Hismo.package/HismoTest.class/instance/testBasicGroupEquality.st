testing - history group
testBasicGroupEquality
	self assert: HismoHistoryGroup new equals: HismoHistoryGroup new.
	self deny: HismoHistoryGroup new = MooseGroup new