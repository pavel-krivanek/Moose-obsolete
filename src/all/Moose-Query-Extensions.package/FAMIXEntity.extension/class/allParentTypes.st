*Moose-Query-Extensions
allParentTypes
	^ allParentTypes ifNil: [ allParentTypes := self privateAllParentTypes ]