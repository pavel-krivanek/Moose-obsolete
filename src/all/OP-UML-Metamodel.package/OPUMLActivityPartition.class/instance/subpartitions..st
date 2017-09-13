accessing
subpartitions: anActivityPartition
	"Other ActivityPartitions immediately contained in this ActivityPartition (as its subgroups)."
	self subpartitions
		removeAll;
		addAll: anActivityPartition