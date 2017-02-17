accessing
numberOfTicks: aValue
	"Set the number of ticks the axis should contains. In case that the number of ticks is less than the number of labels, then an adjustment is made"
	numberOfTicks := aValue.
	self adjustNumberOfTicksAndLabelsIfNecessaryPriorityOnTicks