*Famix-Implementation
allSuperclassesDo: aBlock
	"we override this traversal because we want to
	traverse the aliased type as well"
	self realType ifNotNil: [:a | a allSuperclassesDo: aBlock]