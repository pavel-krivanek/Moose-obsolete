reference model invocations
testSingleSelfSendOnClassSide
	"self debug: #testSingleSelfSendOnClassSide"

	| definingClassName invocations calleeMethodName callingMethodUniqueName |
	"Want to represent
	TheRoot class>>accessSharedVariableFromTheClassSide
			TheRootSharedVariable := 4"
	calleeMethodName := #accessSharedVariableFromTheClassSide.
	definingClassName := TheRoot class mooseName.
	callingMethodUniqueName := (TheRoot class >> #singleSelfSendOnClassSide) mooseName.
	invocations := self model allInvocations
		select: [ :invocation | 
			invocation signature = (FAMIXNameResolver signatureFromSmalltalkSelectorOn: calleeMethodName)
				and: [ invocation sender mooseName = callingMethodUniqueName ] ].
	self assert: invocations size equals: 1.
	self assert: invocations first receiver mooseName equals: #'Smalltalk::TheRoot_class.singleSelfSendOnClassSide().self'