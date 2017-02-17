tests
testReceivingFormalParameter
	"self debug: #testReceivingFormalParameter"

	| invocation |
	invocation := self invocationFromOutputServerAcceptMethodTo: #'addressee()'.
	self assert: invocation notNil.
	self assert: invocation receiver name equals: #thePacket