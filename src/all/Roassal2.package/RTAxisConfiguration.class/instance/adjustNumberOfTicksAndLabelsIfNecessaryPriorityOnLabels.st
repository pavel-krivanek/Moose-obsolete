accessing
adjustNumberOfTicksAndLabelsIfNecessaryPriorityOnLabels
	"This methods is called after each change of the number of ticks or labels. 
	The rule is that an axis config cannot have more than labels than ticks"
	"Cannot have more labels than ticks"
	"The number of labels remains fixed"
	
	self numberOfTicks < self numberOfLabels
		ifTrue: [ self numberOfTicks: self numberOfLabels ]
