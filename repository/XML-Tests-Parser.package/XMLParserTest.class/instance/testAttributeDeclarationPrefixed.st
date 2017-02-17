tests
testAttributeDeclarationPrefixed
	| dtd |

	dtd := '<!DOCTYPE root [
		<!ELEMENT root EMPTY>
		<!ATTLIST root
			xmlns:prefix CDATA #IMPLIED
			prefix:name CDATA #IMPLIED
			unprefixed CDATA #IMPLIED>
		]>'.

	#('<root xmlns:prefix="prefixNS" prefix:name="value" unprefixed="value"/>'
		'<root xmlns:prefix="prefixNS" prefix:name="value" />'
		'<root unprefixed="value" />'
		'<root/>')
		do: [:each |
			self
				shouldnt: [SAXHandler parse: dtd, each]
				raise: XMLValidationException].

	"valid, but a namespace exception"
	self
		should: [SAXHandler parse: dtd, '<root prefix:name="value"/>']
		raise: XMLNamespaceException.
	self
		shouldnt: [
			(SAXHandler on: dtd, '<root prefix:name="value"/>')
				usesNamespaces: false;
				parseDocument]
		raise: XMLNamespaceException.

	#('<root xmlns:prefix="prefixNS" prefix:name="value" prefix:unprefixed="value"/>'
		'<root name="value" unprefixed="value" />')
		do: [:each |
			self
				should: [SAXHandler parse: dtd, each]
				raise: XMLValidationException].