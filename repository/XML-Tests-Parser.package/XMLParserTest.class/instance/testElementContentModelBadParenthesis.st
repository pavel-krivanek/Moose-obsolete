tests
testElementContentModelBadParenthesis
	#('<!DOCTYPE a [<!ELEMENT a b>]>'
		'<!DOCTYPE a [<!ELEMENT a (b>]>'
		'<!DOCTYPE a [<!ELEMENT a b)>]>'
		'<!DOCTYPE a [<!ELEMENT a ((b)>]>'
		'<!DOCTYPE a [<!ELEMENT a (b))>]>')
		do: [:each |
			self
				should: [
					(SAXHandler on: each, '<a></a>')
						isValidating: false;
						parseDocument]
				raise: XMLWellFormednessException]