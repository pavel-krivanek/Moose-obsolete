enumerating
recursiveChildren
	"Returns the whole family tree below myself (excluding myself)."
	^ self recursiveChildren: false.
	