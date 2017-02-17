exporting
shouldIgnoreProperty: property
	^ (repository metamodel includes: property) not or: [ property isDerived ]