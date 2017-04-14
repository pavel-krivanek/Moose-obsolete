tests
testInternalParameterEntityDeclarations
	| doctype firstEntity secondEntity |

	doctype :=
		(XMLDOMParser
			parse: self internalSubsetXMLWithDeclarations
			usingNamespaces: true
			validation: true
			externalEntities: false) doctypeDeclaration.

	firstEntity := doctype nodes sixth.
	self
		assert: firstEntity isParameter;
		assert: firstEntity name = 'parameter';
		assert: firstEntity replacement = 'replacement';
		assert: firstEntity publicID = '';
		assert: firstEntity systemID = ''.

	secondEntity := doctype nodes seventh.
	self
		assert: secondEntity isParameter;
		assert: secondEntity name = 'externalParameter';
		assert: secondEntity replacement = '';
		assert: secondEntity publicID = '';
		assert: secondEntity systemID = 'external2.dtd'.