tests
testInterceptingMessageByPerform

	| actual |
	actual := ghost perform: #someMessage.
	
	self assert: actual selector equals: #someMessage