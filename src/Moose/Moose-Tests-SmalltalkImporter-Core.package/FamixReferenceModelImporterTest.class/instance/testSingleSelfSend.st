reference model invocations
testSingleSelfSend
	"self run: #testSingleSelfSend"

	"self debug: #testSingleSelfSend"

	| invocations calleeMethodName callingMethodUniqueName |
	"We want to make sure that we represent well that 
	TheRoot>>singleSelfSend

			self accessSharedVariableFromTheInstanceSide"
	calleeMethodName := #accessSharedVariableFromTheInstanceSide.
	callingMethodUniqueName := (TheRoot >> #singleSelfSend) mooseName.
	invocations := self model allInvocations
		select: [ :invocation | 
			invocation signature = (FAMIXNameResolver signatureFromSmalltalkSelectorOn: calleeMethodName)
				and: [ invocation sender mooseName = callingMethodUniqueName ] ].
	self assert: invocations size equals: 1