test
testAllLeaves
	self assert: dendrogram elements size equals: 7.
	self assert: (dendrogram elements equalsTo: #(#a #b #c #d #e #f #g))