tests
testInterceptionInstanceClassMessage

	| user actual |
	user := GHClassStub named: 'test class'.
	
	self replaceClassWithGhost: GHClassStub.

	actual := user class. 

	self assert: actual == ghost
