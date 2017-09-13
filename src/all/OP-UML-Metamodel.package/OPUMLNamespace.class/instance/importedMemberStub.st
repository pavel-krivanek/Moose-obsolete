operations - stubs
importedMemberStub
	"The importedMember property is derived as the PackageableElements that are members of this Namespace as a result of either PackageImports or ElementImports."
	
	"{OCL} result = (self.importMembers(elementImport.importedElement->asSet()->union(packageImport.importedPackage->collect(p | p.visibleMembers()))->asSet()))"
	
	self notYetImplemented
