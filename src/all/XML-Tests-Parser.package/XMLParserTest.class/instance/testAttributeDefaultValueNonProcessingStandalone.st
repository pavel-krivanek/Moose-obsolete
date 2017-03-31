tests
testAttributeDefaultValueNonProcessingStandalone
	| dtd document root |

	dtd := '<?xml version="1.0" standalone="yes"?>
		<!DOCTYPE root [
			<!ELEMENT root EMPTY>
			<!ATTLIST root one CDATA "default">
			%undeclared;
			<!ATTLIST root two CDATA "defaultTwo">
		]>'.

	document :=
		(XMLDOMParser on: dtd, '<root />')
			isValidating: false;
			parseDocument.
	root := document root.
	self
		assert: root attributeNodes size = 2;
		assert: (root attributeAt: 'one') = 'default';
		assert: (root attributeAt: 'two') = 'defaultTwo'.