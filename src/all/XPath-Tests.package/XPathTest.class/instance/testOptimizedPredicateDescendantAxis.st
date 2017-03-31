tests
testOptimizedPredicateDescendantAxis
	| descendants |

	descendants :=
		document allElementsSelect: [:element |
			(element descendantElementsDetect: [:each |
				each isNamed: 'address']) notNil].
	self
		assertNodeSet: (document xpath: '//*[descendant::address]')
		hasNodes: descendants.
	self
		assertNodeSet: (document xpath: '//*[descendant::address[true()]]')
		hasNodes: descendants.
	self
		assertNodeSet: (document xpath: '//*[./descendant::address]')
		hasNodes: descendants.
	self
		assert: (document xpath: '//*[descendant::absent]') isEmpty;
		assert: (document xpath: '//*[descendant::address[false()]]') isEmpty;
		assert: (document xpath: '//*[./descendant::absent]') isEmpty.

	descendants :=
		textDocument descendantNodesSelect: [:node |
			node hasChildren
				and: [
					(node descendantNodesDetect: [:each |
						each stringValue = 'two']) notNil]].
	self
		assertNodeSet:
			(textDocument xpath: '//node()[descendant::node() = "two"]')
		hasNodes: descendants.
	self
		assertNodeSet:
			(textDocument xpath: '//node()[descendant::node()[true()] = "two"]')
		hasNodes: descendants.
	self
		assertNodeSet:
			(textDocument xpath: '//node()[./descendant::node() = "two"]')
		hasNodes: descendants.
	self
		assert:
			(textDocument xpath: '//node()[descendant::node() = "absent"]') isEmpty;
		assert:
			(textDocument xpath: '//node()[descendant::node()[false()] = "two"]') isEmpty;
		assert:
			(textDocument xpath: '//node()[./descendant::node() = "absent"]') isEmpty.