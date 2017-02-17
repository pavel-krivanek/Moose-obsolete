testing
testModel
	self
		assert: (model allClasses entityNamed: #Smalltalk::DudeAnotherClass asSymbol) sourceText
		equals:
			'Smalltalk::DudeAnotherClass


methodB
	| a b c |
	a := 0.
	b := 1.
	c := 2.
	a = 0 ifTrue: [
		b = 1 ifTrue: [
			c = 2 ifTrue: [
				Transcript show: ''Daaaaa!''
			]
		]
	].
	^a + b + c'