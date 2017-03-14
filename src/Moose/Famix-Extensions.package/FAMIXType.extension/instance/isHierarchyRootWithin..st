*Famix-Extensions
isHierarchyRootWithin: aClassGroup
	^(self superclassHierarchyGroup intersection: aClassGroup) isEmpty