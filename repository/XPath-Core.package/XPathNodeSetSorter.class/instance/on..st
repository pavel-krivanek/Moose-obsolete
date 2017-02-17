initialization
on: aNodeSet
	"save the internal state of the node set to inst vars for
	performance and to simplify code"
	nodeSet := aNodeSet.
	nodeSetSize := aNodeSet size.
	nodeSetCollection := aNodeSet collection.
	nodeSetSet := aNodeSet set.

	mustVisitNamespaces := false.
	mustVisitAttributes := false.
	totalSorted := 0.