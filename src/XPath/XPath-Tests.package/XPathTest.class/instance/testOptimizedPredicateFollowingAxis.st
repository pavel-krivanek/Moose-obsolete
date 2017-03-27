tests
testOptimizedPredicateFollowingAxis
	| following |

	following :=
		document allElements select: [:element |
			element followingNodes anySatisfy: [:each |
				each isElementNamed: 'address']].
	self
		assertNodeSet: (document xpath: '//*[following::address]')
		hasNodes: following.
	self
		assertNodeSet: (document xpath: '//*[following::address[true()]]')
		hasNodes: following.
	self
		assertNodeSet: (document xpath: '//*[./following::address]')
		hasNodes: following.
	self
		assert: (document xpath: '//*[following::absent]') isEmpty;
		assert: (document xpath: '//*[following::node()[false()]]') isEmpty;
		assert: (document xpath: '//*[./following::absent]') isEmpty.

	following :=
		textDocument allNodesSelect: [:node |
			(node followingNodes collect: [:each | each stringValue])
				includes: 'two'].
	self
		assertNodeSet:
			(textDocument xpath: '//node()[following::node() = "two"]')
		hasNodes: following.
	self
		assertNodeSet:
			(textDocument xpath: '//node()[following::node()[true()] = "two"]')
		hasNodes: following.
	self
		assertNodeSet:
			(textDocument xpath: '//node()[./following::node() = "two"]')
		hasNodes: following.
	self
		assert:
			(document xpath: '//node()[following::node() = "absent"]') isEmpty;
		assert:
			(document xpath: '//node()[following::node()[false()] = "two"]') isEmpty;
		assert:
			(document xpath: '//node()[./following::node() = "absent"]') isEmpty.