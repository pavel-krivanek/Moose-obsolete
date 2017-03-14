tests
testMenuCommandOn
	| builder |
	builder := PragmaMenuBuilder new.
	self assert: builder itemList isNil.
	MooseModel menuCommandOn: builder.
	self assert: builder itemList isCollection.
	self assert: builder itemList notEmpty.
