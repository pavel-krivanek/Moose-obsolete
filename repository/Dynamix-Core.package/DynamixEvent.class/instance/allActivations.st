accessing
allActivations

	| stream |
	stream := OrderedCollection new writeStream.
	self allChildrenDo: [ :each | (each isActivation and: [each method notNil] ) ifTrue: [ stream nextPut: each ]].
	^stream contents