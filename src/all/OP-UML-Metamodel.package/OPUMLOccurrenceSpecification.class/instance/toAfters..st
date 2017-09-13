accessing
toAfters: aGeneralOrdering
	"References the GeneralOrderings that specify EventOcurrences that must occur after this OccurrenceSpecification."
	self toAfters
		removeAll;
		addAll: aGeneralOrdering