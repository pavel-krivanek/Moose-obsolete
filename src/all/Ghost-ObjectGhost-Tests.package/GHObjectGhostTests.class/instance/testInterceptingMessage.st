tests
testInterceptingMessage

	| actual |
	actual := ghost someMessage.
	
	self assert: actual selector equals: #someMessage