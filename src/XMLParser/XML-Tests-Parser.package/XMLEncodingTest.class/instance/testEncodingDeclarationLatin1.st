tests
testEncodingDeclarationLatin1
	| xml |

	xml := self sourceXMLWithContent: (self stringFrom: #(126 127 128 255)).
	self
		should: [
			SAXHandler parse:
				(self convertableStreamOn:
					self utf8BOM, (self encodingDeclaration: 'UTF-8'), xml)]
		raise: XMLEncodingException.
	self
		shouldnt: [
			SAXHandler parse:
				(self convertableStreamOn:
					self utf8BOM, (self encodingDeclaration: 'latin-1'), xml)]
		raise: XMLEncodingException.