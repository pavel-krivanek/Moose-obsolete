accessing
variables: aVariable
	"The Variables defined in the scope of the StructuredActivityNode."
	self variables
		removeAll;
		addAll: aVariable