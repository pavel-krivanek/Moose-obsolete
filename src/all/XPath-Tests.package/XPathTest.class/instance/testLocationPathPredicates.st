tests
testLocationPathPredicates
	self
		assertNodeSet:
			(document xpath: '/descendant::home-phone[1][2 - 1][position() = 1]')
		hasNodes:
			(XMLNodeList with: (document allElementsNamed: 'home-phone') first).
	self assert:
		(document xpath: '/descendant::home-phone[1][position() + 1]') isEmpty.

	self
		assertNodeSet:
			(document xpath: '//home-phone[1][1 + 0][position() = 1]')
		hasNodes:
			(document allElementsNamed: 'home-phone') allButLast.
	self
		assertNodeSet:
			(document xpath: '//home-phone[1 + 1][1][position() = 1]')
		hasNodes:
			(XMLNodeList with: (document allElementsNamed: 'home-phone') third).
	self assert:
		(document xpath: '//home-phone[position() = 1][1 + 1]') isEmpty.

	self
		assertNodeSet:
			(document xpath: '/descendant::home-phone[2][1 + 0][position() = 1]')
		hasNodes:
			(XMLNodeList with: (document allElementsNamed: 'home-phone') second).