tests
testProcessingInstructionBadChar
	self nonChars do: [:each |
		self
			should: [SAXHandler parse: '<?pi ', each asString, '?><test/>']
			raise: XMLWellFormednessException]