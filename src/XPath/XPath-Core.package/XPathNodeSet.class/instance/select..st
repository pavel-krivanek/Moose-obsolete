enumerating
select: aBlock
	"select doesn't change sort order"
	^ (super select: aBlock) sortOrderFrom: self