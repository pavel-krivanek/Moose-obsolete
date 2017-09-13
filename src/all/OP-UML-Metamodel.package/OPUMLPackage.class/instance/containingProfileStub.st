operations - stubs
containingProfileStub
	"The query containingProfile() returns the closest profile directly or indirectly containing this package (or this package itself, if it is a profile)."
	
	"{OCL} result = (if self.oclIsKindOf(Profile) then 
	self.oclAsType(Profile)
else
	self.namespace.oclAsType(Package).containingProfile()
endif)"
	
	self notYetImplemented
