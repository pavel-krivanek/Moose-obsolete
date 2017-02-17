reference model reification
testInstanceVariableReified
	| instVarName instVarUniqueName instVar |
	instVarName := 'k'.
	instVarUniqueName := FAMIXNameResolver 
				mooseNameForAttributeNamed: instVarName
				class: referenceModelSubRootLevelOneName
				classSide: false.
	instVar := self model entityNamed: instVarUniqueName.
	self assert: instVar hasClassScope not.
	self assert: instVar isProtected