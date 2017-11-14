accessing
privateAllChildrenTypes
	^ (self childrenTypes withDeep: #childrenTypes collect: #yourself as: Set) asOrderedCollection