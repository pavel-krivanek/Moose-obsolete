tests
testEntityDeclaration
	| writer |

	(writer := XMLWriter new)
		doctypeDeclaration
			root: 'test';
			with: [
				writer entityDeclaration
					name: 'internal';
					replacement: 'replacement'.
				writer entityDeclaration name: 'emptyInternal'.
				writer entityDeclaration
					name: 'publicExternal';
					publicID: 'publicID';
					systemID: 'systemID'.
				writer entityDeclaration
					name: 'publicExternal';
					publicID: 'publicID'.
				writer entityDeclaration
					name: 'systemExternal';
					systemID: 'systemID'.
				writer entityDeclaration
					name: 'unparsed';
					systemID: 'systemID';
					ndata: 'notation'].

	self assert:
		writer contents =
			('<!DOCTYPE test [',
				'<!ENTITY internal "replacement">',
				'<!ENTITY emptyInternal "">',
				'<!ENTITY publicExternal PUBLIC "publicID" "systemID">',
				'<!ENTITY publicExternal PUBLIC "publicID" "">',
				'<!ENTITY systemExternal SYSTEM "systemID">',
				'<!ENTITY unparsed SYSTEM "systemID" NDATA notation>',
				']>').