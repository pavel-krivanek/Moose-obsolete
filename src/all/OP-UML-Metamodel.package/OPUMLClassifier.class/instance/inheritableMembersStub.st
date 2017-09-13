operations - stubs
inheritableMembersStub
	"The query inheritableMembers() gives all of the members of a Classifier that may be inherited in one of its descendants, subject to whatever visibility restrictions apply."
	
	"pre: {OCL} c.allParents()->includes(self)"
	"{OCL} result = (member->select(m | c.hasVisibilityOf(m)))"
	
	self notYetImplemented
