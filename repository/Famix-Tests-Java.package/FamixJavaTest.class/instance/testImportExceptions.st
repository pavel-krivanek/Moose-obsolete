tests
testImportExceptions
	| model |
	MooseModel resetMeta.
	model := MooseModel new.
	model
		importFromMSEStream:
			'(
				(FAMIX.Class (id: 1) (name ''AClass''))
				(FAMIX.Class (id: 2) (name ''AnotherClass''))
				(FAMIX.Method (id: 3) (name ''method1'') (parentType (ref: 1)))
				(FAMIX.Method (id: 4) (name ''method2'') (parentType (ref: 1)))
				(FAMIX.Method (id: 5) (name ''method3'') (parentType (ref: 1)))
				(FAMIX.Method (id: 6) (name ''method4'') (parentType (ref: 1)))
				(FAMIX.Class (id: 10) (name ''ExceptionA''))
				(FAMIX.Class (id: 11) (name ''ExceptionB''))
				(FAMIX.DeclaredException (definingMethod (ref: 3)) (exceptionClass (ref: 10)))
				(FAMIX.DeclaredException (definingMethod (ref: 4)) (exceptionClass (ref: 10)))
				(FAMIX.DeclaredException (definingMethod (ref: 4)) (exceptionClass (ref: 11)))
				(FAMIX.ThrownException (definingMethod (ref: 3)) (exceptionClass (ref: 10)))
				(FAMIX.ThrownException (definingMethod (ref: 4)) (exceptionClass (ref: 11)))
				(FAMIX.CaughtException (definingMethod (ref: 5)) (exceptionClass (ref: 11)))
				(FAMIX.CaughtException (definingMethod (ref: 6)) (exceptionClass (ref: 11)))
			)' readStream.
	self assert: model entities size equals: 15.
	self assert: model allDeclaredExceptions size equals: 3.
	self assert: model allThrownExceptions size equals: 2.
	self assert: model allCaughtExceptions size equals: 2.
	model allDeclaredExceptions do: [ :each | self assert: (each definingMethod declaredExceptions includes: each) ].
	model allThrownExceptions do: [ :each | self assert: (each definingMethod thrownExceptions includes: each) ].
	model allCaughtExceptions do: [ :each | self assert: (each definingMethod caughtExceptions includes: each) ]