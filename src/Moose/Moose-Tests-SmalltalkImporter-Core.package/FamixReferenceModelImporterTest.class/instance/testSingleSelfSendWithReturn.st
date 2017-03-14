reference model invocations
testSingleSelfSendWithReturn
	"self debug: #testSingleSelfSendWithReturn"

	| definingClassName invocations calleeMethodName callingMethodUniqueName |
	"We want to make sure that we represent well
	TheRoot>>returningSingleSelfSend

		^self accessSharedVariableFromTheInstanceSide"
	calleeMethodName := #accessSharedVariableFromTheInstanceSide.
	definingClassName := TheRoot mooseName.
	callingMethodUniqueName := (TheRoot >> #returningSingleSelfSend) mooseName.
	invocations := self model allInvocations
		select: [ :invocation | 
			invocation signature = (FAMIXNameResolver signatureFromSmalltalkSelectorOn: calleeMethodName)
				and: [ invocation sender mooseName = callingMethodUniqueName ] ].
	self assert: invocations size equals: 1