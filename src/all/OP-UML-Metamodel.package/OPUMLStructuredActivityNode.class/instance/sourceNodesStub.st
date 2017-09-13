operations - stubs
sourceNodesStub
	"Return those ActivityNodes contained immediately within the StructuredActivityNode that may act as sources of edges owned by the StructuredActivityNode."
	
	"{OCL} result = (node->union(input.oclAsType(ActivityNode)->asSet())->
  union(node->select(oclIsKindOf(Action)).oclAsType(Action).output)->asSet())"
	
	self notYetImplemented
