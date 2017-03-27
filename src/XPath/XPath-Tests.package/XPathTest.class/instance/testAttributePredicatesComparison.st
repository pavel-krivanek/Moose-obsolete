tests
testAttributePredicatesComparison
	| addresses |

	addresses := document allElementsNamed: 'address'.
	self
		assertNodeSet: (document xpath: '//address[ @ number >= 344 ]')
		hasNodes: addresses.

	addresses := addresses copyReplaceFrom: 2 to: 2 with: #().
	self
		assertNodeSet: (document xpath: '//address[ @ number > 344 ]')
		hasNodes: addresses.

	self
		assertNodeSet: (document xpath: '//address[ @ number <= 344 ]')
		hasNode: (document allElementsNamed: 'address') second.
	self assert: (document xpath: '//address[ @ number < 344 ]') isEmpty.