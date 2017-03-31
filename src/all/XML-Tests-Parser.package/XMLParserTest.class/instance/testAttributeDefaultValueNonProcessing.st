tests
testAttributeDefaultValueNonProcessing
	| dtd document root |

	dtd := '
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
		assert: root attributeNodes size = 1;
		assert: (root attributeAt: 'one') = 'default'.