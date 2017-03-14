tests
testOptimizedPredicateDescendantOrSelfAxis
	| descendants |

	descendants :=
		document allElementsSelect: [:element |
			(element allElementsDetect: [:each |
				each isNamed: 'address']) notNil].
	self
		assertNodeSet:
			(document xPath: '//*[descendant-or-self::address]')
		hasNodes: descendants.
	self
		assertNodeSet:
			(document xPath: '//*[descendant-or-self::address[true()]]')
		hasNodes: descendants.
	self
		assertNodeSet:
			(document xPath: '//*[./descendant-or-self::address]')
		hasNodes: descendants.
	self
		assert:
			(document xPath: '//*[descendant-or-self::absent]') isEmpty;
		assert:
			(document xPath: '//*[descendant-or-self::address[false()]]') isEmpty;
		assert:
			(document xPath: '//*[./descendant-or-self::absent]') isEmpty.

	descendants :=
		textDocument descendantNodesSelect: [:node |
			node hasChildren
				ifTrue: [
					(node allNodesDetect: [:each |
						each stringValue = 'two']) notNil]
				ifFalse: [node stringValue = 'two']].
	self
		assertNodeSet:
			(textDocument xPath:
				'//node()[descendant-or-self::node() = "two"]')
		hasNodes: descendants.
	self
		assertNodeSet:
			(textDocument xPath:
				'//node()[descendant-or-self::node()[true()] = "two"]')
		hasNodes: descendants.
	self
		assertNodeSet:
			(textDocument xPath:
				'//node()[./descendant-or-self::node() = "two"]')
		hasNodes: descendants.
	self
		assert:
			(textDocument xPath:
				'//node()[descendant-or-self::node() = "absent"]') isEmpty;
		assert:
			(textDocument xPath:
				'//node()[descendant-or-self::node()[false()] = "two"]') isEmpty;
		assert:
			(textDocument xPath:
				'//node()[./descendant-or-self::node() = "absent"]') isEmpty.