tests
testInterceptionInstanceSubclassMessage

	| user actual |
	user := GHSubclassStub named: 'test subclass'.
	
	self replaceClassWithGhost: GHClassStub.

	actual := user someName.	
	self assert: actual selector equals: #someName.
