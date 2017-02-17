tests
testEntityReferenceUndeclaredPreserved
	| xml parser document |

	xml := '
		<!DOCTYPE root PUBLIC "extern" "extern.dtd" [
			<!ENTITY unreferenced "&undeclaredOne;">
			%undeclaredOne;
		]>
		<root name="&#34;&undeclaredOne;&#34;">&lt;&undeclaredTwo;&gt;</root>'.
	(parser := XMLDOMParser on: xml)
		isValidating: false;
		preservesUndeclaredEntityReferences: true.
	document := parser parseDocument.

	self
		assert: document doctypeDeclaration nodes size = 1;
		assert: document doctypeDeclaration firstNode replacement = '&undeclaredOne;';
		assert: (document root attributeAt: 'name') = '"&undeclaredOne;"';
		assert: (document root contentString) = '<&undeclaredTwo;>'.