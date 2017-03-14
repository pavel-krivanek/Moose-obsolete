tests
testOptimizedPredicatePrecedingAxis
	| preceding |

	preceding :=
		document allElements select: [:element |
			element precedingNodes anySatisfy: [:each |
				each isElementNamed: 'address']].
	self
		assertNodeSet: (document xPath: '//*[preceding::address]')
		hasNodes: preceding.
	self
		assertNodeSet: (document xPath: '//*[preceding::address[true()]]')
		hasNodes: preceding.
	self
		assertNodeSet: (document xPath: '//*[./preceding::address]')
		hasNodes: preceding.
	self
		assert: (document xPath: '//*[preceding::absent]') isEmpty;
		assert: (document xPath: '//*[preceding::node()[false()]]') isEmpty;
		assert: (document xPath: '//*[./preceding::absent]') isEmpty.

	preceding :=
		textDocument allNodesSelect: [:node |
			(node precedingNodes collect: [:each | each stringValue])
				includes: 'two'].
	self
		assertNodeSet:
			(textDocument xPath: '//node()[preceding::node() = "two"]')
		hasNodes: preceding.
	self
		assertNodeSet:
			(textDocument xPath: '//node()[preceding::node()[true()] = "two"]')
		hasNodes: preceding.
	self
		assertNodeSet:
			(textDocument xPath: '//node()[./preceding::node() = "two"]')
		hasNodes: preceding.
	self
		assert:
			(document xPath: '//node()[preceding::node() = "absent"]') isEmpty;
		assert:
			(document xPath: '//node()[preceding::node()[false()] = "two"]') isEmpty;
		assert:
			(document xPath: '//node()[./preceding::node() = "absent"]') isEmpty.