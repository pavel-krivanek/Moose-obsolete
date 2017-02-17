tests
testDefaultSourceLanguage
	| model |
	MooseModel resetMeta.
	model := MooseModel new.
	model
		importFromMSEStream:
			'(
		(FAMIX.CustomSourceLanguage (id: 1) (name ''SomeLanguage''))
		(FAMIX.Class (id: 2) (name ''ClassWithoutSourceA''))
		(FAMIX.Class (id: 3) (name ''ClassWithoutSourceB''))
	)' readStream.
	self assert: (model allClasses entityNamed: 'ClassWithoutSourceA') declaredSourceLanguage isNil.
	self assert: (model allClasses entityNamed: 'ClassWithoutSourceB') declaredSourceLanguage isNil.
	self
		assert: (model allClasses entityNamed: 'ClassWithoutSourceA') sourceLanguage
		equals: (model allClasses entityNamed: 'ClassWithoutSourceB') sourceLanguage.
	self assert: model sourceLanguage name equals: 'SomeLanguage'