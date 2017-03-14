parsing
resolve: element
	element notNil should beTrue.
	owner values at: pos put: element.
	owner count: owner count - 1.
	owner maybeEnd