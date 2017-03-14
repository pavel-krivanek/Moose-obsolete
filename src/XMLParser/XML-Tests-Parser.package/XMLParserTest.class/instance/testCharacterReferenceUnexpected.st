tests
testCharacterReferenceUnexpected
	#('<!DOCTYPE test [&#32;]><test/>'
		'&#32;<test/>'
		'<test/>&#32;')
		do: [:each | 
			self
				should: [SAXHandler parse: each]
				raise: XMLWellFormednessException.
			self
				should: [
					(SAXHandler on: each)
						replacesContentEntityReferences: false;
						parseDocument]
				raise: XMLWellFormednessException]