tests
testSorting
	| allNodes |

	allNodes := document allNodes.
	(Array
		with: (self nodeSetClass newFrom: allNodes)
		with: (self nodeSetClass newFrom: allNodes reversed))
		do: [:nodeSet |
			self
				assert: nodeSet sorted = allNodes;
				assert: nodeSet sorted reversed sorted = allNodes].