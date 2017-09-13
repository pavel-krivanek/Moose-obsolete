operations - stubs
isDistinguishableFromStub
	"The query isDistinguishableFrom() determines whether two NamedElements may logically co-exist within a Namespace. By default, two named elements are distinguishable if (a) they have types neither of which is a kind of the other or (b) they have different names."
	
	"{OCL} result = ((self.oclIsKindOf(n.oclType()) or n.oclIsKindOf(self.oclType())) implies
    ns.getNamesOfMember(self)->intersection(ns.getNamesOfMember(n))->isEmpty()
)"
	
	self notYetImplemented
