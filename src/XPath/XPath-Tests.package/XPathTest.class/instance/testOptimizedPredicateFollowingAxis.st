tests
testOptimizedPredicateFollowingAxis
	| following |

	following :=
		document allElements select: [:element |
			element followingNodes anySatisfy: [:each |
				each isElementNamed: 'address']].
	self
		assertNodeSet: (document xPath: '//*[following::address]')
		hasNodes: following.
	self
		assertNodeSet: (document xPath: '//*[following::address[true()]]')
		hasNodes: following.
	self
		assertNodeSet: (document xPath: '//*[./following::address]')
		hasNodes: following.
	self
		assert: (document xPath: '//*[following::absent]') isEmpty;
		assert: (document xPath: '//*[following::node()[false()]]') isEmpty;
		assert: (document xPath: '//*[./following::absent]') isEmpty.

	following :=
		textDocument allNodesSelect: [:node |
			(node followingNodes collect: [:each | each stringValue])
				includes: 'two'].
	self
		assertNodeSet:
			(textDocument xPath: '//node()[following::node() = "two"]')
		hasNodes: following.
	self
		assertNodeSet:
			(textDocument xPath: '//node()[following::node()[true()] = "two"]')
		hasNodes: following.
	self
		assertNodeSet:
			(textDocument xPath: '//node()[./following::node() = "two"]')
		hasNodes: following.
	self
		assert:
			(document xPath: '//node()[following::node() = "absent"]') isEmpty;
		assert:
			(document xPath: '//node()[following::node()[false()] = "two"]') isEmpty;
		assert:
			(document xPath: '//node()[./following::node() = "absent"]') isEmpty.