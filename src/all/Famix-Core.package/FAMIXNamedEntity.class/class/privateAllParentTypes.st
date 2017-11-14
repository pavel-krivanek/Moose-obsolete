accessing
privateAllParentTypes
	^ (self parentTypes withDeep: #parentTypes collect: #yourself as: Set) asOrderedCollection