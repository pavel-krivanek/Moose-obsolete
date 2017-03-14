tests
testAdd
	| entity |
	entity := MooseEntity new.
	model add: entity.
	self assert: model entities size equals: 1.
	self assert: entity mooseModel == model