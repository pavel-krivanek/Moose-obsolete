accessing
toBefores: aGeneralOrdering
	"References the GeneralOrderings that specify EventOcurrences that must occur before this OccurrenceSpecification."
	self toBefores
		removeAll;
		addAll: aGeneralOrdering