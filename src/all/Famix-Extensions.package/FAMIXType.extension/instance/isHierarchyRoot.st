*Famix-Extensions
isHierarchyRoot
	^self superclassHierarchyGroup 
		allSatisfy: [:each | each isNil or: [each isStub] ]