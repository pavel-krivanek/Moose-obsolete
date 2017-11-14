tests
testInterceptionInstanceClassMessageWhenItIsNotMeta

	| user actual |
	ghost ghostBehaviour clearMetaMessages.
	
	user := GHClassStub named: 'test class'.	
	self replaceClassWithGhost: GHClassStub.

	actual := user class. 

	self assert: actual selector equals: #class