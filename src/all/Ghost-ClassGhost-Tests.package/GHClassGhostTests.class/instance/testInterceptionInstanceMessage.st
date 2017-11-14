tests
testInterceptionInstanceMessage

	| user actual |
	user := GHClassStub named: 'test class'.
	
	self replaceClassWithGhost: GHClassStub.

	actual := user someName.	
	self assert: actual selector equals: #someName.
