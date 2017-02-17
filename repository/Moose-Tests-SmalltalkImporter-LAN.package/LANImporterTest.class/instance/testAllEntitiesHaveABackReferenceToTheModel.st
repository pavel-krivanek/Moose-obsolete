tests
testAllEntitiesHaveABackReferenceToTheModel
	self model do: [ :each | self assert: each mooseModel equals: self model ]