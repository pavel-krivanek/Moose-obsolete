*roassal2-exportervw
visualworksName
	^ self == TestCase ifTrue: ['Smalltalk.SUnit.TestCase'] ifFalse: [self name]