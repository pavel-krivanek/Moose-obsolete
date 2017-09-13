operations - stubs
allApplicableStereotypesStub
	"The query allApplicableStereotypes() returns all the directly or indirectly owned stereotypes, including stereotypes contained in sub-profiles."
	
	"{OCL} result = (let ownedPackages : Bag(Package) = ownedMember->select(oclIsKindOf(Package))->collect(oclAsType(Package)) in
 ownedStereotype->union(ownedPackages.allApplicableStereotypes())->flatten()->asSet()
)"
	
	self notYetImplemented
