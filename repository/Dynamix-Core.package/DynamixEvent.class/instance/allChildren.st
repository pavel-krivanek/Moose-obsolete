accessing
allChildren
	<navigation: 'All children'>
	| stream |
	stream := OrderedCollection new writeStream.
	self allChildrenDo: [ :each | stream nextPut: each ].
	^stream contents