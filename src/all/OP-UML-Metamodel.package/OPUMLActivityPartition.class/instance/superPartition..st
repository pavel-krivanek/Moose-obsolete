accessing
superPartition: anActivityPartition
	"Other ActivityPartitions immediately containing this ActivityPartition (as its superGroups)."
	superPartition := OPUMLToOneLink
		on: self identity
		update: #subpartitions
		from: superPartition
		to: anActivityPartition