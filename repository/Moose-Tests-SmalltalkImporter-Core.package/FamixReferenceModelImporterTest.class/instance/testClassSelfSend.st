reference model invocations
testClassSelfSend
	"self debug: #testClassSelfSend"

	| invocations calleeMethodName callingMethodUniqueName referenceModelTheRootMetaclassName |
	"We want to represent
	TheRoot class>>classSend

			Object new
	"
	calleeMethodName := #new mooseName.
	referenceModelTheRootMetaclassName := TheRoot class mooseName.
	callingMethodUniqueName := (TheRoot class >> #classSend) mooseName.
	invocations := self model allInvocations
		select: [ :invocation | 
			invocation signature = (FAMIXNameResolver signatureFromSmalltalkSelectorOn: calleeMethodName)
				and: [ invocation sender mooseName = callingMethodUniqueName ] ].
	self assert: invocations size equals: 1.
	self assert: invocations first receiver mooseName equals: #Smalltalk::Object_class