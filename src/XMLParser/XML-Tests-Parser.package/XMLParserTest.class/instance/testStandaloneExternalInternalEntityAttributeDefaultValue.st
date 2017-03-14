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
	"Xerces does not flag this, but since the reference is in the literal
	attribute value and not just its default value declaration, it should
	probably count"
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
	self
		shouldnt: [
			document :=
				XMLDOMParser parse: standaloneDTD, '<test/>']
		raise: XMLValidationException.
	self assert: (document root attributeAt: 'name') = 'value'.