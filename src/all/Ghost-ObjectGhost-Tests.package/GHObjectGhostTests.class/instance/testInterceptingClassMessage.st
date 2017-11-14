tests
testInterceptingClassMessage

	| actual |
	ghost ghostBehaviour clearMetaMessages.
	
	actual := ghost class.
	
	self assert: actual selector equals: #class