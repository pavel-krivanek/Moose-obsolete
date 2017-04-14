tests
testInternalElementDeclaration
	| doctype elementDeclaration |

	doctype :=
		(XMLDOMParser
			parse: self internalSubsetXMLWithDeclarations
			usingNamespaces: true
			validation: true
			externalEntities: false) doctypeDeclaration.
	elementDeclaration := doctype nodes first.
	self
		assert: elementDeclaration element = 'root';
		assert: elementDeclaration contentModel = '(#PCDATA|one|two)*'.