tests
testAttributeDeclarationEnumeration
	| dtd |

	dtd := '
		<!DOCTYPE root [
			<!ELEMENT root ANY>
			<!ATTLIST root number ( one | two | three) #IMPLIED>
		]>'.
	#('one'
		'two'
		'three'
		'  one  '
		'		two 	'
		'
		three
		') do: [:each |
		self
			shouldnt: [SAXHandler parse: dtd, '<root number="', each, '"/>']
			raise: XMLValidationException].

	#('<root number="four"/>'
		'<root number=""/>')
		do: [:each |
			self
				should: [SAXHandler parse: dtd, each]
				raise: XMLValidationException.
			self
				shouldnt: [
					(SAXHandler on: dtd, each)
						isValidating: false;
						parseDocument]
				raise: XMLValidationException].