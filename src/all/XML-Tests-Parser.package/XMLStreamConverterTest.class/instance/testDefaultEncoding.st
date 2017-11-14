tests
testDefaultEncoding
	self assert:
		self streamConverterClass defaultEncoding =
			self defaultClass primaryEncodingName