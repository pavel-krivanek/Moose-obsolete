*Moose-Query-Extensions
allChildrenTypes
	^ allChildrenTypes ifNil: [ allChildrenTypes := self privateAllChildrenTypes ]