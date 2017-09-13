operations - stubs
excludeCollisionsStub
	"The query excludeCollisions() excludes from a set of PackageableElements any that would not be distinguishable from each other in this Namespace."
	
	"{OCL} result = (imps->reject(imp1  | imps->exists(imp2 | not imp1.isDistinguishableFrom(imp2, self))))"
	
	self notYetImplemented
