accessing
computeResult
	| viewRenderer referencingMethods |
	viewRenderer := self model allModelClasses entityNamed: #'Smalltalk::MOViewRenderer'.
	referencingMethods := viewRenderer incomingReferences collect: [:each | each from].
	^ (referencingMethods select: [ :each | 
		each parentType isSUnitTestCase not and: [
			each outgoingInvocations anySatisfy: [:inv | inv signature beginsWith: 'nodes:']]]) asMooseGroup