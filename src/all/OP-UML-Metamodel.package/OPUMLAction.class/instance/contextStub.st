operations - stubs
contextStub
	"The derivation for the context property."
	
	"{OCL} result = (let behavior: Behavior = self.containingBehavior() in
if behavior=null then null
else if behavior._'context' = null then behavior
else behavior._'context'
endif
endif)"
	
	self notYetImplemented
