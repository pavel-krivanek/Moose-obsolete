reference model reification
testStubInstanceVariableReified
	"self debug: #testStubInstanceVariableReified"
	
	| instVarName instVarUniqueName instVar |
	instVarName := #dependents.
	instVarUniqueName := FAMIXNameResolver 
				mooseNameForAttributeNamed: instVarName
				class: Model mooseName
				classSide: false.
	instVar := self model entityNamed: instVarUniqueName.
	self deny: instVar isNil.
	self assert: instVar isStub