tests
testSystemIDBadChar
	self nonChars do: [:each |
		self
			should: [
				SAXHandler parse:
					'<!DOCTYPE test SYSTEM "', each asString, '"><test/>']
			raise: XMLWellFormednessException]