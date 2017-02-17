accessing
allRecursiveTypes
	"Retrieves all nested types recursively (including directly nested types and those nested in methods)"
	
	| result |
	result := Set new.
	self allRecursiveTypesDo: [:each | result add: each ].
	^ result