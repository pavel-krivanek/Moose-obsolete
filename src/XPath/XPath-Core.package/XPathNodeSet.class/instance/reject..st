enumerating
reject: aBlock
	"reject doesn't change sort order"
	^ (super reject: aBlock) sortOrderFrom: self