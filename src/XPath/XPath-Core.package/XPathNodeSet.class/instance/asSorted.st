converting
asSorted
	"unlike #sorted, this only returns a copy if sorting was needed"

	^ self sortOrder documentOrderSorted: self