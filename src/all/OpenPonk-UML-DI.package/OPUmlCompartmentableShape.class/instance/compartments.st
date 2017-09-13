accessing
compartments
	<DCType: #OPUmlCompartment opposite: #compartmentedShape multiplicity: #(#*)>
	^ self ownedElements select: [ :each | each isKindOf: OPUmlCompartment ]