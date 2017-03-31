tests
testElementDeclarationRedundance
	#('<!DOCTYPE test [<!ELEMENT test EMPTY><!ELEMENT test EMPTY>]><test/>'
		'<!DOCTYPE test [<!ELEMENT test EMPTY><!ELEMENT test ANY>]><test/>')
		do: [:each |
			self
				should: [SAXHandler parse: each]
				raise: XMLValidationException]