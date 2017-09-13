accessing
variables: aVariable
	"Top-level Variables defined by the Activity."
	self variables
		removeAll;
		addAll: aVariable