tests
testStandaloneExternalInternalEntity
	| standalone notStandalone dtd document |

	standalone := '<?xml version="1.0" standalone="yes"?>'.
	notStandalone := '<?xml version="1.0" standalone="no"?>'.
	dtd := '
		<!DOCTYPE test [
			<!ELEMENT test ANY>
			<!ENTITY % entity ''<!ENTITY name "value">''>
			%entity;
			<!ENTITY otherName "otherValue">
		]>'.
	self
		should: [SAXHandler parse: standalone, dtd, '<test>&name;</test>']
		raise: XMLValidationException.
	self
		shouldnt: [
			document :=
				(XMLDOMParser on: standalone, dtd, '<test>&name;</test>')
					isValidating: false;
					parseDocument]
		raise: XMLValidationException.
	self assert: document contentString = 'value'.
	self
		shouldnt: [SAXHandler parse: standalone, dtd, '<test>&otherName;</test>']
		raise: XMLValidationException.

	self
		shouldnt: [
			document :=
				XMLDOMParser parse: notStandalone, dtd, '<test>&name;</test>']
		raise: XMLValidationException.
	self assert: document contentString = 'value'.