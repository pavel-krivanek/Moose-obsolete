accessing
propertyValuesMap

	"return a Dictionary, mapping each different property value to a block that compute if an element 'belongs to' this property. For example, if the property you are using is based on distinct values (authors of a file for example), you could have: {#propertyValue1 -> [:val | val = 'cyrille delaunay'] . {#propertyValue2 -> [:val | val = 'stephane ducasse'] } "
	^ propertyValuesMap ifNil: [ propertyValuesMap := Dictionary new]