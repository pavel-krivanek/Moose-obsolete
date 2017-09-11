accessing
privateAllChildrenTypes
	^ (self childrenTypes withDeepCollect: #childrenTypes as: Set) asOrderedCollection