operations - stubs
makesVisibleStub
	"The query makesVisible() defines whether a Package makes an element visible outside itself. Elements with no visibility and elements with public visibility are made visible."
	
	"pre: {OCL} member->includes(el)"
	"{OCL} result = (ownedMember->includes(el) or
(elementImport->select(ei|ei.importedElement = VisibilityKind::public)->collect(importedElement.oclAsType(NamedElement))->includes(el)) or
(packageImport->select(visibility = VisibilityKind::public)->collect(importedPackage.member->includes(el))->notEmpty()))"
	
	self notYetImplemented
