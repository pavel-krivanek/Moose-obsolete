tests
testNodesForEntities
	| hg |
	hg := self setupSimpleNumbersHiGraph.
	self assert: (hg nodesFor: Set new) isEmpty.
	self assert: (hg nodesFor: (Set with: 1)) size equals: 1.
	self assert: (hg nodesFor: (Set with: 1)) anyOne model equals: 1.
	self
		assert:
			(hg
				nodesFor:
					(Set new
						add: 1;
						add: 2;
						yourself)) size
		equals: 2.
	self
		assert:
			(hg
				nodesFor:
					(Set new
						add: 1;
						add: 2;
						add: 999;
						yourself)) size
		equals: 2.
	self
		assert:
			(hg
				nodesFor:
					(Set new
						add: 1;
						add: 2;
						add: 34;
						yourself)) size
		equals: 3.
	self
		assert:
			(hg
				nodesFor:
					(Set new
						add: 1;
						add: 12;
						add: 34;
						add: 19;
						yourself)) size
		equals: 4