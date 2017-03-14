tests
testOptimizedPredicateFollowingSiblingAxis
	| followingSiblings |

	followingSiblings :=
		document allElements select: [:element |
			element followingSiblingNodes anySatisfy: [:each |
				each isElementNamed: 'address']].
	self
		assertNodeSet: (document xPath: '//*[following-sibling::address]')
		hasNodes: followingSiblings.
	self
		assertNodeSet: (document xPath: '//*[following-sibling::address[true()]]')
		hasNodes: followingSiblings.
	self
		assertNodeSet: (document xPath: '//*[./following-sibling::address]')
		hasNodes: followingSiblings.
	self
		assert: (document xPath: '//*[following-sibling::absent]') isEmpty;
		assert: (document xPath: '//*[following-sibling::node()[false()]]') isEmpty;
		assert: (document xPath: '//*[./following-sibling::absent]') isEmpty.

	followingSiblings :=
		textDocument allNodesSelect: [:node |
			(node followingSiblingNodes collect: [:each | each stringValue])
				includes: 'two'].
	self
		assertNodeSet:
			(textDocument xPath: '//node()[following-sibling::node() = "two"]')
		hasNodes: followingSiblings.
	self
		assertNodeSet:
			(textDocument xPath:
				'//node()[following-sibling::node()[true()] = "two"]')
		hasNodes: followingSiblings.
	self
		assertNodeSet:
			(textDocument xPath: '//node()[./following-sibling::node() = "two"]')
		hasNodes: followingSiblings.
	self
		assert:
			(document xPath: '//node()[following-sibling::node() = "absent"]')
				isEmpty;
		assert:
			(document xPath: '//node()[following-sibling::node()[false()] = "two"]')
				isEmpty;
		assert:
			(document xPath: '//node()[./following-sibling::node() = "absent"]')
				isEmpty.