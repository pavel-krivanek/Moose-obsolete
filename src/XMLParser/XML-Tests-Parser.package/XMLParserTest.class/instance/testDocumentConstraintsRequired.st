tests
testDocumentConstraintsRequired
	self
		shouldnt: [
			(SAXHandler on: '<!DOCTYPE root [<!ELEMENT root EMPTY>]><root/>')
				requiresDocumentConstraints: true;
				parseDocument]
		raise: XMLValidationException.
	self
		should: [
			(SAXHandler on: '<root/>')
				requiresDocumentConstraints: true;
				parseDocument]
		raise: XMLValidationException.
	self
		should: [
			(SAXHandler on: '
				<!DOCTYPE root [
					<!ENTITY one "two">
					<!ENTITY % three "four">
					<!NOTATION five PUBLIC "six">
					<!--seven-->]>
				<root/>')
				requiresDocumentConstraints: true;
				parseDocument]
		raise: XMLValidationException.