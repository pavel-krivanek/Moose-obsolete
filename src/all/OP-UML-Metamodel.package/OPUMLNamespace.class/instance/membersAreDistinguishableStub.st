operations - stubs
membersAreDistinguishableStub
	"The Boolean query membersAreDistinguishable() determines whether all of the Namespace's members are distinguishable within it."
	
	"{OCL} result = (member->forAll( memb |
   member->excluding(memb)->forAll(other |
       memb.isDistinguishableFrom(other, self))))"
	
	self notYetImplemented
