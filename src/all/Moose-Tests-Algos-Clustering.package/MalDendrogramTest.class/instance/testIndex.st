test
testIndex
	self assert: dendrogram index equals: 1.
	self assert: dendrogram left index equals: 1.
	self assert: dendrogram right index equals: 5.
	self assert: dendrogram left left index equals: 1.
	self assert: dendrogram left right index equals: 3.
	self assert: dendrogram right left index equals: 5.
	self assert: dendrogram right right index equals: 7