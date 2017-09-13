operations - stubs
resultStub
	"Derivation for OpaqueExpression::/result "
	
	"{OCL} result = (if behavior = null then
	null
else
	behavior.ownedParameter->first()
endif)"
	
	self notYetImplemented
