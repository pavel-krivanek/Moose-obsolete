adding
addSend: selector onReturnOfSelfMethod: aSelfSelector
	"Add a range check to filter out sends to instvars defined in superclasses, etc."
	(self extractedTypeForReturnInMethod: theClass >> aSelfSelector) addSend: selector