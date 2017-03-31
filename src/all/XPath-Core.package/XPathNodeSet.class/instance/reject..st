enumerating
reject: aBlock
	"rejecting doesn't change sort order"
	^ (super reject: aBlock) sortOrder: self sortOrder