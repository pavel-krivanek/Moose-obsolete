tests
testAttributeDeclarationPrefixedDefault
	| dtd |

	dtd := '<!DOCTYPE root [
		<!ELEMENT root EMPTY>
		<!ATTLIST root
			xmlns:prefix CDATA #FIXED "prefixNS"
			prefix:name CDATA "value"
			unprefixed CDATA "value">
		]>'.

	#('<root xmlns:prefix="prefixNS" prefix:name="value" unprefixed="value"/>'
		'<root prefix:name="value" unprefixed="value"/>'
		'<root xmlns:prefix="prefixNS" />'
		'<root prefix:name="value"/>'
		'<root unprefixed="value"/>'
		'<root/>')
		do: [:each |
			self
				shouldnt: [SAXHandler parse: dtd, each]
				raise: XMLValidationException].

	#('<root name="value" />'
		'<root xmlns:prefix="newPrefixNS" />'
		'<root prefix:unprefixed="value" />')
		do: [:each |
			self
				should: [SAXHandler parse: dtd, each]
				raise: XMLValidationException].