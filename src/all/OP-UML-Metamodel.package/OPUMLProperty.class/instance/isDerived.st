accessing
isDerived
	"Specifies whether the Property is derived, i.e., whether its value or values can be computed from other information."
	^ isDerived ifNil: [ isDerived := false ]