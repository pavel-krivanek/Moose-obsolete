tests
testMessageDefinedBySubclassShouldNotBeIntercepted

	| user actual |
	user := GHSubclassStub named: 'test subclass'.
	
	self replaceClassWithGhost: GHClassStub.

	actual := user constantABS.	
	self assert: actual equals: 'ABS'.
