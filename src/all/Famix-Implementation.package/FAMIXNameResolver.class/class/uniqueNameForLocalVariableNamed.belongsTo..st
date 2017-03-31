language independent unique naming
uniqueNameForLocalVariableNamed: aVariableName belongsTo: aBehaviourName
	"Given ***FAMIX2 compliant**** names for the elements return a FAMIX2 Compliant uniqueName a SYMBOL"

	^(aBehaviourName , self methodAndVariableSeparator , aVariableName)
		asSymbol