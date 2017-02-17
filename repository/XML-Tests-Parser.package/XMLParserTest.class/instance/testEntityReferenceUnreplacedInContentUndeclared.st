tests
testEntityReferenceUnreplacedInContentUndeclared
	| xml document |

	xml := '
		<!DOCTYPE one SYSTEM "extern.dtd" [
			<!ENTITY declared "replacement">
		]>
		<one two="&quot;&undeclared;&quot;">&#60;&undeclared;&#62;</one>'.
	self
		should: [
			(SAXHandler on: xml)
				replacesContentEntityReferences: false;
				parseDocument]
		raise: XMLValidationException.
	self
		shouldnt: [
			document :=
				(XMLDOMParser on: xml)
					replacesContentEntityReferences: false;
					isValidating: false;
					parseDocument]
		raise: XMLValidationException.
	self
		assert: (document root attributeAt: 'two') = '&quot;&undeclared;&quot;';
		assert: document root contentString = '&#60;&undeclared;&#62;'.