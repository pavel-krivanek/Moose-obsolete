tests
testPrivateSetMooseModel
	| entity model |
	entity := MooseEntity new.
	model := MooseModel new.
	entity privateSetMooseModel: model.
	self assert: (entity mooseModel == model).
