accessing
labelsAndDependencies: aDictionary

	"aDictionary should contains all labels mapped to the other labels they are dependent on. At the end, each time you select a label, all dependents will be updated accordingly, and each time you unselect a label, all labels having it s dependent are unselected "
	self initializeFromLabelsAndDependencies: aDictionary   