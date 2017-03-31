tests
testInternalGeneralEntityDeclarations
	| doctype firstEntity secondEntity |

	doctype :=
		(XMLDOMParser
			parse: self internalSubsetWithDeclarations
			usingNamespaces: true
			validation: true
			externalEntities: false) doctypeDeclaration.

	firstEntity := doctype nodes fourth.
	self
		deny: firstEntity isParameter;
		assert: firstEntity name = 'general';
		assert: firstEntity replacement = 'replacement';
		assert: firstEntity publicID = '';
		assert: firstEntity systemID = '';
		assert: firstEntity ndata = ''.

	secondEntity := doctype nodes fifth.
	self
		deny: secondEntity isParameter;
		assert: secondEntity name = 'externalGeneral';
		assert: secondEntity replacement = '';
		assert: secondEntity publicID = 'pubid2';
		assert: secondEntity systemID = 'external1.dtd';
		assert: secondEntity ndata = ''.