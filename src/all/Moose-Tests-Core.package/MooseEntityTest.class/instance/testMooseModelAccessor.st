tests
testMooseModelAccessor
	| entity model |
	entity := MooseEntity new.
"	self assert: (MooseModel ownerOf: entity) isNil. 
	self assert: (entity mooseModel isNil).
"
	model := MooseModel new.
	self assert: (model isEmpty).
	entity mooseModel: model.
	self assert: (entity mooseModel == model).
	self deny: (model isEmpty)
	