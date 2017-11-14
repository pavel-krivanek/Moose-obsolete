tests
testInterceptionSuperCallFromSubclass

	| user actual |
	user := GHSubclassStub named: 'test subclass'.
	
	self replaceClassWithGhost: GHClassStub.

	actual := user someNameBySuperCall.	
	self assert: actual selector equals: #someName