operations - stubs
visibleMembersStub
	"The query visibleMembers() defines which members of a Package can be accessed outside it."
	
	"{OCL} result = (member->select( m | m.oclIsKindOf(PackageableElement) and self.makesVisible(m))->collect(oclAsType(PackageableElement))->asSet())"
	
	self notYetImplemented
