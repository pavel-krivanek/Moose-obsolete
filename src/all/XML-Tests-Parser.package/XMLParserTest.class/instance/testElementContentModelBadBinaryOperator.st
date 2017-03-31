tests
testElementContentModelBadBinaryOperator
	#('<!DOCTYPE a [<!ELEMENT a (,b)>]>'
		'<!DOCTYPE a [<!ELEMENT a (b,)>]>'
		'<!DOCTYPE a [<!ELEMENT a (,b c)>]>'
		'<!DOCTYPE a [<!ELEMENT a (b c,)>]>'
		'<!DOCTYPE a [<!ELEMENT a (|b)>]>'
		'<!DOCTYPE a [<!ELEMENT a (b|)>]>'
		'<!DOCTYPE a [<!ELEMENT a (|b c)>]>'
		'<!DOCTYPE a [<!ELEMENT a (b c|)>]>'
		'<!DOCTYPE a [<!ELEMENT a (b, c | d)>]>'
		'<!DOCTYPE a [<!ELEMENT a (b | c, d)>]>')
		do: [:each |
			self
				should: [
					(SAXHandler on: each, '<a></a>')
						isValidating: false;
						parseDocument]
				raise: XMLWellFormednessException]