testing - class history
testVersionsThatChanged
	self
		assert:
			((testData simpleHistory allClassHistories entityNamed: #aNamespace::ClassA)
				select: [ :each | each changedFromPrevious: #numberOfMethods ]) size
		equals: 1.
	self
		assert:
			((testData simpleHistory allClassHistories entityNamed: #aNamespace::ClassC)
				select: [ :each | each changedFromPrevious: #numberOfMethods ]) size
		equals: 2.
	self
		assert:
			((testData simpleHistory allClassHistories entityNamed: #aNamespace::ClassA)
				versionsThatChangedPropertyNamed: #numberOfMethods) size
		equals: 1.
	self
		assert:
			((testData simpleHistory allClassHistories entityNamed: #aNamespace::ClassC)
				versionsThatChangedPropertyNamed: #numberOfMethods) size
		equals: 2.
	self
		assert:
			((testData simpleHistory allClassHistories entityNamed: #aNamespace::ClassA)
				referenceVersionsInWhichChangeOccured: #numberOfMethods) size
		equals: 1.
	self
		assert:
			((testData simpleHistory allClassHistories entityNamed: #aNamespace::ClassC)
				referenceVersionsInWhichChangeOccured: #numberOfMethods) size
		equals: 2