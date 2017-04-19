tests
testInternalAttributeDeclarations
	| doctype firstAttribute secondAttribute |

	doctype :=
		(XMLDOMParser
			parse: self internalSubsetXMLWithDeclarations
			usingNamespaces: true
			validation: true
			externalEntities: false) doctypeDeclaration.

	firstAttribute := doctype nodes second.
	self
		assert: firstAttribute element = 'root';
		assert: firstAttribute attribute = 'name';
		assert: firstAttribute type = 'CDATA';
		assert: firstAttribute defaultPragma = 'IMPLIED';
		assert: firstAttribute defaultValue = ''.

	secondAttribute := doctype nodes third.
	self
		assert: secondAttribute element = 'root';
		assert: secondAttribute attribute = 'number';
		assert: secondAttribute type = '(one|two|three)';
		assert: secondAttribute defaultPragma = '';
		assert: secondAttribute defaultValue = 'three'.