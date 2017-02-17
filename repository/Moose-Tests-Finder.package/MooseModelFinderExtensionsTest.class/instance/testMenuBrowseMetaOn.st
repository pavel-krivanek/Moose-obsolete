tests
testMenuBrowseMetaOn
	| builder |
	builder := PragmaMenuBuilder new.
	self assert: builder itemList isNil.
	MooseModel menuBrowseMetaOn: builder.
	self assert: builder itemList isCollection.
	self assert: builder itemList notEmpty.
