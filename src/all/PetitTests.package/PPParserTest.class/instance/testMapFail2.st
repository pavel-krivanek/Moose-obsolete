testing-mapping
testMapFail2
	self
		should: [ (#any asParser , #any asParser) map: [ :a | ] ]
		raise: Error.
	self
		should: [ (#any asParser , #any asParser) map: [ :a :b :c | ] ]
		raise: Error
