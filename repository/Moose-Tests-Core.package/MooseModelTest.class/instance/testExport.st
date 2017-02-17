tests
testExport
	| stream |
	stream := WriteStream on: String new.
	MooseModel export: model to: stream.
	self assert: stream contents equals: '()'.
	model add: (FAMIXClass new name: 'Foo').
	stream := WriteStream on: String new.
	MooseModel export: model to: stream.
	self
		assert: stream contents
		equals:
			'(
	(FAMIX.Class (id: 1)
		(name ''Foo'')))'