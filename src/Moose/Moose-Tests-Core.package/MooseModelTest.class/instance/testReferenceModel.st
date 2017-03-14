tests
testReferenceModel
	
	| model parentModel |
"	self assert: MooseModel root mooseModel isNil."
	model := MooseModel new.
	parentModel := MooseModel new.
	parentModel add: model.
	self assert: model localMooseModel == model.
	self assert: model mooseModel == parentModel