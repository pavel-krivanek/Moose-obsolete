enumerating
select: aBlock
	"selecting doesn't change sort order"
	^ (super select: aBlock) sortOrder: self sortOrder