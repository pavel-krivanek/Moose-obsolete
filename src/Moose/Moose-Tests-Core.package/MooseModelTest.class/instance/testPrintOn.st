tests
testPrintOn
	| model |
	model := MooseModel new.
	self assert: model printString equals: 'a MooseModel #noname(0)'.
	model := MooseModel new.
	model name: 'hello'.
	self assert: model printString equals: 'a MooseModel #hello(0)'.
	model := MooseModel new.
	model name: 'hello2'.
	model add: MooseEntity new.
	self assert: model printString equals: 'a MooseModel #hello2(1)'.
	self assert: MooseModel meta printString equals: 'a FMMetaRepository'