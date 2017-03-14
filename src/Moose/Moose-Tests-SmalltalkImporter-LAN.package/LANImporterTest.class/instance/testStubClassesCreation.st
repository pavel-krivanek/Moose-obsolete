tests
testStubClassesCreation
	self deny: (self model entityNamed: LANNode mooseName) isStub.
	self assert: (self model entityNamed: #Smalltalk::Object) isStub.
	self deny: (self model entityNamed: #Smalltalk::LANFileServer_class) isStub.
	self assert: (self model allClasses select: [ :each | each isStub not ]) size equals: 20