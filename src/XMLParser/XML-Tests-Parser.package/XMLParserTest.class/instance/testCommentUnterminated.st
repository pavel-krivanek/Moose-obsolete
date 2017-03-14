tests
testCommentUnterminated
	#('<!--' '<!-- comment' '<!-- comment -' '<!-- comment --')
		do: [:each |
			self
				should: [SAXHandler parse: each]
				raise: XMLWellFormednessException.
			self
				should: [SAXHandler parse: each, '<test/>']
				raise: XMLWellFormednessException.
			self
				should: [SAXHandler parse: '<test/>', each]
				raise: XMLWellFormednessException.
			self
				should: [SAXHandler parse: '<test>', each, '<test/>']
				raise: XMLWellFormednessException]