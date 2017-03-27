tests
testOptimizedPredicatePrecedingSiblingAxis
	| precedingSiblings |

	precedingSiblings :=
		document allElements select: [:element |
			element precedingSiblingNodes anySatisfy: [:each |
				each isElementNamed: 'address']].
	self
		assertNodeSet: (document xpath: '//*[preceding-sibling::address]')
		hasNodes: precedingSiblings.
	self
		assertNodeSet: (document xpath: '//*[preceding-sibling::address[true()]]')
		hasNodes: precedingSiblings.
	self
		assertNodeSet: (document xpath: '//*[./preceding-sibling::address]')
		hasNodes: precedingSiblings.
	self
		assert: (document xpath: '//*[preceding-sibling::absent]') isEmpty;
		assert: (document xpath: '//*[preceding-sibling::node()[false()]]') isEmpty;
		assert: (document xpath: '//*[./preceding-sibling::absent]') isEmpty.

	precedingSiblings :=
		textDocument allNodesSelect: [:node |
			(node precedingSiblingNodes collect: [:each | each stringValue])
				includes: 'two'].
	self
		assertNodeSet:
			(textDocument xpath: '//node()[preceding-sibling::node() = "two"]')
		hasNodes: precedingSiblings.
	self
		assertNodeSet:
			(textDocument xpath:
				'//node()[preceding-sibling::node()[true()] = "two"]')
		hasNodes: precedingSiblings.
	self
		assertNodeSet:
			(textDocument xpath: '//node()[./preceding-sibling::node() = "two"]')
		hasNodes: precedingSiblings.
	self
		assert:
			(document xpath: '//node()[preceding-sibling::node() = "absent"]')
				isEmpty;
		assert:
			(document xpath: '//node()[preceding-sibling::node()[false()] = "two"]')
				isEmpty;
		assert:
			(document xpath: '//node()[./preceding-sibling::node() = "absent"]')
				isEmpty.