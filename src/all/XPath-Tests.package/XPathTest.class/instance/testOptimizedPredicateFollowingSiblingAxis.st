tests
testOptimizedPredicateFollowingSiblingAxis
	| followingSiblings |

	followingSiblings :=
		document allElements select: [:element |
			element followingSiblingNodes anySatisfy: [:each |
				each isElementNamed: 'address']].
	self
		assertNodeSet: (document xpath: '//*[following-sibling::address]')
		hasNodes: followingSiblings.
	self
		assertNodeSet: (document xpath: '//*[following-sibling::address[true()]]')
		hasNodes: followingSiblings.
	self
		assertNodeSet: (document xpath: '//*[./following-sibling::address]')
		hasNodes: followingSiblings.
	self
		assert: (document xpath: '//*[following-sibling::absent]') isEmpty;
		assert: (document xpath: '//*[following-sibling::node()[false()]]') isEmpty;
		assert: (document xpath: '//*[./following-sibling::absent]') isEmpty.

	followingSiblings :=
		textDocument allNodesSelect: [:node |
			(node followingSiblingNodes collect: [:each | each stringValue])
				includes: 'two'].
	self
		assertNodeSet:
			(textDocument xpath: '//node()[following-sibling::node() = "two"]')
		hasNodes: followingSiblings.
	self
		assertNodeSet:
			(textDocument xpath:
				'//node()[following-sibling::node()[true()] = "two"]')
		hasNodes: followingSiblings.
	self
		assertNodeSet:
			(textDocument xpath: '//node()[./following-sibling::node() = "two"]')
		hasNodes: followingSiblings.
	self
		assert:
			(document xpath: '//node()[following-sibling::node() = "absent"]')
				isEmpty;
		assert:
			(document xpath: '//node()[following-sibling::node()[false()] = "two"]')
				isEmpty;
		assert:
			(document xpath: '//node()[./following-sibling::node() = "absent"]')
				isEmpty.