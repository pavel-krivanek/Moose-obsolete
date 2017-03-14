enumerating
rootNodes
	"Returns a Collection of all root nodes of this hiGraph."
	^ levels at: 0 ifAbsentPut: [ OrderedCollection new ].