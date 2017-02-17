adding
addSend: selector toTmp: index 
	"Add a range check to filter out sends to instvars defined in superclasses, etc."
	((localTypingResults at: currentExtractedMethod ) at: index + 1) addSend: selector