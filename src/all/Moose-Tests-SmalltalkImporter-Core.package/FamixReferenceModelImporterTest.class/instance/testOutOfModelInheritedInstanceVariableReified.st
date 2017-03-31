reference model reification
testOutOfModelInheritedInstanceVariableReified
	"test wether the instance variable and the stub class are well reified"

	"self debug: #testOutOfModelInheritedInstanceVariableReified"

	| instVarName instVarUniqueName instVar |
	instVarName := 'dependents'.
	instVarUniqueName := FAMIXNameResolver mooseNameForAttributeNamed: instVarName class: Model mooseName classSide: false.
	instVar := self model entityNamed: instVarUniqueName.
	self assert: instVar hasClassScope not.
	self assert: instVar isProtected.
	self assert: instVar belongsTo mooseName equals: Model mooseName