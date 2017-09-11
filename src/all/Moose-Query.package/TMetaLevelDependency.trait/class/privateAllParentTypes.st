accessing
privateAllParentTypes
	^ (self parentTypes withDeepCollect: #parentTypes as: Set) asOrderedCollection