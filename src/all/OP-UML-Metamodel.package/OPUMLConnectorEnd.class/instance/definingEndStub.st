operations - stubs
definingEndStub
	"Derivation for ConnectorEnd::/definingEnd : Property"
	
	"{OCL} result = (if connector.type = null 
then
  null 
else
  let index : Integer = connector.end->indexOf(self) in
    connector.type.memberEnd->at(index)
endif)"
	
	self notYetImplemented
