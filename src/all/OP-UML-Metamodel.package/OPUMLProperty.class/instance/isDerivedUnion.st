accessing
isDerivedUnion
	"Specifies whether the property is derived as the union of all of the Properties that are constrained to subset it."
	^ isDerivedUnion ifNil: [ isDerivedUnion := false ]