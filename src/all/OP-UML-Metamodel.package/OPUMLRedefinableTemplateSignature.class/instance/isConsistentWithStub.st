operations - stubs
isConsistentWithStub
	"The query isConsistentWith() specifies, for any two RedefinableTemplateSignatures in a context in which redefinition is possible, whether redefinition would be logically consistent. A redefining template signature is always consistent with a redefined template signature, as redefinition only adds new formal parameters."
	
	"pre: {OCL} redefiningElement.isRedefinitionContextValid(self)"
	"{OCL} result = (redefiningElement.oclIsKindOf(RedefinableTemplateSignature))"
	
	self notYetImplemented
