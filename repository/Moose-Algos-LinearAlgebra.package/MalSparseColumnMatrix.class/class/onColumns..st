instance creation
onColumns: columnCollection
	
	| new |
	new := self basicNew.
	new
		instVarNamed: 'columns'
		put: columnCollection asArray.
	[new checkInvariant] assert.
	^new