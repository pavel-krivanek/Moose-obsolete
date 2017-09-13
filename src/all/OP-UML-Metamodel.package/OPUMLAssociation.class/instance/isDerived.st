accessing
isDerived
	"Specifies whether the Association is derived from other model elements such as other Associations."
	^ isDerived ifNil: [ isDerived := false ]