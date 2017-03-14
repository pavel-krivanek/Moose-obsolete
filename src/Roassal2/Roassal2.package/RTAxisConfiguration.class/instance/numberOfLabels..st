accessing
numberOfLabels: aValue
	"Set the number of labels the axis should contains. In case that the number of ticks is less than the number of labels, then an adjustment is made"
	numberOfLabels := aValue.
	self adjustNumberOfTicksAndLabelsIfNecessaryPriorityOnLabels.
