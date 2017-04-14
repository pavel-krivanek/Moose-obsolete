tests
testInternalNotationDeclarations
	| doctype notation |

	doctype :=
		(XMLDOMParser
			parse: self internalSubsetXMLWithDeclarations
			usingNamespaces: true
			validation: true
			externalEntities: false) doctypeDeclaration.

	notation := doctype nodes eighth.
	self
		assert: notation name = 'notation';
		assert: notation publicID = '';
		assert: notation systemID = 'note.doc'.