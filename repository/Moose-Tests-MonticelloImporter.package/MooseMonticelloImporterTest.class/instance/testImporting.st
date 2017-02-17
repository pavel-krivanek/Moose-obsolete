tests
testImporting
	| mooseModel noStubClasses allClasses objectClass class1 classWithIncomingAccess |
	mooseModel := importer importLastVersionOf: self packageToTest.
	allClasses := mooseModel allClasses.
	self assert: mooseModel class == MooseModel.
	noStubClasses := allClasses reject: #isStub.
	self assert: noStubClasses size equals: 2.
	self assert: allClasses size equals: 3.
	class1 := allClasses entityNamed: #Class1ForMonticelloCacheImporter.
	self assert: class1 methods size > 0.
	self assert: (class1 methods allSatisfy: [ :each | each parentType == class1 ]).	"number of lines of code"
	self assert: class1 numberOfLinesOfCode > 1.
	objectClass := allClasses entityNamed: #Object.
	self assert: objectClass isStub.
	self assert: objectClass methods isEmpty.
	self assert: (mooseModel allMethods allSatisfy: [ :each | each mooseModel == mooseModel ]).	"incoming access group"
	classWithIncomingAccess := mooseModel allClasses detect: [ :cls | cls outgoingInvocationsGroup notEmpty ] ifNone: nil.
	self assert: classWithIncomingAccess notNil