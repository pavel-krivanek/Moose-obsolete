tests
testStandaloneExternalInternalEntityAttributeDefaultValue
	| standaloneDTD document |

	standaloneDTD :=
		'<?xml version="1.0" standalone="yes"?>
		<!DOCTYPE test [
			<!ELEMENT test ANY>
			<!ENTITY % entity ''<!ENTITY name "value">''>
			%entity;
			<!ATTLIST test name CDATA "&name;">
			<!ENTITY otherName "otherValue">
		]>'.
	self
		should: [SAXHandler parse: standaloneDTD, '<test name="&name;"/>']
		raise: XMLValidationException.
	self
		shouldnt: [
			document :=
				(XMLDOMParser on: standaloneDTD, '<test name="&name;"/>')
					isValidating: false;
					parseDocument]
		raise: XMLValidationException.
	self assert: (document root attributeAt: 'name') = 'value'.

	"Xerces doesn't flag this because the reference is only in the default
	value declaration, but it probably should count because it's still an
	internal (to the document) reference to an external standalone entity"
	self
		should: [XMLDOMParser parse: standaloneDTD, '<test/>']
		raise: XMLValidationException.
	self
		shouldnt: [
			document :=
				(XMLDOMParser on: standaloneDTD, '<test/>')
					isValidating: false;
					parseDocument]
		raise: XMLValidationException.
	self assert: (document root attributeAt: 'name') = 'value'.