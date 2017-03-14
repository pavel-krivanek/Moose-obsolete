tests
testStandaloneExternalInternalEntityRedundance
	| standaloneXML document |

	standaloneXML :=
		'<?xml version="1.0" standalone="yes"?>
		<!DOCTYPE test [
			<!ELEMENT test ANY>
			<!ATTLIST test name CDATA #IMPLIED>
			<!ENTITY name "value">
			<!ENTITY % entity ''<!ENTITY name "otherValue">''>
			%entity;
		]>
		<test>&name;</test>'.
	self
		shouldnt: [document := XMLDOMParser parse: standaloneXML]
		raise: XMLValidationException.
	self assert: document contentString = 'value'.