tests
testNameAndUniqueNameForNotNamed

	| mseMethod mseMethodName |
	mseMethodName := FAMIXNameResolver 
				uniqueNameForMethodWithSmalltalkSelector: #printOn:
				hasClassScope: false
				class: LANNode mooseName.
	mseMethod := self model entityNamed: mseMethodName.
	self assert: (mseMethod outgoingInvocations anySatisfy: [:each | each signature = #'printString()'])