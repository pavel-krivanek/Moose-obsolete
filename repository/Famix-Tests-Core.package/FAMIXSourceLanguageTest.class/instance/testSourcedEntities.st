tests
testSourcedEntities
	| model |
	MooseModel resetMeta.
	model := MooseModel new.
	model
		importFromMSEStream:
			'(
		(FAMIX.CustomSourceLanguage (id: 1) (name ''SomeLanguage''))
		(FAMIX.Class (id: 2) (name ''ClassWithSource'') (declaredSourceLanguage (ref: 1)))
		(FAMIX.Class (id: 3) (name ''ClassWithoutSource''))
	)' readStream.
	self assert: (model allClasses entityNamed: 'ClassWithSource') declaredSourceLanguage name equals: 'SomeLanguage'.
	self assert: (model allClasses entityNamed: 'ClassWithSource') declaredSourceLanguage isAttached.
	self assert: (model allClasses entityNamed: 'ClassWithSource') sourceLanguage name equals: 'SomeLanguage'.
	self assert: (model allClasses entityNamed: 'ClassWithoutSource') sourceLanguage isUnknown