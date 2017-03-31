tests
testLocalMooseModel
	| element model |
	
	element := MooseEntity new.
	model := MooseModel new.
	
	"self assert: (element mooseModel isNil)."
	model add: element.
	self assert: (element mooseModel == model).
	self assert: (element localMooseModel == model).

	model := MooseModel new.
	self assert: (model localMooseModel == model)