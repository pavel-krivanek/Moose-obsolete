tests
testDocumentReadLimit
	| xml replacement |

	replacement := 'entity replacement'.
	xml := '<!DOCTYPE test [<!ENTITY entity "', replacement, '">]><test>&entity;</test>'.
	self
		shouldnt: [
			(SAXHandler on: xml)
				documentReadLimit: xml size + replacement size;
				parseDocument]
		raise: XMLLimitException.
	self
		should: [
			(SAXHandler on: xml)
				documentReadLimit: xml size + replacement size - 1;
				parseDocument]
		raise: XMLLimitException.
	self
		shouldnt: [
			(SAXHandler on: xml)
				documentReadLimit: nil;
				parseDocument]
		raise: XMLLimitException.