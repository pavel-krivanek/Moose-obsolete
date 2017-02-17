reference model reification
testFormalParameterReified
	"self debug: #testFormalParameterReified"
	
	| formalParameterName |
	formalParameterName := #'Smalltalk::TheRoot.accessingArgument:(Object).anArgument'.
	self assert: (self model entityNamed: formalParameterName) notNil