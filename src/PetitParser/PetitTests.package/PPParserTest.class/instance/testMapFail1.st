testing-mapping
testMapFail1
	self
		should: [ #any asParser map: [  ] ]
		raise: Error.
	self
		should: [ #any asParser map: [ :a :b | ] ]
		raise: Error
