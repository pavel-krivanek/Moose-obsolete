tests
testOptimizedPredicateDescendantAxis
	| descendants |

	descendants :=
		document allElementsSelect: [:element |
			(element descendantElementsDetect: [:each |
				each isNamed: 'address']) notNil].
	self
		assertNodeSet: (document xPath: '//*[descendant::address]')
		hasNodes: descendants.
	self
		assertNodeSet: (document xPath: '//*[descendant::address[true()]]')
		hasNodes: descendants.
	self
		assertNodeSet: (document xPath: '//*[./descendant::address]')
		hasNodes: descendants.
	self
		assert: (document xPath: '//*[descendant::absent]') isEmpty;
		assert: (document xPath: '//*[descendant::address[false()]]') isEmpty;
		assert: (document xPath: '//*[./descendant::absent]') isEmpty.

	descendants :=
		textDocument descendantNodesSelect: [:node |
			node hasChildren
				and: [
					(node descendantNodesDetect: [:each |
						each stringValue = 'two']) notNil]].
	self
		assertNodeSet:
			(textDocument xPath: '//node()[descendant::node() = "two"]')
		hasNodes: descendants.
	self
		assertNodeSet:
			(textDocument xPath: '//node()[descendant::node()[true()] = "two"]')
		hasNodes: descendants.
	self
		assertNodeSet:
			(textDocument xPath: '//node()[./descendant::node() = "two"]')
		hasNodes: descendants.
	self
		assert:
			(textDocument xPath: '//node()[descendant::node() = "absent"]') isEmpty;
		assert:
			(textDocument xPath: '//node()[descendant::node()[false()] = "two"]') isEmpty;
		assert:
			(textDocument xPath: '//node()[./descendant::node() = "absent"]') isEmpty.