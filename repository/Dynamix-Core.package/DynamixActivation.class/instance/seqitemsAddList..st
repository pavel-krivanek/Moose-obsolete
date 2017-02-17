accessing-derived
seqitemsAddList: anItemList
	"saves nodes belonging to the sequence"

	self propertyNamed: #seqitems put:  (self seqitems addAll: anItemList).