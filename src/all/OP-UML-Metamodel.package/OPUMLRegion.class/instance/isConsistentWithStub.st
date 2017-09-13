operations - stubs
isConsistentWithStub
	"The query isConsistentWith() specifies that a redefining Region is consistent with a redefined Region provided that the redefining Region is an extension of the Redefined region, i.e., its Vertices and Transitions conform to one of the following: (1) they are equal to corresponding elements of the redefined Region or, (2) they consistently redefine a State or Transition of the redefined region, or (3) they add new States or Transitions."
	
	"pre: {OCL} redefiningElement.isRedefinitionContextValid(self)"
	"{OCL} result = (-- the following is merely a default body; it is expected that the specific form of this constraint will be specified by profiles
true)"
	
	self notYetImplemented
