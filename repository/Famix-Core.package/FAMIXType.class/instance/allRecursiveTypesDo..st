accessing
allRecursiveTypesDo: aBlock
	"Traverses all nested types recursively (including directly nested types and those nested in methods)"

	self types do: [ :each | 
		aBlock value: each.
		each allRecursiveTypesDo: aBlock ].
	self methods do: [ :each | each allRecursiveTypesDo: aBlock ]