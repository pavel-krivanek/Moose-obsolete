operations - stubs
isTemplateStub
	"The query isTemplate() returns whether this Classifier is actually a template."
	
	"{OCL} result = (ownedTemplateSignature <> null or general->exists(g | g.isTemplate()))"
	
	self notYetImplemented
