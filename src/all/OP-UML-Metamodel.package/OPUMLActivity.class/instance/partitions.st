accessing
partitions
	"Top-level ActivityPartitions in the Activity."
	^ partitions ifNil: [ partitions := OrderedCollection new ]