tests
testReferenceModel
	self assert: self model mooseModel isNil.
	self assert: self model localMooseModel == self model.