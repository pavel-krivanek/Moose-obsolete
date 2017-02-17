tests
testAttributeDefaultValue
	| dtd |

	dtd := '
		<!DOCTYPE root [
			<!ELEMENT root EMPTY>
			<!ATTLIST root
				one CDATA "default"
				one CDATA "redundant"
				two CDATA ""
				three NMTOKEN " defaultThree " >
		]>'.

	#(true false) do: [:isValidating | | document root |
		document :=
			(XMLDOMParser on:
				dtd,
				'<root ',
				'	one=''nonDefault'' ',
				'	two="nonDefaultTwo" ',
				'	three="nonDefaultThree"/>')
				isValidating: isValidating;
				parseDocument.
		root := document root.
		self
			assert: (root attributeAt: 'one') = 'nonDefault';
			assert: (root attributeAt: 'two') = 'nonDefaultTwo';
			assert: (root attributeAt: 'three') = 'nonDefaultThree'.

		"empty but present attributes shouldn't get the default value"
		document := XMLDOMParser parse: dtd, '<root one='''' two=""/>'.
		root := document root.
			self
				assert: (root includesAttribute: 'one');
				assert: (root attributeAt: 'one') = '';
				assert: (root includesAttribute: 'two');
				assert: (root attributeAt: 'two') = '';
				assert: (root attributeAt: 'three') = 'defaultThree'.

		"attributes with defaults are set automatically if not present"
		document := XMLDOMParser parse: dtd, '<root />'.
		root := document root.
		self
			assert: (root attributeAt: 'one') = 'default';
			assert: (root includesAttribute: 'two');
			assert: (root attributeAt: 'two') = '';
			assert: (root attributeAt: 'three') = 'defaultThree'].