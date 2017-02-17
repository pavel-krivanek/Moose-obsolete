tests
testReceivingUnknownType
	"self debug: #testReceivingUnknownType"
	
	| invocation |
	invocation := self invocationFromOutputServerAcceptMethodTo: #'isDestinationFor:(Object)'.

	self assert: invocation notNil.
	self assert: invocation receiver isNil