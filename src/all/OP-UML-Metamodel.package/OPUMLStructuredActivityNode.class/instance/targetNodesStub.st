operations - stubs
targetNodesStub
	"Return those ActivityNodes contained immediately within the StructuredActivityNode that may act as targets of edges owned by the StructuredActivityNode."
	
	"{OCL} result = (node->union(output.oclAsType(ActivityNode)->asSet())->
  union(node->select(oclIsKindOf(Action)).oclAsType(Action).input)->asSet())"
	
	self notYetImplemented
