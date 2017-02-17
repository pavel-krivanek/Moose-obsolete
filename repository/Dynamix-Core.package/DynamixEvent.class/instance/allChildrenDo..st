enumerating
allChildrenDo: aBlock

	self childrenDo: [ :each |
		aBlock value: each.
		each allChildrenDo: aBlock ]