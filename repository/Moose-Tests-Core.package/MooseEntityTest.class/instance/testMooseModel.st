tests
testMooseModel
	| element model |
	
	element := MooseEntity new.
	model := MooseModel new.
	
	model add: element.
	self assert: (element mooseModel == model).
