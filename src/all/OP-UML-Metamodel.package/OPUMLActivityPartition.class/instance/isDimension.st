accessing
isDimension
	"Indicates whether the ActivityPartition groups other ActivityPartitions along a dimension."
	^ isDimension ifNil: [ isDimension := false ]