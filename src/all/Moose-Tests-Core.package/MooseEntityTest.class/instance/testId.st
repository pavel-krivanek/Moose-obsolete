tests
testId
	MooseEntity setMooseID: SmallInteger maxVal - 2.
	self should:  [ 10 timesRepeat: [ MooseEntity freshID ]  ] raise: Notification.
	
	self assert: MooseEntity mooseDev notNil.