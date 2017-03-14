tests
testAttributeDefaultFixedValue
	| dtd document root |

	dtd := '
		<!DOCTYPE root [
			<!ELEMENT root EMPTY>
			<!ATTLIST root
				one CDATA #FIXED "fixedDefault"
				one CDATA #FIXED "redundant"
				two IDREF #FIXED "fixedDefaultTwo"
				three CDATA #FIXED ""
				four ID #REQUIRED >
		]>'.

	#(true false) do: [:isValidating |
		document :=
			(XMLDOMParser on:
				dtd,
				'<root ',
				'	one=''fixedDefault'' ',
				'	two=" fixedDefaultTwo  " ',
				'	three="" ',
				'four="fixedDefaultTwo"/>')
				isValidating: isValidating;
				parseDocument.
		root := document root.
		self
			assert: (root attributeAt: 'one') = 'fixedDefault';
			assert: (root attributeAt: 'two') = 'fixedDefaultTwo';
			assert: (root includesAttribute: 'three');
			assert: (root attributeAt: 'three') = '';
			assert: (root attributeAt: 'four') = 'fixedDefaultTwo'.

		"attributes with fixed defaults are set automatically if not present"
		document :=
			(XMLDOMParser on: dtd, '<root four="fixedDefaultTwo"/>')
				isValidating: isValidating;
				parseDocument.
		root := document root.
		self
			assert: (root attributeAt: 'one') = 'fixedDefault';
			assert: (root attributeAt: 'two') = 'fixedDefaultTwo';
			assert: (root includesAttribute: 'three');
			assert: (root attributeAt: 'three') = ''].

	"but if present cannot have non-default values"
	#('one' 'two' 'three')
		with: #('fixedDefault' 'fixedDefaultTwo' '')
		do: [:name :fixedDefault | | xml |
			xml := dtd, '<root ', name, '="nonDefault"/>'.
			self
				should: [SAXHandler parse: xml]
				raise: XMLValidationException.
			self
				shouldnt: [
					document :=
						(XMLDOMParser on: xml)
							isValidating: false;
							parseDocument]
				raise: XMLValidationException.
			root := document root.
			self
				assert: (root attributeAt: 'one') = 'fixedDefault';
				assert: (root attributeAt: 'two') = 'fixedDefaultTwo';
				assert: (root includesAttribute: 'three');
				assert: (root attributeAt: 'three') = ''].