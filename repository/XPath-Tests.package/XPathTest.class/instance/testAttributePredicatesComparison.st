tests
testAttributePredicatesComparison
	| addresses |

	addresses := document allElementsNamed: 'address'.
	self
		assertNodeSet: (document xPath: '//address[ @ number >= 344 ]')
		hasNodes: addresses.

	addresses := addresses copyReplaceFrom: 2 to: 2 with: #().
	self
		assertNodeSet: (document xPath: '//address[ @ number > 344 ]')
		hasNodes: addresses.

	addresses := (document allElementsNamed: 'address') copyFrom: 2 to: 2.
	self
		assertNodeSet: (document xPath: '//address[ @ number <= 344 ]')
		hasNodes: addresses.
	self assert: (document xPath: '//address[ @ number < 344 ]') isEmpty.