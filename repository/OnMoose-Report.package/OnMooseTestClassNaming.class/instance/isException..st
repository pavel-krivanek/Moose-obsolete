accessing
isException: each
	^ "each isStub" false or: [
		('*Test' match: each name) or: [ 
			('*Example' match: each name) or: [
				('*TestCase' match: each name) and: [ each directSubclasses notEmpty ] ] ] ]