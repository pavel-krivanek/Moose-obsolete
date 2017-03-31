tests
testReverseForwardAxisCombination
	| nodes |

	nodes := self newNodeSet.
	(document allElementsNamed: 'person') allButLast do: [:person |
		person descendantNodesDo: [:each |
			nodes addLast: each]].
	self
		assertNodeSet:
			(XPath for: '*/person[last()]/preceding::node()/node()' in: document)
		hasNodes: nodes.

	nodes := (document allElementsNamed: 'person') allButLast.
	self
		assertNodeSet:
			(XPath
				for: '*/person[last()]/preceding-sibling::node()/self::*[1][position()>0]'
				in: document)
		hasNodes: nodes.
	self
		assert:
			(XPath
				for: '*/person[last()]/preceding-sibling::node()/self::*[1][2]'
				in: document) isEmpty.