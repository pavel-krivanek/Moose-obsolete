tests
testEncoding
	self encodingNames do: [:each |
		self assert: each asXMLStreamConverter encoding = each].
	self assert:
		((self encodingNames includes: self newStreamConverter encoding)
			or: [self encodingNames isEmpty]).