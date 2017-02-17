test
testSize
	self assert: dendrogram size equals: 7.
	self assert: dendrogram left size equals: 4.
	self assert: dendrogram right size equals: 3.
	self assert: dendrogram left left size equals: 2.
	self assert: dendrogram left right size equals: 2.
	self assert: dendrogram right left size equals: 2.
	self assert: dendrogram right right size equals: 1