tests
testAttributeDefaultRequired
	| dtd document root |

	dtd := '
		<!DOCTYPE root [
			<!ELEMENT root EMPTY>
			<!ATTLIST root
				one CDATA #REQUIRED
				one CDATA #IMPLIED
				two CDATA #REQUIRED >
		]>'.

	document :=
		XMLDOMParser parse:
			dtd, '<root one=''nonDefault'' two="nonDefaultTwo" />'.
	root := document root.
	self
		assert: (root attributeAt: 'one') = 'nonDefault';
		assert: (root attributeAt: 'two') = 'nonDefaultTwo'.

	"empty values still count as being present"
	document := XMLDOMParser parse: dtd, '<root one='''' two="" />'.
	root := document root.
	self
		assert: (root includesAttribute: 'one');
		assert: (root attributeAt: 'one') = '';
		assert: (root includesAttribute: 'two');
		assert: (root attributeAt: 'two') = ''.

	"all required attributes must be present"
	#('<root one="nonDefault" />'
		'<root two="nonDefault" />') do: [:each |
		self
			should: [SAXHandler parse: dtd, each]
			raise: XMLValidationException].