*Famix-Implementation
allSubclassesDo: aBlock
	"we override this traversal because we want to
	traverse the real type as well"
	self realType ifNotNil: [:a | a allSubclassesDo: aBlock].
