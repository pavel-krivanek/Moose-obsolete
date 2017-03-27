tests
testOptimizedPredicatePrecedingAxis
	| preceding |

	preceding :=
		document allElements select: [:element |
			element precedingNodes anySatisfy: [:each |
				each isElementNamed: 'address']].
	self
		assertNodeSet: (document xpath: '//*[preceding::address]')
		hasNodes: preceding.
	self
		assertNodeSet: (document xpath: '//*[preceding::address[true()]]')
		hasNodes: preceding.
	self
		assertNodeSet: (document xpath: '//*[./preceding::address]')
		hasNodes: preceding.
	self
		assert: (document xpath: '//*[preceding::absent]') isEmpty;
		assert: (document xpath: '//*[preceding::node()[false()]]') isEmpty;
		assert: (document xpath: '//*[./preceding::absent]') isEmpty.

	preceding :=
		textDocument allNodesSelect: [:node |
			(node precedingNodes collect: [:each | each stringValue])
				includes: 'two'].
	self
		assertNodeSet:
			(textDocument xpath: '//node()[preceding::node() = "two"]')
		hasNodes: preceding.
	self
		assertNodeSet:
			(textDocument xpath: '//node()[preceding::node()[true()] = "two"]')
		hasNodes: preceding.
	self
		assertNodeSet:
			(textDocument xpath: '//node()[./preceding::node() = "two"]')
		hasNodes: preceding.
	self
		assert:
			(document xpath: '//node()[preceding::node() = "absent"]') isEmpty;
		assert:
			(document xpath: '//node()[preceding::node()[false()] = "two"]') isEmpty;
		assert:
			(document xpath: '//node()[./preceding::node() = "absent"]') isEmpty.