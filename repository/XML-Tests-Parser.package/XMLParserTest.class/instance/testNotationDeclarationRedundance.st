tests
testNotationDeclarationRedundance
	#('<!DOCTYPE test [
			<!NOTATION name PUBLIC "note">
			<!NOTATION name PUBLIC "newnote">
		]>'
		'<!DOCTYPE test [
			<!NOTATION name PUBLIC "note">
			<!NOTATION name PUBLIC "note">
		]>'
		'<!DOCTYPE test [
			<!NOTATION name PUBLIC "note">
			<!NOTATION name SYSTEM "newnote">
		]>')
		do: [:each |
			self
				should: [SAXHandler parse: each, '<test/>']
				raise: XMLValidationException.
			self
				shouldnt: [
					(SAXHandler on: each, '<test/>')
						isValidating: false;
						parseDocument]
				raise: XMLValidationException]